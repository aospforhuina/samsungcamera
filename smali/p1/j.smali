.class final Lp1/j;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lp1/e;

.field final synthetic b:Lp1/k;


# direct methods
.method constructor <init>(Lp1/k;Lp1/e;)V
    .locals 0

    iput-object p1, p0, Lp1/j;->b:Lp1/k;

    iput-object p2, p0, Lp1/j;->a:Lp1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp1/j;->b:Lp1/k;

    invoke-static {v0}, Lp1/k;->c(Lp1/k;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp1/j;->b:Lp1/k;

    invoke-static {v1}, Lp1/k;->b(Lp1/k;)Lp1/c;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lp1/k;->b(Lp1/k;)Lp1/c;

    move-result-object v1

    iget-object p0, p0, Lp1/j;->a:Lp1/e;

    invoke-virtual {p0}, Lp1/e;->d()Ljava/lang/Exception;

    move-result-object p0

    invoke-static {p0}, Lb1/p;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    invoke-interface {v1, p0}, Lp1/c;->onFailure(Ljava/lang/Exception;)V

    .line 2
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
