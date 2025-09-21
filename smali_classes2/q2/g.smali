.class public final Lq2/g;
.super Lu2/c;
.source "JsonTreeWriter.java"


# static fields
.field private static final t:Ljava/io/Writer;

.field private static final u:Ln2/p;


# instance fields
.field private final q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln2/k;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Ln2/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq2/g$a;

    invoke-direct {v0}, Lq2/g$a;-><init>()V

    sput-object v0, Lq2/g;->t:Ljava/io/Writer;

    .line 2
    new-instance v0, Ln2/p;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ln2/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq2/g;->u:Ln2/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lq2/g;->t:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lu2/c;-><init>(Ljava/io/Writer;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq2/g;->q:Ljava/util/List;

    .line 3
    sget-object v0, Ln2/m;->a:Ln2/m;

    iput-object v0, p0, Lq2/g;->s:Ln2/k;

    return-void
.end method

.method private R()Ln2/k;
    .locals 1

    iget-object p0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln2/k;

    return-object p0
.end method

.method private S(Ln2/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/g;->r:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ln2/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu2/c;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lq2/g;->R()Ln2/k;

    move-result-object v0

    check-cast v0, Ln2/n;

    .line 4
    iget-object v1, p0, Lq2/g;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ln2/n;->i(Ljava/lang/String;Ln2/k;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lq2/g;->r:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-object p1, p0, Lq2/g;->s:Ln2/k;

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lq2/g;->R()Ln2/k;

    move-result-object p0

    .line 9
    instance-of v0, p0, Ln2/h;

    if-eqz v0, :cond_4

    .line 10
    check-cast p0, Ln2/h;

    invoke-virtual {p0, p1}, Ln2/h;->i(Ln2/k;)V

    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public A()Lu2/c;
    .locals 1

    sget-object v0, Ln2/m;->a:Ln2/m;

    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    return-object p0
.end method

.method public K(J)Lu2/c;
    .locals 1

    new-instance v0, Ln2/p;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Ln2/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    return-object p0
.end method

.method public L(Ljava/lang/Boolean;)Lu2/c;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lq2/g;->A()Lu2/c;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ln2/p;

    invoke-direct {v0, p1}, Ln2/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    return-object p0
.end method

.method public M(Ljava/lang/Number;)Lu2/c;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lq2/g;->A()Lu2/c;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lu2/c;->t()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSON forbids NaN and infinities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    :goto_0
    new-instance v0, Ln2/p;

    invoke-direct {v0, p1}, Ln2/p;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    return-object p0
.end method

.method public N(Ljava/lang/String;)Lu2/c;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lq2/g;->A()Lu2/c;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ln2/p;

    invoke-direct {v0, p1}, Ln2/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    return-object p0
.end method

.method public O(Z)Lu2/c;
    .locals 1

    new-instance v0, Ln2/p;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Ln2/p;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    return-object p0
.end method

.method public Q()Ln2/k;
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lq2/g;->s:Ln2/k;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lq2/g;->q:Ljava/util/List;

    sget-object v0, Lq2/g;->u:Ln2/p;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Incomplete document"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()Lu2/c;
    .locals 2

    .line 1
    new-instance v0, Ln2/h;

    invoke-direct {v0}, Ln2/h;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    .line 3
    iget-object v1, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f()Lu2/c;
    .locals 2

    .line 1
    new-instance v0, Ln2/n;

    invoke-direct {v0}, Ln2/n;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lq2/g;->S(Ln2/k;)V

    .line 3
    iget-object v1, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public k()Lu2/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq2/g;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lq2/g;->R()Ln2/k;

    move-result-object v0

    .line 3
    instance-of v0, v0, Ln2/h;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public o()Lu2/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq2/g;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lq2/g;->R()Ln2/k;

    move-result-object v0

    .line 3
    instance-of v0, v0, Ln2/n;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public y(Ljava/lang/String;)Lu2/c;
    .locals 1

    const-string v0, "name == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lq2/g;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lq2/g;->r:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lq2/g;->R()Ln2/k;

    move-result-object v0

    .line 4
    instance-of v0, v0, Ln2/n;

    if-eqz v0, :cond_0

    .line 5
    iput-object p1, p0, Lq2/g;->r:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
