.class Lk6/g;
.super Ljava/lang/Object;
.source "LazyJVM.kt"


# direct methods
.method public static a(Lu6/a;)Lk6/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu6/a<",
            "+TT;>;)",
            "Lk6/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lk6/m;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2, v1}, Lk6/m;-><init>(Lu6/a;Ljava/lang/Object;ILkotlin/jvm/internal/g;)V

    return-object v0
.end method
