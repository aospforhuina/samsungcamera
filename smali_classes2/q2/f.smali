.class public final Lq2/f;
.super Lu2/a;
.source "JsonTreeReader.java"


# static fields
.field private static final x:Ljava/io/Reader;

.field private static final y:Ljava/lang/Object;


# instance fields
.field private t:[Ljava/lang/Object;

.field private u:I

.field private v:[Ljava/lang/String;

.field private w:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq2/f$a;

    invoke-direct {v0}, Lq2/f$a;-><init>()V

    sput-object v0, Lq2/f;->x:Ljava/io/Reader;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq2/f;->y:Ljava/lang/Object;

    return-void
.end method

.method private A()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " at path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq2/f;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private X(Lu2/b;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lq2/f;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Z()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq2/f;->t:[Ljava/lang/Object;

    iget p0, p0, Lq2/f;->u:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method private a0()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lq2/f;->t:[Ljava/lang/Object;

    iget v1, p0, Lq2/f;->u:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lq2/f;->u:I

    aget-object p0, v0, v1

    const/4 v2, 0x0

    .line 2
    aput-object v2, v0, v1

    return-object p0
.end method

.method private c0(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lq2/f;->u:I

    iget-object v1, p0, Lq2/f;->t:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 2
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lq2/f;->t:[Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lq2/f;->w:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lq2/f;->w:[I

    .line 4
    iget-object v1, p0, Lq2/f;->v:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lq2/f;->v:[Ljava/lang/String;

    .line 5
    :cond_0
    iget-object v0, p0, Lq2/f;->t:[Ljava/lang/Object;

    iget v1, p0, Lq2/f;->u:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq2/f;->u:I

    aput-object p1, v0, v1

    return-void
.end method

.method private r(Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget v2, p0, Lq2/f;->u:I

    if-ge v1, v2, :cond_4

    .line 3
    iget-object v3, p0, Lq2/f;->t:[Ljava/lang/Object;

    aget-object v4, v3, v1

    instance-of v4, v4, Ln2/h;

    if-eqz v4, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    .line 4
    aget-object v3, v3, v1

    instance-of v3, v3, Ljava/util/Iterator;

    if-eqz v3, :cond_3

    .line 5
    iget-object v3, p0, Lq2/f;->w:[I

    aget v3, v3, v1

    if-eqz p1, :cond_1

    if-lez v3, :cond_1

    add-int/lit8 v4, v2, -0x1

    if-eq v1, v4, :cond_0

    add-int/lit8 v2, v2, -0x2

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v3, v3, -0x1

    :cond_1
    const/16 v2, 0x5b

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_2
    aget-object v4, v3, v1

    instance-of v4, v4, Ln2/n;

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_3

    .line 8
    aget-object v2, v3, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_3

    const/16 v2, 0x2e

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, p0, Lq2/f;->v:[Ljava/lang/String;

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    .line 11
    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 3

    .line 1
    sget-object v0, Lu2/b;->l:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/p;

    invoke-virtual {v0}, Ln2/p;->i()Z

    move-result v0

    .line 3
    iget v1, p0, Lq2/f;->u:I

    if-lez v1, :cond_0

    .line 4
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_0
    return v0
.end method

.method public C()D
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lu2/b;->k:Lu2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Lu2/b;->g:Lu2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lq2/f;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/p;

    invoke-virtual {v0}, Ln2/p;->j()D

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lu2/a;->y()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_3
    :goto_1
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 9
    iget v2, p0, Lq2/f;->u:I

    if-lez v2, :cond_4

    .line 10
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_4
    return-wide v0
.end method

.method public D()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lu2/b;->k:Lu2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Lu2/b;->g:Lu2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lq2/f;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/p;

    invoke-virtual {v0}, Ln2/p;->a()I

    move-result v0

    .line 6
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 7
    iget v1, p0, Lq2/f;->u:I

    if-lez v1, :cond_2

    .line 8
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return v0
.end method

.method public E()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lu2/b;->k:Lu2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Lu2/b;->g:Lu2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lq2/f;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/p;

    invoke-virtual {v0}, Ln2/p;->k()J

    move-result-wide v0

    .line 6
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 7
    iget v2, p0, Lq2/f;->u:I

    if-lez v2, :cond_2

    .line 8
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_2
    return-wide v0
.end method

.method public F()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lu2/b;->f:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    iget-object v2, p0, Lq2/f;->v:[Ljava/lang/String;

    iget v3, p0, Lq2/f;->u:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    .line 6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lq2/f;->c0(Ljava/lang/Object;)V

    return-object v1
.end method

.method public H()V
    .locals 2

    .line 1
    sget-object v0, Lu2/b;->m:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 3
    iget v0, p0, Lq2/f;->u:I

    if-lez v0, :cond_0

    .line 4
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public J()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lu2/b;->g:Lu2/b;

    if-eq v0, v1, :cond_1

    sget-object v2, Lu2/b;->k:Lu2/b;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {p0}, Lq2/f;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/p;

    invoke-virtual {v0}, Ln2/p;->m()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget v1, p0, Lq2/f;->u:I

    if-lez v1, :cond_2

    .line 7
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return-object v0
.end method

.method public L()Lu2/b;
    .locals 3

    .line 1
    iget v0, p0, Lq2/f;->u:I

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lu2/b;->n:Lu2/b;

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    .line 4
    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lq2/f;->t:[Ljava/lang/Object;

    iget v2, p0, Lq2/f;->u:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Ln2/n;

    .line 6
    check-cast v0, Ljava/util/Iterator;

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    .line 8
    sget-object p0, Lu2/b;->f:Lu2/b;

    return-object p0

    .line 9
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lq2/f;->c0(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v1, :cond_3

    .line 11
    sget-object p0, Lu2/b;->d:Lu2/b;

    goto :goto_0

    :cond_3
    sget-object p0, Lu2/b;->b:Lu2/b;

    :goto_0
    return-object p0

    .line 12
    :cond_4
    instance-of p0, v0, Ln2/n;

    if-eqz p0, :cond_5

    .line 13
    sget-object p0, Lu2/b;->c:Lu2/b;

    return-object p0

    .line 14
    :cond_5
    instance-of p0, v0, Ln2/h;

    if-eqz p0, :cond_6

    .line 15
    sget-object p0, Lu2/b;->a:Lu2/b;

    return-object p0

    .line 16
    :cond_6
    instance-of p0, v0, Ln2/p;

    if-eqz p0, :cond_a

    .line 17
    check-cast v0, Ln2/p;

    .line 18
    invoke-virtual {v0}, Ln2/p;->q()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 19
    sget-object p0, Lu2/b;->g:Lu2/b;

    return-object p0

    .line 20
    :cond_7
    invoke-virtual {v0}, Ln2/p;->n()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 21
    sget-object p0, Lu2/b;->l:Lu2/b;

    return-object p0

    .line 22
    :cond_8
    invoke-virtual {v0}, Ln2/p;->p()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 23
    sget-object p0, Lu2/b;->k:Lu2/b;

    return-object p0

    .line 24
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 25
    :cond_a
    instance-of p0, v0, Ln2/m;

    if-eqz p0, :cond_b

    .line 26
    sget-object p0, Lu2/b;->m:Lu2/b;

    return-object p0

    .line 27
    :cond_b
    sget-object p0, Lq2/f;->y:Ljava/lang/Object;

    if-ne v0, p0, :cond_c

    .line 28
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonReader is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public V()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object v0

    sget-object v1, Lu2/b;->f:Lu2/b;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lq2/f;->F()Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lq2/f;->v:[Ljava/lang/String;

    iget v1, p0, Lq2/f;->u:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 5
    iget v0, p0, Lq2/f;->u:I

    if-lez v0, :cond_1

    .line 6
    iget-object v1, p0, Lq2/f;->v:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aput-object v2, v1, v0

    .line 7
    :cond_1
    :goto_0
    iget v0, p0, Lq2/f;->u:I

    if-lez v0, :cond_2

    .line 8
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_2
    return-void
.end method

.method Y()Ln2/k;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lu2/b;->f:Lu2/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lu2/b;->b:Lu2/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lu2/b;->d:Lu2/b;

    if-eq v0, v1, :cond_0

    sget-object v1, Lu2/b;->n:Lu2/b;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/k;

    .line 4
    invoke-virtual {p0}, Lq2/f;->V()V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " when reading a JsonElement."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lu2/b;->a:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/h;

    .line 3
    invoke-virtual {v0}, Ln2/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lq2/f;->c0(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lq2/f;->w:[I

    iget p0, p0, Lq2/f;->u:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    aput v1, v0, p0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    sget-object v0, Lu2/b;->c:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/n;

    .line 3
    invoke-virtual {v0}, Ln2/n;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lq2/f;->c0(Ljava/lang/Object;)V

    return-void
.end method

.method public b0()V
    .locals 2

    .line 1
    sget-object v0, Lu2/b;->f:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->Z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lq2/f;->c0(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ln2/p;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ln2/p;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lq2/f;->c0(Ljava/lang/Object;)V

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1
    sget-object v2, Lq2/f;->y:Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lq2/f;->t:[Ljava/lang/Object;

    .line 2
    iput v0, p0, Lq2/f;->u:I

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lq2/f;->r(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()V
    .locals 2

    .line 1
    sget-object v0, Lu2/b;->b:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 4
    iget v0, p0, Lq2/f;->u:I

    if-lez v0, :cond_0

    .line 5
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    sget-object v0, Lu2/b;->d:Lu2/b;

    invoke-direct {p0, v0}, Lq2/f;->X(Lu2/b;)V

    .line 2
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lq2/f;->a0()Ljava/lang/Object;

    .line 4
    iget v0, p0, Lq2/f;->u:I

    if-lez v0, :cond_0

    .line 5
    iget-object p0, p0, Lq2/f;->w:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lq2/f;->r(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lq2/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lq2/f;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/f;->L()Lu2/b;

    move-result-object p0

    .line 2
    sget-object v0, Lu2/b;->d:Lu2/b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lu2/b;->b:Lu2/b;

    if-eq p0, v0, :cond_0

    sget-object v0, Lu2/b;->n:Lu2/b;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
