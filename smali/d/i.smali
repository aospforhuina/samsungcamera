.class Ld/i;
.super Ljava/lang/Object;
.source "XMPNode.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ld/i;

.field private d:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Lf/c;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ld/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lf/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0, p2}, Ld/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/c;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lf/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/i;->d:Ljava/util/List;

    .line 3
    iput-object v0, p0, Ld/i;->f:Ljava/util/List;

    .line 4
    iput-object p1, p0, Ld/i;->a:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Ld/i;->b:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Ld/i;->g:Lf/c;

    return-void
.end method

.method private B()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ld/i;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ld/i;->f:Ljava/util/List;

    .line 3
    :cond_0
    iget-object p0, p0, Ld/i;->f:Ljava/util/List;

    return-object p0
.end method

.method private H()Z
    .locals 1

    iget-object p0, p0, Ld/i;->a:Ljava/lang/String;

    const-string v0, "xml:lang"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private I()Z
    .locals 1

    iget-object p0, p0, Ld/i;->a:Ljava/lang/String;

    const-string v0, "rdf:type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private k(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[]"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ld/i;->s(Ljava/lang/String;)Ld/i;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lc/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate property or field node \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-direct {p0, p1, v0}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    const-string v0, "[]"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Ld/i;->t(Ljava/lang/String;)Ld/i;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Lc/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' qualifier"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xcb

    invoke-direct {p0, p1, v0}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private r(Ljava/util/List;Ljava/lang/String;)Ld/i;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld/i;

    .line 3
    invoke-virtual {p1}, Ld/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private v()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ld/i;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ld/i;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object p0, p0, Ld/i;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public A(I)Ld/i;
    .locals 0

    invoke-direct {p0}, Ld/i;->B()Ljava/util/List;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/i;

    return-object p0
.end method

.method public C()I
    .locals 0

    .line 1
    iget-object p0, p0, Ld/i;->f:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public D()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public E()Z
    .locals 0

    iget-object p0, p0, Ld/i;->d:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public F()Z
    .locals 0

    iget-object p0, p0, Ld/i;->f:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public G()Z
    .locals 0

    iget-boolean p0, p0, Ld/i;->k:Z

    return p0
.end method

.method public J()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/i;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Ld/i;->v()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public K()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Ld/i;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Ld/i;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    new-instance v1, Ld/i$a;

    invoke-direct {v1, p0, v0}, Ld/i$a;-><init>(Ld/i;Ljava/util/Iterator;)V

    return-object v1

    .line 4
    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public L(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/i;->v()Ljava/util/List;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Ld/i;->m()V

    return-void
.end method

.method public M(Ld/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ld/i;->v()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Ld/i;->m()V

    return-void
.end method

.method public N()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ld/i;->d:Ljava/util/List;

    return-void
.end method

.method public O(Ld/i;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ld/i;->y()Lf/c;

    move-result-object v0

    .line 2
    invoke-direct {p1}, Ld/i;->H()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Lf/c;->w(Z)Lf/c;

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p1}, Ld/i;->I()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0, v2}, Lf/c;->y(Z)Lf/c;

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0}, Ld/i;->B()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Ld/i;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Lf/c;->x(Z)Lf/c;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Ld/i;->f:Ljava/util/List;

    :cond_2
    return-void
.end method

.method public P(Z)V
    .locals 0

    iput-boolean p1, p0, Ld/i;->k:Z

    return-void
.end method

.method public Q(Lf/c;)V
    .locals 0

    iput-object p1, p0, Ld/i;->g:Lf/c;

    return-void
.end method

.method protected R(Ld/i;)V
    .locals 0

    iput-object p1, p0, Ld/i;->c:Ld/i;

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ld/i;->b:Ljava/lang/String;

    return-void
.end method

.method public T()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld/i;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Ld/i;->B()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ld/i;->C()I

    move-result v1

    new-array v1, v1, [Ld/i;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/i;

    const/4 v1, 0x0

    move v2, v1

    .line 4
    :goto_0
    array-length v3, v0

    if-le v3, v2, :cond_1

    aget-object v3, v0, v2

    .line 5
    invoke-virtual {v3}, Ld/i;->x()Ljava/lang/String;

    move-result-object v3

    const-string v4, "xml:lang"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v0, v2

    .line 6
    invoke-virtual {v3}, Ld/i;->x()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rdf:type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ld/i;->T()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 9
    iget-object v2, p0, Ld/i;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 10
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 11
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 12
    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 13
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ld/i;->T()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p0}, Ld/i;->E()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {p0}, Ld/i;->y()Lf/c;

    move-result-object v0

    invoke-virtual {v0}, Lf/c;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    iget-object v0, p0, Ld/i;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 17
    :cond_3
    invoke-virtual {p0}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/i;

    invoke-virtual {v0}, Ld/i;->T()V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public a(ILd/i;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ld/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/i;->k(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2, p0}, Ld/i;->R(Ld/i;)V

    .line 3
    invoke-direct {p0}, Ld/i;->v()Ljava/util/List;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Ld/i;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ld/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/i;->k(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p0}, Ld/i;->R(Ld/i;)V

    .line 3
    invoke-direct {p0}, Ld/i;->v()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lf/c;

    invoke-virtual {p0}, Ld/i;->y()Lf/c;

    move-result-object v1

    invoke-virtual {v1}, Lf/b;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lf/c;-><init>(I)V
    :try_end_0
    .catch Lc/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance v0, Lf/c;

    invoke-direct {v0}, Lf/c;-><init>()V

    .line 3
    :goto_0
    new-instance v1, Ld/i;

    iget-object v2, p0, Ld/i;->a:Ljava/lang/String;

    iget-object v3, p0, Ld/i;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Ld/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/c;)V

    .line 4
    invoke-virtual {p0, v1}, Ld/i;->p(Ld/i;)V

    return-object v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ld/i;->y()Lf/c;

    move-result-object v0

    invoke-virtual {v0}, Lf/c;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Ld/i;->b:Ljava/lang/String;

    check-cast p1, Ld/i;

    invoke-virtual {p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Ld/i;->a:Ljava/lang/String;

    check-cast p1, Ld/i;

    invoke-virtual {p1}, Ld/i;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public h(Ld/i;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ld/i;->x()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/i;->l(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p0}, Ld/i;->R(Ld/i;)V

    .line 3
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf/c;->z(Z)Lf/c;

    .line 4
    invoke-virtual {p0}, Ld/i;->y()Lf/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lf/c;->x(Z)Lf/c;

    .line 5
    invoke-direct {p1}, Ld/i;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Ld/i;->g:Lf/c;

    invoke-virtual {v0, v1}, Lf/c;->w(Z)Lf/c;

    .line 7
    invoke-direct {p0}, Ld/i;->B()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p1}, Ld/i;->I()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Ld/i;->g:Lf/c;

    invoke-virtual {v0, v1}, Lf/c;->y(Z)Lf/c;

    .line 10
    invoke-direct {p0}, Ld/i;->B()Ljava/util/List;

    move-result-object v0

    .line 11
    iget-object p0, p0, Ld/i;->g:Lf/c;

    invoke-virtual {p0}, Lf/c;->h()Z

    move-result p0

    .line 12
    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0}, Ld/i;->B()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected m()V
    .locals 1

    .line 1
    iget-object v0, p0, Ld/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/i;->d:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Ld/i;->g:Lf/c;

    .line 2
    iput-object v0, p0, Ld/i;->a:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Ld/i;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ld/i;->d:Ljava/util/List;

    .line 5
    iput-object v0, p0, Ld/i;->f:Ljava/util/List;

    return-void
.end method

.method public p(Ld/i;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/i;

    .line 3
    invoke-virtual {v1}, Ld/i;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/i;

    invoke-virtual {p1, v1}, Ld/i;->b(Ld/i;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ld/i;->K()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/i;

    .line 6
    invoke-virtual {v0}, Ld/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/i;

    invoke-virtual {p1, v0}, Ld/i;->h(Ld/i;)V
    :try_end_0
    .catch Lc/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    return-void
.end method

.method public s(Ljava/lang/String;)Ld/i;
    .locals 1

    invoke-direct {p0}, Ld/i;->v()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ld/i;->r(Ljava/util/List;Ljava/lang/String;)Ld/i;

    move-result-object p0

    return-object p0
.end method

.method public t(Ljava/lang/String;)Ld/i;
    .locals 1

    iget-object v0, p0, Ld/i;->f:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Ld/i;->r(Ljava/util/List;Ljava/lang/String;)Ld/i;

    move-result-object p0

    return-object p0
.end method

.method public u(I)Ld/i;
    .locals 0

    invoke-direct {p0}, Ld/i;->v()Ljava/util/List;

    move-result-object p0

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/i;

    return-object p0
.end method

.method public w()I
    .locals 0

    .line 1
    iget-object p0, p0, Ld/i;->d:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ld/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public y()Lf/c;
    .locals 1

    .line 1
    iget-object v0, p0, Ld/i;->g:Lf/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lf/c;

    invoke-direct {v0}, Lf/c;-><init>()V

    iput-object v0, p0, Ld/i;->g:Lf/c;

    .line 3
    :cond_0
    iget-object p0, p0, Ld/i;->g:Lf/c;

    return-object p0
.end method

.method public z()Ld/i;
    .locals 0

    iget-object p0, p0, Ld/i;->c:Ld/i;

    return-object p0
.end method
