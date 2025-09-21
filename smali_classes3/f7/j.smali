.class final synthetic Lf7/j;
.super Ljava/lang/Object;
.source "Emitters.kt"


# direct methods
.method public static final a(Lf7/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf7/e<",
            "*>;)V"
        }
    .end annotation

    instance-of v0, p0, Lf7/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p0, Lf7/k;

    iget-object p0, p0, Lf7/k;->a:Ljava/lang/Throwable;

    throw p0
.end method
