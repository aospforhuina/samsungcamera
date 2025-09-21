.class public abstract Lc7/y0;
.super Lc7/w0;
.source "EventLoop.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc7/w0;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract H()Ljava/lang/Thread;
.end method

.method protected I(JLc7/x0$a;)V
    .locals 0

    sget-object p0, Lc7/l0;->g:Lc7/l0;

    invoke-virtual {p0, p1, p2, p3}, Lc7/x0;->U(JLc7/x0$a;)V

    return-void
.end method

.method protected final J()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc7/y0;->H()Ljava/lang/Thread;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 3
    invoke-static {}, Lc7/c;->a()Lc7/b;

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method
