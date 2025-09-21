.class public Ld/m;
.super Ljava/lang/Object;
.source "XMPSerializerRDF.java"


# static fields
.field static final g:Ljava/util/Set;


# instance fields
.field private a:Ld/h;

.field private b:Ld/b;

.field private c:Ljava/io/OutputStreamWriter;

.field private d:Lf/d;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "xml:lang"

    const-string v2, "rdf:resource"

    const-string v3, "rdf:ID"

    const-string v4, "rdf:bagID"

    const-string v5, "rdf:nodeID"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ld/m;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ld/m;->e:I

    return-void
.end method

.method private a(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ld/m;->b:Ld/b;

    invoke-virtual {v0}, Ld/b;->a()I

    move-result v0

    iget v1, p0, Ld/m;->e:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 3
    iget p1, p0, Ld/m;->f:I

    if-gt v0, p1, :cond_0

    sub-int/2addr p1, v0

    .line 4
    iput p1, p0, Ld/m;->f:I

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lc/c;

    const/16 p1, 0x6b

    const-string v0, "Can\'t fit into specified packet size"

    invoke-direct {p0, v0, p1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    iget p1, p0, Ld/m;->f:I

    iget v0, p0, Ld/m;->e:I

    div-int/2addr p1, v0

    iput p1, p0, Ld/m;->f:I

    .line 7
    iget-object p1, p0, Ld/m;->d:Lf/d;

    invoke-virtual {p1}, Lf/d;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 8
    iget v0, p0, Ld/m;->f:I

    const/16 v1, 0x20

    if-lt v0, p1, :cond_3

    sub-int/2addr v0, p1

    .line 9
    iput v0, p0, Ld/m;->f:I

    .line 10
    :goto_1
    iget v0, p0, Ld/m;->f:I

    const/16 v2, 0x64

    add-int/lit8 v3, p1, 0x64

    if-lt v0, v3, :cond_2

    .line 11
    invoke-direct {p0, v2, v1}, Ld/m;->v(IC)V

    .line 12
    invoke-direct {p0}, Ld/m;->x()V

    .line 13
    iget v0, p0, Ld/m;->f:I

    sub-int/2addr v0, v3

    iput v0, p0, Ld/m;->f:I

    goto :goto_1

    .line 14
    :cond_2
    invoke-direct {p0, v0, v1}, Ld/m;->v(IC)V

    .line 15
    invoke-direct {p0}, Ld/m;->x()V

    goto :goto_2

    .line 16
    :cond_3
    invoke-direct {p0, v0, v1}, Ld/m;->v(IC)V

    :goto_2
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Ld/f;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ld/i;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld/i;->F()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object p0

    invoke-virtual {p0}, Lf/c;->r()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object p0

    invoke-virtual {p0}, Lf/c;->m()Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    invoke-virtual {p1}, Ld/i;->x()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[]"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 2

    if-nez p2, :cond_1

    .line 1
    new-instance p2, Ld/e;

    invoke-direct {p2, p1}, Ld/e;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Ld/e;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Ld/e;->a()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {}, Lc/e;->c()Lc/g;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lc/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Ld/m;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Ld/m;->x()V

    .line 8
    invoke-direct {p0, p4}, Ld/m;->w(I)V

    const-string p4, "xmlns:"

    .line 9
    invoke-direct {p0, p4}, Ld/m;->u(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    const-string p4, "=\""

    .line 11
    invoke-direct {p0, p4}, Ld/m;->u(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p2}, Ld/m;->u(Ljava/lang/String;)V

    const/16 p2, 0x22

    .line 13
    invoke-direct {p0, p2}, Ld/m;->t(I)V

    .line 14
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private f(Ld/i;Ljava/util/Set;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object v0

    invoke-virtual {v0}, Lf/c;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ld/i;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2, p3}, Ld/m;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object v0

    invoke-virtual {v0}, Lf/c;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/i;

    .line 7
    invoke-virtual {v2}, Ld/i;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2, p3}, Ld/m;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/i;

    .line 10
    invoke-direct {p0, v2, p2, p3}, Ld/m;->f(Ld/i;Ljava/util/Set;I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1}, Ld/i;->K()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/i;

    .line 13
    invoke-virtual {v0}, Ld/i;->x()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2, p3}, Ld/m;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    .line 14
    invoke-direct {p0, v0, p2, p3}, Ld/m;->f(Ld/i;Ljava/util/Set;I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private g(Ld/i;ZI)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Ld/i;->E()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Ld/m;->w(I)V

    if-eqz p2, :cond_1

    const-string p3, "<rdf:"

    goto :goto_0

    :cond_1
    const-string p3, "</rdf:"

    .line 3
    :goto_0
    invoke-direct {p0, p3}, Ld/m;->u(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object p3

    invoke-virtual {p3}, Lf/c;->k()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "Alt"

    .line 5
    invoke-direct {p0, p3}, Ld/m;->u(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object p3

    invoke-virtual {p3}, Lf/c;->l()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "Seq"

    .line 7
    invoke-direct {p0, p3}, Ld/m;->u(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p3, "Bag"

    .line 8
    invoke-direct {p0, p3}, Ld/m;->u(Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p1}, Ld/i;->E()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "/>"

    .line 10
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string p1, ">"

    .line 11
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 12
    :goto_2
    invoke-direct {p0}, Ld/m;->x()V

    :cond_5
    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Ld/m;->w(I)V

    const-string v0, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

    .line 3
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ld/m;->x()V

    .line 5
    :cond_0
    invoke-direct {p0, v1}, Ld/m;->w(I)V

    const-string v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""

    .line 6
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {}, Lc/e;->d()Lc/i;

    move-result-object v0

    invoke-interface {v0}, Lc/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    :cond_1
    const-string v0, "\">"

    .line 9
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ld/m;->x()V

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, v0}, Ld/m;->w(I)V

    const-string v2, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    .line 12
    invoke-direct {p0, v2}, Ld/m;->u(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ld/m;->x()V

    .line 14
    iget-object v2, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v2}, Lf/d;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-direct {p0}, Ld/m;->n()V

    goto :goto_0

    .line 16
    :cond_2
    invoke-direct {p0}, Ld/m;->s()V

    .line 17
    :goto_0
    invoke-direct {p0, v0}, Ld/m;->w(I)V

    const-string v0, "</rdf:RDF>"

    .line 18
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ld/m;->x()V

    .line 20
    invoke-direct {p0, v1}, Ld/m;->w(I)V

    const-string v0, "</x:xmpmeta>"

    .line 21
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ld/m;->x()V

    const-string v0, ""

    .line 23
    iget-object v1, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v1}, Lf/d;->p()Z

    move-result v1

    if-nez v1, :cond_5

    .line 24
    iget-object v1, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v1}, Lf/d;->h()I

    move-result v1

    :goto_1
    if-lez v1, :cond_3

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 26
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<?xpacket end=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {p0}, Lf/d;->s()Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x72

    goto :goto_2

    :cond_4
    const/16 p0, 0x77

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"?>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private j(Ld/i;I)V
    .locals 2

    const/16 v0, 0x3e

    .line 1
    invoke-direct {p0, v0}, Ld/m;->t(I)V

    .line 2
    invoke-direct {p0}, Ld/m;->x()V

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, v1, v0}, Ld/m;->g(Ld/i;ZI)V

    .line 4
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object v1

    invoke-virtual {v1}, Lf/c;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {p1}, Ld/j;->l(Ld/i;)V

    :cond_0
    add-int/lit8 p2, p2, 0x2

    .line 6
    invoke-direct {p0, p1, p2}, Ld/m;->l(Ld/i;I)V

    const/4 p2, 0x0

    .line 7
    invoke-direct {p0, p1, p2, v0}, Ld/m;->g(Ld/i;ZI)V

    return-void
.end method

.method private k(Ld/i;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/i;

    .line 3
    invoke-direct {p0, v2}, Ld/m;->c(Ld/i;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-direct {p0}, Ld/m;->x()V

    .line 5
    invoke-direct {p0, p2}, Ld/m;->w(I)V

    .line 6
    invoke-virtual {v2}, Ld/i;->x()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Ld/m;->u(Ljava/lang/String;)V

    const-string v3, "=\""

    .line 7
    invoke-direct {p0, v3}, Ld/m;->u(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Ld/i;->D()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Ld/m;->b(Ljava/lang/String;Z)V

    const/16 v2, 0x22

    .line 9
    invoke-direct {p0, v2}, Ld/m;->t(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private l(Ld/i;I)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/i;

    .line 3
    invoke-direct {p0, v0}, Ld/m;->c(Ld/i;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v0}, Ld/i;->x()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "rdf:li"

    .line 6
    :cond_2
    invoke-direct {p0, p2}, Ld/m;->w(I)V

    const/16 v2, 0x3c

    .line 7
    invoke-direct {p0, v2}, Ld/m;->t(I)V

    .line 8
    invoke-direct {p0, v1}, Ld/m;->u(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ld/i;->K()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 10
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/i;

    .line 11
    sget-object v8, Ld/m;->g:Ljava/util/Set;

    invoke-virtual {v6}, Ld/i;->x()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v4, v7

    goto :goto_1

    .line 12
    :cond_3
    invoke-virtual {v6}, Ld/i;->x()Ljava/lang/String;

    move-result-object v5

    const-string v8, "rdf:resource"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v8, 0x20

    .line 13
    invoke-direct {p0, v8}, Ld/m;->t(I)V

    .line 14
    invoke-virtual {v6}, Ld/i;->x()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Ld/m;->u(Ljava/lang/String;)V

    const-string v8, "=\""

    .line 15
    invoke-direct {p0, v8}, Ld/m;->u(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6}, Ld/i;->D()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Ld/m;->b(Ljava/lang/String;Z)V

    const/16 v6, 0x22

    .line 17
    invoke-direct {p0, v6}, Ld/m;->t(I)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 18
    invoke-direct {p0, p2, v0}, Ld/m;->m(ILd/i;)V

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {v0}, Ld/i;->y()Lf/c;

    move-result-object v2

    invoke-virtual {v2}, Lf/c;->m()Z

    move-result v2

    if-nez v2, :cond_6

    .line 20
    invoke-direct {p0, v0}, Ld/m;->o(Ld/i;)[Ljava/lang/Object;

    move-result-object v0

    .line 21
    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 22
    aget-object v0, v0, v7

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move v0, v7

    move v7, v2

    goto :goto_3

    .line 23
    :cond_6
    invoke-virtual {v0}, Ld/i;->y()Lf/c;

    move-result-object v2

    invoke-virtual {v2}, Lf/c;->i()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 24
    invoke-direct {p0, v0, p2}, Ld/m;->j(Ld/i;I)V

    :goto_2
    move v0, v7

    goto :goto_3

    .line 25
    :cond_7
    invoke-direct {p0, v0, p2, v5}, Ld/m;->p(Ld/i;IZ)Z

    move-result v0

    move v10, v7

    move v7, v0

    move v0, v10

    :goto_3
    if-eqz v7, :cond_0

    if-eqz v0, :cond_8

    .line 26
    invoke-direct {p0, p2}, Ld/m;->w(I)V

    :cond_8
    const-string v0, "</"

    .line 27
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, v1}, Ld/m;->u(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 29
    invoke-direct {p0, v0}, Ld/m;->t(I)V

    .line 30
    invoke-direct {p0}, Ld/m;->x()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private m(ILd/i;)V
    .locals 2

    const-string v0, " rdf:parseType=\"Resource\">"

    .line 1
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ld/m;->x()V

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 3
    invoke-direct {p0, p2, v0, p1}, Ld/m;->q(Ld/i;ZI)V

    .line 4
    invoke-virtual {p2}, Ld/i;->K()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/i;

    const/4 v1, 0x0

    .line 6
    invoke-direct {p0, v0, v1, p1}, Ld/m;->q(Ld/i;ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private n()V
    .locals 5

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Ld/m;->w(I)V

    const-string v1, "<rdf:Description rdf:about="

    .line 2
    invoke-direct {p0, v1}, Ld/m;->u(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ld/m;->y()V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "xml"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "rdf"

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Ld/m;->a:Ld/h;

    invoke-virtual {v2}, Ld/h;->c()Ld/i;

    move-result-object v2

    invoke-virtual {v2}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/i;

    const/4 v4, 0x4

    .line 9
    invoke-direct {p0, v3, v1, v4}, Ld/m;->f(Ld/i;Ljava/util/Set;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Ld/m;->a:Ld/h;

    invoke-virtual {v2}, Ld/h;->c()Ld/i;

    move-result-object v2

    invoke-virtual {v2}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_1

    .line 11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ld/i;

    .line 12
    invoke-direct {p0, v3, v4}, Ld/m;->k(Ld/i;I)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_1

    :cond_1
    if-nez v1, :cond_3

    const/16 v1, 0x3e

    .line 13
    invoke-direct {p0, v1}, Ld/m;->t(I)V

    .line 14
    invoke-direct {p0}, Ld/m;->x()V

    .line 15
    iget-object v1, p0, Ld/m;->a:Ld/h;

    invoke-virtual {v1}, Ld/h;->c()Ld/i;

    move-result-object v1

    invoke-virtual {v1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld/i;

    .line 17
    invoke-direct {p0, v2, v4}, Ld/m;->l(Ld/i;I)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-direct {p0, v0}, Ld/m;->w(I)V

    const-string v0, "</rdf:Description>"

    .line 19
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ld/m;->x()V

    return-void

    :cond_3
    const-string v0, "/>"

    .line 21
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ld/m;->x()V

    return-void
.end method

.method private o(Ld/i;)[Ljava/lang/Object;
    .locals 5

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object v1

    invoke-virtual {v1}, Lf/c;->r()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string v1, " rdf:resource=\""

    .line 3
    invoke-direct {p0, v1}, Ld/m;->u(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Ld/m;->b(Ljava/lang/String;Z)V

    const-string p1, "\"/>"

    .line 5
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ld/m;->x()V

    .line 7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2

    .line 8
    :cond_0
    invoke-virtual {p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x3e

    .line 9
    invoke-direct {p0, v1}, Ld/m;->t(I)V

    .line 10
    invoke-virtual {p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Ld/m;->b(Ljava/lang/String;Z)V

    .line 11
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "/>"

    .line 12
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ld/m;->x()V

    .line 14
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :goto_2
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v2

    aput-object p0, p1, v3

    return-object p1
.end method

.method private p(Ld/i;IZ)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/i;

    .line 3
    invoke-direct {p0, v4}, Ld/m;->c(Ld/i;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :cond_2
    if-eqz p3, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    new-instance p0, Lc/c;

    const/16 p1, 0xca

    const-string p2, "Can\'t mix rdf:resource qualifier and element fields"

    invoke-direct {p0, p2, p1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 5
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ld/i;->E()Z

    move-result p3

    if-nez p3, :cond_5

    const-string p1, " rdf:parseType=\"Resource\"/>"

    .line 6
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ld/m;->x()V

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    add-int/2addr p2, v5

    .line 8
    invoke-direct {p0, p1, p2}, Ld/m;->k(Ld/i;I)Z

    const-string p1, "/>"

    .line 9
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ld/m;->x()V

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    const-string p3, " rdf:parseType=\"Resource\">"

    .line 11
    invoke-direct {p0, p3}, Ld/m;->u(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ld/m;->x()V

    add-int/2addr p2, v5

    .line 13
    invoke-direct {p0, p1, p2}, Ld/m;->l(Ld/i;I)V

    goto :goto_2

    :cond_7
    const/16 p3, 0x3e

    .line 14
    invoke-direct {p0, p3}, Ld/m;->t(I)V

    .line 15
    invoke-direct {p0}, Ld/m;->x()V

    add-int/lit8 p3, p2, 0x1

    .line 16
    invoke-direct {p0, p3}, Ld/m;->w(I)V

    const-string v0, "<rdf:Description"

    .line 17
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x2

    .line 18
    invoke-direct {p0, p1, p2}, Ld/m;->k(Ld/i;I)Z

    const-string p2, ">"

    .line 19
    invoke-direct {p0, p2}, Ld/m;->u(Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ld/m;->x()V

    .line 21
    invoke-direct {p0, p1, p3}, Ld/m;->l(Ld/i;I)V

    .line 22
    invoke-direct {p0, p3}, Ld/m;->w(I)V

    const-string p1, "</rdf:Description>"

    .line 23
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ld/m;->x()V

    :goto_2
    move v1, v5

    :goto_3
    return v1
.end method

.method private q(Ld/i;ZI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Ld/i;->x()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    const-string v3, "rdf:value"

    goto :goto_0

    :cond_0
    const-string v4, "[]"

    .line 2
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "rdf:li"

    .line 3
    :cond_1
    :goto_0
    invoke-direct {v0, v2}, Ld/m;->w(I)V

    const/16 v4, 0x3c

    .line 4
    invoke-direct {v0, v4}, Ld/m;->t(I)V

    .line 5
    invoke-direct {v0, v3}, Ld/m;->u(Ljava/lang/String;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Ld/i;->K()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/16 v9, 0x22

    const-string v10, "=\""

    const/16 v11, 0x20

    const/4 v12, 0x1

    if-eqz v8, :cond_4

    .line 7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ld/i;

    .line 8
    sget-object v13, Ld/m;->g:Ljava/util/Set;

    invoke-virtual {v8}, Ld/i;->x()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    move v6, v12

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {v8}, Ld/i;->x()Ljava/lang/String;

    move-result-object v7

    const-string v13, "rdf:resource"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez p2, :cond_2

    .line 10
    invoke-direct {v0, v11}, Ld/m;->t(I)V

    .line 11
    invoke-virtual {v8}, Ld/i;->x()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ld/m;->u(Ljava/lang/String;)V

    .line 12
    invoke-direct {v0, v10}, Ld/m;->u(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v8}, Ld/i;->D()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v12}, Ld/m;->b(Ljava/lang/String;Z)V

    .line 14
    invoke-direct {v0, v9}, Ld/m;->t(I)V

    goto :goto_1

    :cond_4
    const/16 v4, 0xca

    const-string v8, " rdf:parseType=\"Resource\">"

    const/16 v13, 0x3e

    if-eqz v6, :cond_7

    if-nez p2, :cond_7

    if-nez v7, :cond_6

    .line 15
    invoke-direct {v0, v8}, Ld/m;->u(Ljava/lang/String;)V

    .line 16
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    add-int/lit8 v4, v2, 0x1

    .line 17
    invoke-direct {v0, v1, v12, v4}, Ld/m;->q(Ld/i;ZI)V

    .line 18
    invoke-virtual/range {p1 .. p1}, Ld/i;->K()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/i;

    .line 20
    sget-object v7, Ld/m;->g:Ljava/util/Set;

    invoke-virtual {v6}, Ld/i;->x()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 21
    invoke-direct {v0, v6, v5, v4}, Ld/m;->q(Ld/i;ZI)V

    goto :goto_2

    .line 22
    :cond_6
    new-instance v0, Lc/c;

    const-string v1, "Can\'t mix rdf:resource and general qualifiers"

    invoke-direct {v0, v1, v4}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 23
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ld/i;->y()Lf/c;

    move-result-object v6

    invoke-virtual {v6}, Lf/c;->m()Z

    move-result v6

    const-string v14, "/>"

    if-nez v6, :cond_b

    .line 24
    invoke-virtual/range {p1 .. p1}, Ld/i;->y()Lf/c;

    move-result-object v4

    invoke-virtual {v4}, Lf/c;->r()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, " rdf:resource=\""

    .line 25
    invoke-direct {v0, v4}, Ld/m;->u(Ljava/lang/String;)V

    .line 26
    invoke-virtual/range {p1 .. p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Ld/m;->b(Ljava/lang/String;Z)V

    const-string v1, "\"/>"

    .line 27
    invoke-direct {v0, v1}, Ld/m;->u(Ljava/lang/String;)V

    .line 28
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    goto/16 :goto_8

    .line 29
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_3

    .line 30
    :cond_9
    invoke-direct {v0, v13}, Ld/m;->t(I)V

    .line 31
    invoke-virtual/range {p1 .. p1}, Ld/i;->D()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ld/m;->b(Ljava/lang/String;Z)V

    move v15, v12

    move v12, v5

    move v5, v15

    goto/16 :goto_8

    .line 32
    :cond_a
    :goto_3
    invoke-direct {v0, v14}, Ld/m;->u(Ljava/lang/String;)V

    .line 33
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    goto/16 :goto_8

    .line 34
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ld/i;->y()Lf/c;

    move-result-object v6

    invoke-virtual {v6}, Lf/c;->i()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 35
    invoke-direct {v0, v13}, Ld/m;->t(I)V

    .line 36
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    add-int/lit8 v4, v2, 0x1

    .line 37
    invoke-direct {v0, v1, v12, v4}, Ld/m;->g(Ld/i;ZI)V

    .line 38
    invoke-virtual/range {p1 .. p1}, Ld/i;->y()Lf/c;

    move-result-object v6

    invoke-virtual {v6}, Lf/c;->j()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 39
    invoke-static/range {p1 .. p1}, Ld/j;->l(Ld/i;)V

    .line 40
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 41
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ld/i;

    add-int/lit8 v8, v2, 0x2

    .line 42
    invoke-direct {v0, v7, v5, v8}, Ld/m;->q(Ld/i;ZI)V

    goto :goto_4

    .line 43
    :cond_d
    invoke-direct {v0, v1, v5, v4}, Ld/m;->g(Ld/i;ZI)V

    goto :goto_6

    :cond_e
    if-nez v7, :cond_11

    .line 44
    invoke-virtual/range {p1 .. p1}, Ld/i;->E()Z

    move-result v4

    if-nez v4, :cond_f

    const-string v1, " rdf:parseType=\"Resource\"/>"

    .line 45
    invoke-direct {v0, v1}, Ld/m;->u(Ljava/lang/String;)V

    .line 46
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    goto :goto_8

    .line 47
    :cond_f
    invoke-direct {v0, v8}, Ld/m;->u(Ljava/lang/String;)V

    .line 48
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    .line 49
    invoke-virtual/range {p1 .. p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ld/i;

    add-int/lit8 v6, v2, 0x1

    .line 51
    invoke-direct {v0, v4, v5, v6}, Ld/m;->q(Ld/i;ZI)V

    goto :goto_5

    :cond_10
    :goto_6
    move v5, v12

    goto :goto_8

    .line 52
    :cond_11
    invoke-virtual/range {p1 .. p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 53
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/i;

    .line 54
    invoke-direct {v0, v6}, Ld/m;->c(Ld/i;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 55
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    add-int/lit8 v7, v2, 0x1

    .line 56
    invoke-direct {v0, v7}, Ld/m;->w(I)V

    .line 57
    invoke-direct {v0, v11}, Ld/m;->t(I)V

    .line 58
    invoke-virtual {v6}, Ld/i;->x()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ld/m;->u(Ljava/lang/String;)V

    .line 59
    invoke-direct {v0, v10}, Ld/m;->u(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v6}, Ld/i;->D()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, v12}, Ld/m;->b(Ljava/lang/String;Z)V

    .line 61
    invoke-direct {v0, v9}, Ld/m;->t(I)V

    goto :goto_7

    .line 62
    :cond_12
    new-instance v0, Lc/c;

    const-string v1, "Can\'t mix rdf:resource and complex fields"

    invoke-direct {v0, v1, v4}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 63
    :cond_13
    invoke-direct {v0, v14}, Ld/m;->u(Ljava/lang/String;)V

    .line 64
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    :goto_8
    if-eqz v5, :cond_15

    if-eqz v12, :cond_14

    .line 65
    invoke-direct {v0, v2}, Ld/m;->w(I)V

    :cond_14
    const-string v1, "</"

    .line 66
    invoke-direct {v0, v1}, Ld/m;->u(Ljava/lang/String;)V

    .line 67
    invoke-direct {v0, v3}, Ld/m;->u(Ljava/lang/String;)V

    .line 68
    invoke-direct {v0, v13}, Ld/m;->t(I)V

    .line 69
    invoke-direct/range {p0 .. p0}, Ld/m;->x()V

    :cond_15
    return-void
.end method

.method private r(Ld/i;)V
    .locals 4

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Ld/m;->w(I)V

    const-string v1, "<rdf:Description rdf:about="

    .line 2
    invoke-direct {p0, v1}, Ld/m;->u(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ld/m;->y()V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "xml"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "rdf"

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    .line 7
    invoke-direct {p0, p1, v1, v2}, Ld/m;->f(Ld/i;Ljava/util/Set;I)V

    const/16 v1, 0x3e

    .line 8
    invoke-direct {p0, v1}, Ld/m;->t(I)V

    .line 9
    invoke-direct {p0}, Ld/m;->x()V

    .line 10
    invoke-virtual {p1}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/i;

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 12
    invoke-direct {p0, v1, v2, v3}, Ld/m;->q(Ld/i;ZI)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-direct {p0, v0}, Ld/m;->w(I)V

    const-string p1, "</rdf:Description>"

    .line 14
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ld/m;->x()V

    return-void
.end method

.method private s()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m;->a:Ld/h;

    invoke-virtual {v0}, Ld/h;->c()Ld/i;

    move-result-object v0

    invoke-virtual {v0}, Ld/i;->w()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Ld/m;->a:Ld/h;

    invoke-virtual {v0}, Ld/h;->c()Ld/i;

    move-result-object v0

    invoke-virtual {v0}, Ld/i;->J()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/i;

    .line 4
    invoke-direct {p0, v1}, Ld/m;->r(Ld/i;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Ld/m;->w(I)V

    const-string v0, "<rdf:Description rdf:about="

    .line 6
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ld/m;->y()V

    const-string v0, "/>"

    .line 8
    invoke-direct {p0, v0}, Ld/m;->u(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ld/m;->x()V

    :cond_1
    return-void
.end method

.method private t(I)V
    .locals 0

    iget-object p0, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private v(IC)V
    .locals 1

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private w(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->h()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    if-lez v0, :cond_0

    .line 2
    iget-object p1, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v1}, Lf/d;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    iget-object p0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {p0}, Lf/d;->o()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private y()V
    .locals 3

    const/16 v0, 0x22

    .line 1
    invoke-direct {p0, v0}, Ld/m;->t(I)V

    .line 2
    iget-object v1, p0, Ld/m;->a:Ld/h;

    invoke-virtual {v1}, Ld/h;->c()Ld/i;

    move-result-object v1

    invoke-virtual {v1}, Ld/i;->x()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 3
    invoke-direct {p0, v1, v2}, Ld/m;->b(Ljava/lang/String;Z)V

    .line 4
    :cond_0
    invoke-direct {p0, v0}, Ld/m;->t(I)V

    return-void
.end method


# virtual methods
.method protected d()V
    .locals 4

    .line 1
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->i()Z

    move-result v0

    iget-object v1, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v1}, Lf/d;->j()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ld/m;->e:I

    .line 3
    :cond_0
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->l()Z

    move-result v0

    const/16 v1, 0x67

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->p()Z

    move-result v0

    iget-object v2, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v2}, Lf/d;->m()Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->r()I

    move-result v0

    iget p0, p0, Ld/m;->e:I

    add-int/lit8 p0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    new-instance p0, Lc/c;

    const-string v0, "Exact size must be a multiple of the Unicode element"

    invoke-direct {p0, v0, v1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Lc/c;

    const-string v0, "Inconsistent options for exact size serialize"

    invoke-direct {p0, v0, v1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 8
    :cond_3
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->s()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->p()Z

    move-result v0

    iget-object v3, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v3}, Lf/d;->m()Z

    move-result v3

    or-int/2addr v0, v3

    if-nez v0, :cond_4

    .line 10
    iput v2, p0, Ld/m;->f:I

    goto :goto_0

    .line 11
    :cond_4
    new-instance p0, Lc/c;

    const-string v0, "Inconsistent options for read-only packet"

    invoke-direct {p0, v0, v1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 12
    :cond_5
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->p()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->m()Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    iput v2, p0, Ld/m;->f:I

    goto :goto_0

    .line 15
    :cond_6
    new-instance p0, Lc/c;

    const-string v0, "Inconsistent options for non-packet serialize"

    invoke-direct {p0, v0, v1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 16
    :cond_7
    iget v0, p0, Ld/m;->f:I

    if-nez v0, :cond_8

    .line 17
    iget v0, p0, Ld/m;->e:I

    mul-int/lit16 v0, v0, 0x800

    iput v0, p0, Ld/m;->f:I

    .line 18
    :cond_8
    iget-object v0, p0, Ld/m;->d:Lf/d;

    invoke-virtual {v0}, Lf/d;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    iget-object v0, p0, Ld/m;->a:Ld/h;

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Thumbnails"

    invoke-virtual {v0, v1, v2}, Ld/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 20
    iget v0, p0, Ld/m;->f:I

    iget v1, p0, Ld/m;->e:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    iput v0, p0, Ld/m;->f:I

    :cond_9
    :goto_0
    return-void
.end method

.method public h(Lc/d;Ljava/io/OutputStream;Lf/d;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ld/b;

    invoke-direct {v0, p2}, Ld/b;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Ld/m;->b:Ld/b;

    .line 2
    new-instance p2, Ljava/io/OutputStreamWriter;

    iget-object v0, p0, Ld/m;->b:Ld/b;

    invoke-virtual {p3}, Lf/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p2, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    .line 3
    check-cast p1, Ld/h;

    iput-object p1, p0, Ld/m;->a:Ld/h;

    .line 4
    iput-object p3, p0, Ld/m;->d:Lf/d;

    .line 5
    invoke-virtual {p3}, Lf/d;->r()I

    move-result p1

    iput p1, p0, Ld/m;->f:I

    .line 6
    new-instance p1, Ljava/io/OutputStreamWriter;

    iget-object p2, p0, Ld/m;->b:Ld/b;

    invoke-virtual {p3}, Lf/d;->k()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p1, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    .line 7
    invoke-virtual {p0}, Ld/m;->d()V

    .line 8
    invoke-direct {p0}, Ld/m;->i()Ljava/lang/String;

    move-result-object p1

    .line 9
    iget-object p2, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p0, p2}, Ld/m;->a(I)V

    .line 11
    invoke-direct {p0, p1}, Ld/m;->u(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Ld/m;->c:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 13
    iget-object p0, p0, Ld/m;->b:Ld/b;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 14
    :catch_0
    new-instance p0, Lc/c;

    const/4 p1, 0x0

    const-string p2, "Error writing to the OutputStream"

    invoke-direct {p0, p2, p1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
