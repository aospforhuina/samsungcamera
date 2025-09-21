.class final Lq2/b$a;
.super Ln2/w;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ln2/w<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ln2/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln2/w<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lp2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln2/e;Ljava/lang/reflect/Type;Ln2/w;Lp2/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/e;",
            "Ljava/lang/reflect/Type;",
            "Ln2/w<",
            "TE;>;",
            "Lp2/i<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ln2/w;-><init>()V

    .line 2
    new-instance v0, Lq2/m;

    invoke-direct {v0, p1, p3, p2}, Lq2/m;-><init>(Ln2/e;Ln2/w;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lq2/b$a;->a:Ln2/w;

    .line 3
    iput-object p4, p0, Lq2/b$a;->b:Lp2/i;

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq2/b$a;->e(Lu2/a;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lq2/b$a;->f(Lu2/c;Ljava/util/Collection;)V

    return-void
.end method

.method public e(Lu2/a;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/a;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object v0

    sget-object v1, Lu2/b;->m:Lu2/b;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lu2/a;->H()V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lq2/b$a;->b:Lp2/i;

    invoke-interface {v0}, Lp2/i;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4
    invoke-virtual {p1}, Lu2/a;->a()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lu2/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lq2/b$a;->a:Ln2/w;

    invoke-virtual {v1, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lu2/a;->k()V

    return-object v0
.end method

.method public f(Lu2/c;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu2/c;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lu2/c;->d()Lu2/c;

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lq2/b$a;->a:Ln2/w;

    invoke-virtual {v1, p1, v0}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lu2/c;->k()Lu2/c;

    return-void
.end method
