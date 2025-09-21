.class public abstract Lc7/c0;
.super Ln6/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Ln6/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc7/c0$a;
    }
.end annotation


# static fields
.field public static final Key:Lc7/c0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc7/c0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc7/c0$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lc7/c0;->Key:Lc7/c0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Ln6/e;->j:Ln6/e$b;

    invoke-direct {p0, v0}, Ln6/a;-><init>(Ln6/g$c;)V

    return-void
.end method


# virtual methods
.method public abstract dispatch(Ln6/g;Ljava/lang/Runnable;)V
.end method

.method public dispatchYield(Ln6/g;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lc7/c0;->dispatch(Ln6/g;Ljava/lang/Runnable;)V

    return-void
.end method

.method public get(Ln6/g$c;)Ln6/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ln6/g$b;",
            ">(",
            "Ln6/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ln6/e$a;->a(Ln6/e;Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    return-object p0
.end method

.method public final interceptContinuation(Ln6/d;)Ln6/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln6/d<",
            "-TT;>;)",
            "Ln6/d<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/internal/f;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/f;-><init>(Lc7/c0;Ln6/d;)V

    return-object v0
.end method

.method public isDispatchNeeded(Ln6/g;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public limitedParallelism(I)Lc7/c0;
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlinx/coroutines/internal/l;->a(I)V

    .line 2
    new-instance v0, Lkotlinx/coroutines/internal/k;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/k;-><init>(Lc7/c0;I)V

    return-object v0
.end method

.method public minusKey(Ln6/g$c;)Ln6/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$c<",
            "*>;)",
            "Ln6/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Ln6/e$a;->b(Ln6/e;Ln6/g$c;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public final plus(Lc7/c0;)Lc7/c0;
    .locals 0

    return-object p1
.end method

.method public final releaseInterceptedContinuation(Ln6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    check-cast p1, Lkotlinx/coroutines/internal/f;

    .line 2
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/f;->o()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lc7/k0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc7/k0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
