.class public final Ln6/c;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ln6/g;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ln6/g;

.field private final b:Ln6/g$b;


# direct methods
.method public constructor <init>(Ln6/g;Ln6/g$b;)V
    .locals 1

    const-string v0, "left"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln6/c;->a:Ln6/g;

    .line 3
    iput-object p2, p0, Ln6/c;->b:Ln6/g$b;

    return-void
.end method

.method private final c(Ln6/g$b;)Z
    .locals 1

    invoke-interface {p1}, Ln6/g$b;->getKey()Ln6/g$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln6/c;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final e(Ln6/c;)Z
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p1, Ln6/c;->b:Ln6/g$b;

    invoke-direct {p0, v0}, Ln6/c;->c(Ln6/g$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p1, p1, Ln6/c;->a:Ln6/g;

    .line 3
    instance-of v0, p1, Ln6/c;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ln6/c;

    goto :goto_0

    :cond_1
    const-string v0, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element"

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ln6/g$b;

    invoke-direct {p0, p1}, Ln6/c;->c(Ln6/g$b;)Z

    move-result p0

    return p0
.end method

.method private final g()I
    .locals 2

    const/4 v0, 0x2

    :goto_0
    iget-object p0, p0, Ln6/c;->a:Ln6/g;

    instance-of v1, p0, Ln6/c;

    if-eqz v1, :cond_0

    check-cast p0, Ln6/c;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ln6/c;

    if-eqz v0, :cond_0

    check-cast p1, Ln6/c;

    invoke-direct {p1}, Ln6/c;->g()I

    move-result v0

    invoke-direct {p0}, Ln6/c;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p1, p0}, Ln6/c;->e(Ln6/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lu6/p<",
            "-TR;-",
            "Ln6/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln6/c;->a:Ln6/g;

    invoke-interface {v0, p1, p2}, Ln6/g;->fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Ln6/c;->b:Ln6/g$b;

    invoke-interface {p2, p1, p0}, Lu6/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ln6/g$c;)Ln6/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ln6/g$b;",
            ">(",
            "Ln6/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :goto_0
    iget-object v0, p0, Ln6/c;->b:Ln6/g$b;

    invoke-interface {v0, p1}, Ln6/g$b;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p0, p0, Ln6/c;->a:Ln6/g;

    .line 3
    instance-of v0, p0, Ln6/c;

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ln6/c;

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p0, p1}, Ln6/g;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ln6/c;->a:Ln6/g;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Ln6/c;->b:Ln6/g$b;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public minusKey(Ln6/g$c;)Ln6/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$c<",
            "*>;)",
            "Ln6/g;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ln6/c;->b:Ln6/g$b;

    invoke-interface {v0, p1}, Ln6/g$b;->get(Ln6/g$c;)Ln6/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Ln6/c;->a:Ln6/g;

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Ln6/c;->a:Ln6/g;

    invoke-interface {v0, p1}, Ln6/g;->minusKey(Ln6/g$c;)Ln6/g;

    move-result-object p1

    .line 3
    iget-object v0, p0, Ln6/c;->a:Ln6/g;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Ln6/h;->a:Ln6/h;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, Ln6/c;->b:Ln6/g$b;

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Ln6/c;

    iget-object p0, p0, Ln6/c;->b:Ln6/g$b;

    invoke-direct {v0, p1, p0}, Ln6/c;-><init>(Ln6/g;Ln6/g$b;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public plus(Ln6/g;)Ln6/g;
    .locals 0

    invoke-static {p0, p1}, Ln6/g$a;->a(Ln6/g;Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Ln6/c$a;->a:Ln6/c$a;

    const-string v2, ""

    invoke-virtual {p0, v2, v1}, Ln6/c;->fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
