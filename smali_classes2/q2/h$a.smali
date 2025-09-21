.class final Lq2/h$a;
.super Ln2/w;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ln2/w<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ln2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/w<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Ln2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/w<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Lp2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lq2/h;


# direct methods
.method public constructor <init>(Lq2/h;Ln2/e;Ljava/lang/reflect/Type;Ln2/w;Ljava/lang/reflect/Type;Ln2/w;Lp2/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e;",
            "Ljava/lang/reflect/Type;",
            "Ln2/w<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Ln2/w<",
            "TV;>;",
            "Lp2/i<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq2/h$a;->d:Lq2/h;

    invoke-direct {p0}, Ln2/w;-><init>()V

    .line 2
    new-instance p1, Lq2/m;

    invoke-direct {p1, p2, p4, p3}, Lq2/m;-><init>(Ln2/e;Ln2/w;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lq2/h$a;->a:Ln2/w;

    .line 3
    new-instance p1, Lq2/m;

    invoke-direct {p1, p2, p6, p5}, Lq2/m;-><init>(Ln2/e;Ln2/w;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lq2/h$a;->b:Ln2/w;

    .line 4
    iput-object p7, p0, Lq2/h$a;->c:Lp2/i;

    return-void
.end method

.method private e(Ln2/k;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ln2/k;->h()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 2
    invoke-virtual {p1}, Ln2/k;->d()Ln2/p;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ln2/p;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Ln2/p;->l()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ln2/p;->n()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Ln2/p;->i()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ln2/p;->q()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Ln2/p;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 10
    :cond_3
    invoke-virtual {p1}, Ln2/k;->f()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "null"

    return-object p0

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq2/h$a;->f(Lu2/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lq2/h$a;->g(Lu2/c;Ljava/util/Map;)V

    return-void
.end method

.method public f(Lu2/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lu2/b;->m:Lu2/b;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lu2/a;->H()V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    iget-object v1, p0, Lq2/h$a;->c:Lp2/i;

    invoke-interface {v1}, Lp2/i;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    sget-object v2, Lu2/b;->a:Lu2/b;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 6
    invoke-virtual {p1}, Lu2/a;->a()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lu2/a;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lu2/a;->a()V

    .line 9
    iget-object v0, p0, Lq2/h$a;->a:Ln2/w;

    invoke-virtual {v0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    iget-object v2, p0, Lq2/h$a;->b:Ln2/w;

    invoke-virtual {v2, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 12
    invoke-virtual {p1}, Lu2/a;->k()V

    goto :goto_0

    .line 13
    :cond_1
    new-instance p0, Ln2/s;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ln2/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    invoke-virtual {p1}, Lu2/a;->k()V

    goto :goto_2

    .line 15
    :cond_3
    invoke-virtual {p1}, Lu2/a;->b()V

    .line 16
    :goto_1
    invoke-virtual {p1}, Lu2/a;->u()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    sget-object v0, Lp2/f;->a:Lp2/f;

    invoke-virtual {v0, p1}, Lp2/f;->a(Lu2/a;)V

    .line 18
    iget-object v0, p0, Lq2/h$a;->a:Ln2/w;

    invoke-virtual {v0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object v0

    .line 19
    iget-object v2, p0, Lq2/h$a;->b:Ln2/w;

    invoke-virtual {v2, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object v2

    .line 20
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    new-instance p0, Ln2/s;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ln2/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_5
    invoke-virtual {p1}, Lu2/a;->o()V

    :goto_2
    return-object v1
.end method

.method public g(Lu2/c;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/c;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lq2/h$a;->d:Lq2/h;

    iget-boolean v0, v0, Lq2/h;->b:Z

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Lu2/c;->f()Lu2/c;

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    .line 6
    iget-object v1, p0, Lq2/h$a;->b:Ln2/w;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lu2/c;->o()Lu2/c;

    return-void

    .line 8
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 11
    iget-object v5, p0, Lq2/h$a;->a:Ln2/w;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln2/w;->c(Ljava/lang/Object;)Ln2/k;

    move-result-object v5

    .line 12
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v5}, Ln2/k;->e()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Ln2/k;->g()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 15
    invoke-virtual {p1}, Lu2/c;->d()Lu2/c;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    .line 17
    invoke-virtual {p1}, Lu2/c;->d()Lu2/c;

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln2/k;

    invoke-static {v3, p1}, Lp2/l;->b(Ln2/k;Lu2/c;)V

    .line 19
    iget-object v3, p0, Lq2/h$a;->b:Ln2/w;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p1}, Lu2/c;->k()Lu2/c;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 21
    :cond_6
    invoke-virtual {p1}, Lu2/c;->k()Lu2/c;

    goto :goto_6

    .line 22
    :cond_7
    invoke-virtual {p1}, Lu2/c;->f()Lu2/c;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    .line 24
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln2/k;

    .line 25
    invoke-direct {p0, v3}, Lq2/h$a;->e(Ln2/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    .line 26
    iget-object v3, p0, Lq2/h$a;->b:Ln2/w;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 27
    :cond_8
    invoke-virtual {p1}, Lu2/c;->o()Lu2/c;

    :goto_6
    return-void
.end method
