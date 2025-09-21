.class public final Lc7/p0;
.super Lkotlinx/coroutines/internal/z;
.source "Builders.common.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/z<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final synthetic d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _decision:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lc7/p0;

    const-string v1, "_decision"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lc7/p0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ln6/g;Ln6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g;",
            "Ln6/d<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/z;-><init>(Ln6/g;Ln6/d;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lc7/p0;->_decision:I

    return-void
.end method

.method private final C0()Z
    .locals 4

    .line 1
    :cond_0
    iget v0, p0, Lc7/p0;->_decision:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    sget-object v0, Lc7/p0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v3, 0x2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final D0()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lc7/p0;->_decision:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    if-ne v0, p0, :cond_1

    return v1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    sget-object v0, Lc7/p0;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method


# virtual methods
.method public final B0()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-direct {p0}, Lc7/p0;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc7/s1;->R()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc7/t1;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lc7/v;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    check-cast p0, Lc7/v;

    iget-object p0, p0, Lc7/v;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc7/p0;->C0()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    invoke-static {v0}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    invoke-static {p1, p0}, Lc7/z;->a(Ljava/lang/Object;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, v1}, Lkotlinx/coroutines/internal/g;->c(Ln6/d;Ljava/lang/Object;Lu6/l;ILjava/lang/Object;)V

    return-void
.end method

.method protected y(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lc7/p0;->x0(Ljava/lang/Object;)V

    return-void
.end method
