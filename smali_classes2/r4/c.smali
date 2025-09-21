.class final Lr4/c;
.super Ljava/lang/Object;
.source "CompleteListenerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lr4/b;

.field private b:Lr4/e;


# direct methods
.method constructor <init>(Lr4/b;Lr4/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr4/c;->a:Lr4/b;

    .line 3
    iput-object p2, p0, Lr4/c;->b:Lr4/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lr4/c;->a:Lr4/b;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr4/c;->a:Lr4/b;

    invoke-virtual {v1}, Lr4/b;->b()Lr4/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lr4/c;->a:Lr4/b;

    invoke-virtual {v1}, Lr4/b;->b()Lr4/d;

    move-result-object v1

    iget-object p0, p0, Lr4/c;->b:Lr4/e;

    invoke-interface {v1, p0}, Lr4/d;->a(Lr4/e;)V

    .line 4
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
