.class public Lkotlinx/coroutines/internal/z;
.super Lc7/a;
.source "Scopes.kt"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc7/a<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/d;"
    }
.end annotation


# instance fields
.field public final c:Ln6/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln6/d<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/g;Ln6/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g;",
            "Ln6/d<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lc7/a;-><init>(Ln6/g;ZZ)V

    .line 2
    iput-object p2, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    return-void
.end method


# virtual methods
.method protected final Y()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/d;
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    instance-of v0, p0, Lkotlin/coroutines/jvm/internal/d;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/coroutines/jvm/internal/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected x0(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    invoke-static {p1, p0}, Lc7/z;->a(Ljava/lang/Object;Ln6/d;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ln6/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method protected y(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    invoke-static {v0}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/internal/z;->c:Ln6/d;

    invoke-static {p1, p0}, Lc7/z;->a(Ljava/lang/Object;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {v0, p0, p1, v1, p1}, Lkotlinx/coroutines/internal/g;->c(Ln6/d;Ljava/lang/Object;Lu6/l;ILjava/lang/Object;)V

    return-void
.end method
