.class public final Ln6/f;
.super Ljava/lang/Object;
.source "Continuation.kt"


# direct methods
.method public static final a(Lu6/p;Ljava/lang/Object;Ln6/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu6/p<",
            "-TR;-",
            "Ln6/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;TR;",
            "Ln6/d<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lo6/b;->a(Lu6/p;Ljava/lang/Object;Ln6/d;)Ln6/d;

    move-result-object p0

    invoke-static {p0}, Lo6/b;->b(Ln6/d;)Ln6/d;

    move-result-object p0

    sget-object p1, Lk6/k;->a:Lk6/k$a;

    sget-object p1, Lk6/q;->a:Lk6/q;

    invoke-static {p1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ln6/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
