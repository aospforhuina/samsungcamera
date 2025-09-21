.class final Lp1/k;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Lp1/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp1/l<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/lang/Object;

.field private c:Lp1/c;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lp1/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lp1/k;->b:Ljava/lang/Object;

    iput-object p1, p0, Lp1/k;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lp1/k;->c:Lp1/c;

    return-void
.end method

.method static bridge synthetic b(Lp1/k;)Lp1/c;
    .locals 0

    iget-object p0, p0, Lp1/k;->c:Lp1/c;

    return-object p0
.end method

.method static bridge synthetic c(Lp1/k;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lp1/k;->b:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final a(Lp1/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp1/e<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lp1/e;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lp1/e;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lp1/k;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp1/k;->c:Lp1/c;

    if-nez v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lp1/k;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lp1/j;

    invoke-direct {v1, p0, p1}, Lp1/j;-><init>(Lp1/k;Lp1/e;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lp1/k;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lp1/k;->c:Lp1/c;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
