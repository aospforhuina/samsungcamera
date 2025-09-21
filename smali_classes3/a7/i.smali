.class La7/i;
.super Ljava/lang/Object;
.source "SequenceBuilder.kt"


# direct methods
.method public static final a(Lu6/p;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu6/p<",
            "-",
            "La7/g<",
            "-TT;>;-",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, La7/f;

    invoke-direct {v0}, La7/f;-><init>()V

    .line 2
    invoke-static {p0, v0, v0}, Lo6/b;->a(Lu6/p;Ljava/lang/Object;Ln6/d;)Ln6/d;

    move-result-object p0

    invoke-virtual {v0, p0}, La7/f;->h(Ln6/d;)V

    return-object v0
.end method

.method public static b(Lu6/p;)La7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu6/p<",
            "-",
            "La7/g<",
            "-TT;>;-",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "La7/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La7/i$a;

    invoke-direct {v0, p0}, La7/i$a;-><init>(Lu6/p;)V

    return-object v0
.end method
