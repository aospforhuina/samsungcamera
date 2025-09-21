.class public final Ln6/e$a;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Ln6/e;Ln6/g$c;)Ln6/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ln6/g$b;",
            ">(",
            "Ln6/e;",
            "Ln6/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ln6/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ln6/b;

    invoke-interface {p0}, Ln6/g$b;->getKey()Ln6/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln6/b;->a(Ln6/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ln6/b;->b(Ln6/g$b;)Ln6/g$b;

    move-result-object p0

    instance-of p1, p0, Ln6/g$b;

    if-eqz p1, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1

    .line 3
    :cond_1
    sget-object v0, Ln6/e;->j:Ln6/e$b;

    if-ne v0, p1, :cond_2

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method public static b(Ln6/e;Ln6/g$c;)Ln6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/e;",
            "Ln6/g$c<",
            "*>;)",
            "Ln6/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Ln6/b;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Ln6/b;

    invoke-interface {p0}, Ln6/g$b;->getKey()Ln6/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln6/b;->a(Ln6/g$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ln6/b;->b(Ln6/g$b;)Ln6/g$b;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p0, Ln6/h;->a:Ln6/h;

    :cond_0
    return-object p0

    .line 3
    :cond_1
    sget-object v0, Ln6/e;->j:Ln6/e$b;

    if-ne v0, p1, :cond_2

    sget-object p0, Ln6/h;->a:Ln6/h;

    :cond_2
    return-object p0
.end method
