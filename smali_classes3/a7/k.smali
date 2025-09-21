.class La7/k;
.super La7/j;
.source "Sequences.kt"


# direct methods
.method public static c(Ljava/util/Iterator;)La7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "La7/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, La7/k$a;

    invoke-direct {v0, p0}, La7/k$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, La7/k;->d(La7/e;)La7/e;

    move-result-object p0

    return-object p0
.end method

.method public static final d(La7/e;)La7/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "La7/e<",
            "+TT;>;)",
            "La7/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, La7/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, La7/a;

    invoke-direct {v0, p0}, La7/a;-><init>(La7/e;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static e(Ljava/lang/Object;Lu6/l;)La7/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lu6/l<",
            "-TT;+TT;>;)",
            "La7/e<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "nextFunction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 1
    sget-object p0, La7/b;->a:La7/b;

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, La7/d;

    new-instance v1, La7/k$b;

    invoke-direct {v1, p0}, La7/k$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p1}, La7/d;-><init>(Lu6/a;Lu6/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
