.class public Le7/p;
.super Le7/a;
.source "LinkedListChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Le7/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lu6/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/l<",
            "-TE;",
            "Lk6/q;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Le7/a;-><init>(Lu6/l;)V

    return-void
.end method


# virtual methods
.method protected final A()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected D(Ljava/lang/Object;Le7/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le7/l<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1
    instance-of v1, p1, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    check-cast p1, Le7/x;

    .line 2
    instance-of v1, p1, Le7/c$a;

    if-eqz v1, :cond_0

    .line 3
    iget-object p0, p0, Le7/c;->a:Lu6/l;

    if-eqz p0, :cond_5

    check-cast p1, Le7/c$a;

    iget-object p1, p1, Le7/c$a;->d:Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/internal/v;->c(Lu6/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/i0;)Lkotlinx/coroutines/internal/i0;

    move-result-object p0

    move-object v0, p0

    goto :goto_2

    .line 4
    :cond_0
    invoke-virtual {p1, p2}, Le7/x;->x(Le7/l;)V

    goto :goto_2

    .line 5
    :cond_1
    check-cast p1, Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_4

    .line 7
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le7/x;

    .line 8
    instance-of v4, v3, Le7/c$a;

    if-eqz v4, :cond_3

    .line 9
    iget-object v4, p0, Le7/c;->a:Lu6/l;

    if-eqz v4, :cond_2

    check-cast v3, Le7/c$a;

    iget-object v3, v3, Le7/c$a;->d:Ljava/lang/Object;

    invoke-static {v4, v3, v2}, Lkotlinx/coroutines/internal/v;->c(Lu6/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/i0;)Lkotlinx/coroutines/internal/i0;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v0

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {v3, p2}, Le7/x;->x(Le7/l;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    move-object v0, v2

    :cond_5
    :goto_2
    if-nez v0, :cond_6

    return-void

    .line 11
    :cond_6
    throw v0
.end method

.method protected p(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-super {p0, p1}, Le7/c;->p(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Le7/b;->b:Lkotlinx/coroutines/internal/a0;

    if-ne v0, v1, :cond_1

    return-object v1

    .line 3
    :cond_1
    sget-object v2, Le7/b;->c:Lkotlinx/coroutines/internal/a0;

    if-ne v0, v2, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Le7/c;->r(Ljava/lang/Object;)Le7/v;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 5
    :cond_2
    instance-of v1, v0, Le7/l;

    if-eqz v1, :cond_0

    return-object v0

    .line 6
    :cond_3
    instance-of p0, v0, Le7/l;

    if-eqz p0, :cond_4

    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid offerInternal result "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final z()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
