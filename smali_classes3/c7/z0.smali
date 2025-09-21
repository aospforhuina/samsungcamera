.class public final Lc7/z0;
.super Ljava/lang/Object;
.source "EventLoop.kt"


# direct methods
.method public static final a()Lc7/w0;
    .locals 2

    new-instance v0, Lc7/f;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Lc7/f;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method
