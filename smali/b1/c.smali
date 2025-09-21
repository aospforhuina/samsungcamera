.class public abstract Lb1/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb1/c$d;,
        Lb1/c$e;,
        Lb1/c$c;,
        Lb1/c$b;,
        Lb1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final D:[Ljava/lang/String;

.field private static final E:[Ly0/c;


# instance fields
.field private A:Z

.field private volatile B:Lb1/z0;

.field protected C:Ljava/util/concurrent/atomic/AtomicInteger;

.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:J

.field private volatile f:Ljava/lang/String;

.field g:Lb1/k1;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/Looper;

.field private final j:Lb1/i;

.field private final k:Ly0/e;

.field final l:Landroid/os/Handler;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;

.field private o:Lb1/m;

.field protected p:Lb1/c$c;

.field private q:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb1/u0<",
            "*>;>;"
        }
    .end annotation
.end field

.field private s:Lb1/w0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb1/w0;"
        }
    .end annotation
.end field

.field private t:I

.field private final u:Lb1/c$a;

.field private final v:Lb1/c$b;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private volatile y:Ljava/lang/String;

.field private z:Ly0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ly0/c;

    sput-object v0, Lb1/c;->E:[Ly0/c;

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb1/c;->D:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lb1/i;Ly0/e;ILb1/c$a;Lb1/c$b;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb1/c;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb1/c;->m:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lb1/c;->n:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb1/c;->r:Ljava/util/ArrayList;

    const/4 v1, 0x1

    iput v1, p0, Lb1/c;->t:I

    iput-object v0, p0, Lb1/c;->z:Ly0/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb1/c;->A:Z

    iput-object v0, p0, Lb1/c;->B:Lb1/z0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    .line 3
    invoke-static {p1, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb1/c;->h:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    .line 4
    invoke-static {p2, p1}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lb1/c;->i:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    .line 5
    invoke-static {p3, p1}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lb1/c;->j:Lb1/i;

    const-string p1, "API availability must not be null"

    .line 6
    invoke-static {p4, p1}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lb1/c;->k:Ly0/e;

    new-instance p1, Lb1/t0;

    .line 7
    invoke-direct {p1, p0, p2}, Lb1/t0;-><init>(Lb1/c;Landroid/os/Looper;)V

    iput-object p1, p0, Lb1/c;->l:Landroid/os/Handler;

    iput p5, p0, Lb1/c;->w:I

    iput-object p6, p0, Lb1/c;->u:Lb1/c$a;

    iput-object p7, p0, Lb1/c;->v:Lb1/c$b;

    iput-object p8, p0, Lb1/c;->x:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic R(Lb1/c;)Ly0/a;
    .locals 0

    iget-object p0, p0, Lb1/c;->z:Ly0/a;

    return-object p0
.end method

.method static bridge synthetic S(Lb1/c;)Lb1/c$a;
    .locals 0

    iget-object p0, p0, Lb1/c;->u:Lb1/c$a;

    return-object p0
.end method

.method static bridge synthetic T(Lb1/c;)Lb1/c$b;
    .locals 0

    iget-object p0, p0, Lb1/c;->v:Lb1/c$b;

    return-object p0
.end method

.method static bridge synthetic U(Lb1/c;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb1/c;->n:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic W(Lb1/c;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lb1/c;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic X(Lb1/c;Ly0/a;)V
    .locals 0

    iput-object p1, p0, Lb1/c;->z:Ly0/a;

    return-void
.end method

.method static bridge synthetic Y(Lb1/c;Lb1/m;)V
    .locals 0

    iput-object p1, p0, Lb1/c;->o:Lb1/m;

    return-void
.end method

.method static bridge synthetic Z(Lb1/c;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lb1/c;->g0(ILandroid/os/IInterface;)V

    return-void
.end method

.method static bridge synthetic a0(Lb1/c;Lb1/z0;)V
    .locals 0

    iput-object p1, p0, Lb1/c;->B:Lb1/z0;

    invoke-virtual {p0}, Lb1/c;->Q()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1
    iget-object p0, p1, Lb1/z0;->d:Lb1/f;

    invoke-static {}, Lb1/q;->b()Lb1/q;

    move-result-object p1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lb1/f;->j()Lb1/r;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, Lb1/q;->c(Lb1/r;)V

    :cond_1
    return-void
.end method

.method static bridge synthetic b0(Lb1/c;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lb1/c;->m:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget v0, p0, Lb1/c;->t:I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb1/c;->A:Z

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lb1/c;->l:Landroid/os/Handler;

    iget-object p0, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, p0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static bridge synthetic d0(Lb1/c;)Z
    .locals 0

    iget-boolean p0, p0, Lb1/c;->A:Z

    return p0
.end method

.method static bridge synthetic e0(Lb1/c;IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lb1/c;->t:I

    if-eq v1, p1, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2, p3}, Lb1/c;->g0(ILandroid/os/IInterface;)V

    .line 3
    monitor-exit v0

    const/4 p0, 0x1

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static bridge synthetic f0(Lb1/c;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb1/c;->A:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lb1/c;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Lb1/c;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lb1/c;->D()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method

.method private final g0(ILandroid/os/IInterface;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-ne v3, v4, :cond_2

    move v1, v2

    .line 1
    :cond_2
    invoke-static {v1}, Lb1/p;->a(Z)V

    iget-object v1, p0, Lb1/c;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lb1/c;->t:I

    iput-object p2, p0, Lb1/c;->q:Landroid/os/IInterface;

    const/4 v3, 0x0

    if-eq p1, v2, :cond_9

    const/4 v2, 0x2

    const/4 v4, 0x3

    if-eq p1, v2, :cond_4

    if-eq p1, v4, :cond_4

    if-eq p1, v0, :cond_3

    goto/16 :goto_4

    .line 2
    :cond_3
    invoke-static {p2}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lb1/c;->J(Landroid/os/IInterface;)V

    goto/16 :goto_4

    .line 3
    :cond_4
    iget-object v9, p0, Lb1/c;->s:Lb1/w0;

    if-eqz v9, :cond_5

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    if-eqz p1, :cond_5

    const-string p2, "GmsClient"

    invoke-virtual {p1}, Lb1/k1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb1/k1;->b()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lb1/c;->j:Lb1/i;

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 6
    invoke-virtual {p1}, Lb1/k1;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 7
    invoke-virtual {p1}, Lb1/k1;->b()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 8
    invoke-virtual {p1}, Lb1/k1;->a()I

    move-result v8

    .line 9
    invoke-virtual {p0}, Lb1/c;->V()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 10
    invoke-virtual {p1}, Lb1/k1;->d()Z

    move-result v11

    .line 11
    invoke-virtual/range {v5 .. v11}, Lb1/i;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iget-object p1, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Lb1/w0;

    iget-object p2, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lb1/w0;-><init>(Lb1/c;I)V

    iput-object p1, p0, Lb1/c;->s:Lb1/w0;

    iget p2, p0, Lb1/c;->t:I

    if-ne p2, v4, :cond_6

    .line 14
    invoke-virtual {p0}, Lb1/c;->A()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance p2, Lb1/k1;

    invoke-virtual {p0}, Lb1/c;->x()Landroid/content/Context;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Lb1/c;->A()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {}, Lb1/i;->a()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lb1/k1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_2

    .line 17
    :cond_6
    new-instance p2, Lb1/k1;

    .line 18
    invoke-virtual {p0}, Lb1/c;->F()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {p0}, Lb1/c;->E()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lb1/i;->a()I

    move-result v8

    .line 20
    invoke-virtual {p0}, Lb1/c;->H()Z

    move-result v9

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lb1/k1;-><init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 21
    :goto_2
    iput-object p2, p0, Lb1/c;->g:Lb1/k1;

    .line 22
    invoke-virtual {p2}, Lb1/k1;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 23
    invoke-virtual {p0}, Lb1/c;->k()I

    move-result p2

    const v0, 0x1110e58

    if-ge p2, v0, :cond_8

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: "

    iget-object p0, p0, Lb1/c;->g:Lb1/k1;

    .line 24
    invoke-virtual {p0}, Lb1/k1;->c()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 25
    :cond_7
    new-instance p0, Ljava/lang/String;

    .line 26
    invoke-direct {p0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    iget-object p2, p0, Lb1/c;->j:Lb1/i;

    iget-object v0, p0, Lb1/c;->g:Lb1/k1;

    .line 27
    invoke-virtual {v0}, Lb1/k1;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lb1/c;->g:Lb1/k1;

    .line 28
    invoke-virtual {v2}, Lb1/k1;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lb1/c;->g:Lb1/k1;

    .line 29
    invoke-virtual {v4}, Lb1/k1;->a()I

    move-result v4

    .line 30
    invoke-virtual {p0}, Lb1/c;->V()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lb1/c;->g:Lb1/k1;

    .line 31
    invoke-virtual {v6}, Lb1/k1;->d()Z

    move-result v6

    .line 32
    invoke-virtual {p0}, Lb1/c;->v()Ljava/util/concurrent/Executor;

    move-result-object v7

    .line 33
    new-instance v8, Lb1/d1;

    invoke-direct {v8, v0, v2, v4, v6}, Lb1/d1;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 34
    invoke-virtual {p2, v8, p1, v5, v7}, Lb1/i;->f(Lb1/d1;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string p1, "GmsClient"

    iget-object p2, p0, Lb1/c;->g:Lb1/k1;

    .line 35
    invoke-virtual {p2}, Lb1/k1;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lb1/c;->g:Lb1/k1;

    .line 36
    invoke-virtual {v0}, Lb1/k1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 37
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    iget-object p2, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 39
    invoke-virtual {p0, p1, v3, p2}, Lb1/c;->c0(ILandroid/os/Bundle;I)V

    goto :goto_4

    .line 40
    :cond_9
    iget-object v8, p0, Lb1/c;->s:Lb1/w0;

    if-eqz v8, :cond_a

    iget-object v4, p0, Lb1/c;->j:Lb1/i;

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 41
    invoke-virtual {p1}, Lb1/k1;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 42
    invoke-virtual {p1}, Lb1/k1;->b()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 43
    invoke-virtual {p1}, Lb1/k1;->a()I

    move-result v7

    .line 44
    invoke-virtual {p0}, Lb1/c;->V()Ljava/lang/String;

    move-result-object v9

    iget-object p1, p0, Lb1/c;->g:Lb1/k1;

    .line 45
    invoke-virtual {p1}, Lb1/k1;->d()Z

    move-result v10

    .line 46
    invoke-virtual/range {v4 .. v10}, Lb1/i;->e(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;Z)V

    iput-object v3, p0, Lb1/c;->s:Lb1/w0;

    .line 47
    :cond_a
    :goto_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected A()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected B()Ljava/util/Set;
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

.method public final C()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb1/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lb1/c;->t:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lb1/c;->q()V

    iget-object p0, p0, Lb1/c;->q:Landroid/os/IInterface;

    const-string v1, "Client is connected but service is null"

    .line 3
    invoke-static {p0, v1}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract D()Ljava/lang/String;
.end method

.method protected abstract E()Ljava/lang/String;
.end method

.method protected F()Ljava/lang/String;
    .locals 0

    const-string p0, "com.google.android.gms"

    return-object p0
.end method

.method public G()Lb1/f;
    .locals 0

    iget-object p0, p0, Lb1/c;->B:Lb1/z0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lb1/z0;->d:Lb1/f;

    return-object p0
.end method

.method protected H()Z
    .locals 1

    invoke-virtual {p0}, Lb1/c;->k()I

    move-result p0

    const v0, 0xc9e4920

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public I()Z
    .locals 0

    iget-object p0, p0, Lb1/c;->B:Lb1/z0;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected J(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb1/c;->c:J

    return-void
.end method

.method protected K(Ly0/a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ly0/a;->d()I

    move-result p1

    iput p1, p0, Lb1/c;->d:I

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb1/c;->e:J

    return-void
.end method

.method protected L(I)V
    .locals 2

    iput p1, p0, Lb1/c;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lb1/c;->b:J

    return-void
.end method

.method protected M(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/c;->l:Landroid/os/Handler;

    new-instance v1, Lb1/x0;

    invoke-direct {v1, p0, p1, p2, p3}, Lb1/x0;-><init>(Lb1/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    const/4 p1, -0x1

    .line 2
    invoke-virtual {v0, p0, p4, p1, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public N()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public O(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb1/c;->y:Ljava/lang/String;

    return-void
.end method

.method public P(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/c;->l:Landroid/os/Handler;

    iget-object p0, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public Q()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final V()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb1/c;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object p0, p0, Lb1/c;->h:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public a(Lb1/c$e;)V
    .locals 0

    invoke-interface {p1}, Lb1/c$e;->a()V

    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lb1/c;->r:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lb1/c;->r:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lb1/c;->r:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb1/u0;

    invoke-virtual {v3}, Lb1/u0;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lb1/c;->r:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lb1/c;->n:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lb1/c;->o:Lb1/m;

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 7
    invoke-direct {p0, v1, v0}, Lb1/c;->g0(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception p0

    .line 8
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public c(Lb1/j;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb1/j;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb1/c;->z()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lb1/g;

    iget v2, p0, Lb1/c;->w:I

    iget-object v3, p0, Lb1/c;->y:Ljava/lang/String;

    .line 2
    invoke-direct {v1, v2, v3}, Lb1/g;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lb1/c;->h:Landroid/content/Context;

    .line 3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lb1/g;->d:Ljava/lang/String;

    iput-object v0, v1, Lb1/g;->k:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lb1/g;->g:[Lcom/google/android/gms/common/api/Scope;

    .line 5
    :cond_0
    invoke-virtual {p0}, Lb1/c;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p0}, Lb1/c;->t()Landroid/accounts/Account;

    move-result-object p2

    if-nez p2, :cond_1

    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    .line 7
    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iput-object p2, v1, Lb1/g;->l:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    .line 8
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lb1/g;->f:Landroid/os/IBinder;

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lb1/c;->N()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lb1/c;->t()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, v1, Lb1/g;->l:Landroid/accounts/Account;

    .line 11
    :cond_3
    :goto_0
    sget-object p1, Lb1/c;->E:[Ly0/c;

    iput-object p1, v1, Lb1/g;->m:[Ly0/c;

    .line 12
    invoke-virtual {p0}, Lb1/c;->u()[Ly0/c;

    move-result-object p1

    iput-object p1, v1, Lb1/g;->n:[Ly0/c;

    .line 13
    invoke-virtual {p0}, Lb1/c;->Q()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, v1, Lb1/g;->q:Z

    :cond_4
    :try_start_0
    iget-object p1, p0, Lb1/c;->n:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lb1/c;->o:Lb1/m;

    if-eqz p2, :cond_5

    new-instance v0, Lb1/v0;

    iget-object v2, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lb1/v0;-><init>(Lb1/c;I)V

    .line 15
    invoke-interface {p2, v0, v1}, Lb1/m;->M(Lb1/l;Lb1/g;)V

    goto :goto_1

    :cond_5
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    .line 16
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 18
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    iget-object p2, p0, Lb1/c;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0, v0, p2}, Lb1/c;->M(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_1
    move-exception p0

    .line 21
    throw p0

    :catch_2
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    .line 22
    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x3

    .line 23
    invoke-virtual {p0, p1}, Lb1/c;->P(I)V

    return-void
.end method

.method protected final c0(ILandroid/os/Bundle;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lb1/c;->l:Landroid/os/Handler;

    new-instance v0, Lb1/y0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lb1/y0;-><init>(Lb1/c;ILandroid/os/Bundle;)V

    const/4 p0, 0x7

    const/4 p1, -0x1

    .line 2
    invoke-virtual {p2, p0, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 3
    invoke-virtual {p2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb1/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lb1/c;->b()V

    return-void
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lb1/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lb1/c;->t:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
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

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb1/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lb1/c;->g:Lb1/k1;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb1/k1;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to connect when checking package"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb1/c;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lb1/c;->t:I

    const/4 v1, 0x4

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

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public k()I
    .locals 0

    sget p0, Ly0/e;->a:I

    return p0
.end method

.method public final l()[Ly0/c;
    .locals 0

    iget-object p0, p0, Lb1/c;->B:Lb1/z0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lb1/z0;->b:[Ly0/c;

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lb1/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method public n()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public o(Lb1/c$c;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    .line 1
    invoke-static {p1, v0}, Lb1/p;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb1/c;->p:Lb1/c$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lb1/c;->g0(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected final q()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb1/c;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected. Call connect() and wait for onConnected() to be called."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract r(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected s()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public t()Landroid/accounts/Account;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public u()[Ly0/c;
    .locals 0

    sget-object p0, Lb1/c;->E:[Ly0/c;

    return-object p0
.end method

.method protected v()Ljava/util/concurrent/Executor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public w()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final x()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lb1/c;->h:Landroid/content/Context;

    return-object p0
.end method

.method public y()I
    .locals 0

    iget p0, p0, Lb1/c;->w:I

    return p0
.end method

.method protected z()Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method
