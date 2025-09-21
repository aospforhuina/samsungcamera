.class public Ld/h;
.super Ljava/lang/Object;
.source "XMPMetaImpl.java"

# interfaces
.implements Lc/d;


# instance fields
.field private a:Ld/i;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ld/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld/h;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ld/i;

    invoke-direct {v1, v0, v0, v0}, Ld/i;-><init>(Ljava/lang/String;Ljava/lang/String;Lf/c;)V

    iput-object v1, p0, Ld/h;->a:Ld/i;

    return-void
.end method

.method public constructor <init>(Ld/i;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ld/h;->b:Ljava/lang/String;

    .line 6
    iput-object p1, p0, Ld/h;->a:Ld/i;

    return-void
.end method

.method private a(Ld/i;ILjava/lang/String;Lf/c;Z)V
    .locals 4

    .line 1
    new-instance v0, Ld/i;

    const-string v1, "[]"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld/i;-><init>(Ljava/lang/String;Lf/c;)V

    .line 2
    invoke-static {p4, p3}, Ld/j;->o(Lf/c;Ljava/lang/Object;)Lf/c;

    move-result-object p4

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1}, Ld/i;->w()I

    move-result v2

    if-eqz p5, :cond_0

    add-int/2addr v2, v1

    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    move p2, v2

    :cond_1
    if-gt v1, p2, :cond_3

    if-gt p2, v2, :cond_3

    if-nez p5, :cond_2

    .line 4
    invoke-virtual {p1, p2}, Ld/i;->L(I)V

    .line 5
    :cond_2
    invoke-virtual {p1, p2, v0}, Ld/i;->a(ILd/i;)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, v0, p3, p4, p1}, Ld/h;->e(Ld/i;Ljava/lang/Object;Lf/c;Z)V

    return-void

    .line 7
    :cond_3
    new-instance p0, Lc/c;

    const/16 p1, 0x68

    const-string p2, "Array index out of bounds"

    invoke-direct {p0, p2, p1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Ld/d;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Ld/d;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {p1, p2}, Le/c;->a(Ljava/lang/String;Ljava/lang/String;)Le/b;

    move-result-object p1

    .line 4
    iget-object p0, p0, Ld/h;->a:Ld/i;

    const/4 p2, 0x0

    invoke-static {p0, p1, v0, p2}, Ld/j;->d(Ld/i;Le/b;ZLf/c;)Ld/i;

    move-result-object p0
    :try_end_0
    .catch Lc/c; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public c()Ld/i;
    .locals 0

    iget-object p0, p0, Ld/h;->a:Ld/i;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Ld/h;->a:Ld/i;

    invoke-virtual {p0}, Ld/i;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld/i;

    .line 2
    new-instance v0, Ld/h;

    invoke-direct {v0, p0}, Ld/h;-><init>(Ld/i;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ld/h;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf/c;)V

    return-void
.end method

.method e(Ld/i;Ljava/lang/Object;Lf/c;Z)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p1}, Ld/i;->n()V

    .line 2
    :cond_0
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object p0

    invoke-virtual {p0, p3}, Lf/c;->s(Lf/c;)V

    .line 3
    invoke-virtual {p1}, Ld/i;->y()Lf/c;

    move-result-object p0

    invoke-virtual {p0}, Lf/c;->m()Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-static {p1, p2}, Ld/j;->n(Ld/i;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Lc/c;

    const/16 p1, 0x66

    const-string p2, "Composite nodes can\'t have values"

    invoke-direct {p0, p2, p1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 7
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ld/i;->N()V

    :goto_1
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Lf/c;Ljava/lang/String;Lf/c;)V
    .locals 7

    .line 1
    invoke-static {p1}, Ld/d;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Ld/d;->a(Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 3
    new-instance p3, Lf/c;

    invoke-direct {p3}, Lf/c;-><init>()V

    .line 4
    :cond_0
    invoke-virtual {p3}, Lf/c;->n()Z

    move-result v0

    const/16 v1, 0x67

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 5
    invoke-static {p3, v0}, Ld/j;->o(Lf/c;Ljava/lang/Object;)Lf/c;

    move-result-object p3

    .line 6
    invoke-static {p1, p2}, Le/c;->a(Ljava/lang/String;Ljava/lang/String;)Le/b;

    move-result-object p1

    .line 7
    iget-object p2, p0, Ld/h;->a:Ld/i;

    const/4 v2, 0x0

    invoke-static {p2, p1, v2, v0}, Ld/j;->d(Ld/i;Le/b;ZLf/c;)Ld/i;

    move-result-object p2

    const/16 v0, 0x66

    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p2}, Ld/i;->y()Lf/c;

    move-result-object p1

    invoke-virtual {p1}, Lf/c;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 9
    :cond_1
    new-instance p0, Lc/c;

    const-string p1, "The named property is not an array"

    invoke-direct {p0, p1, v0}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 10
    :cond_2
    invoke-virtual {p3}, Lf/c;->i()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    iget-object p2, p0, Ld/h;->a:Ld/i;

    const/4 v1, 0x1

    invoke-static {p2, p1, v1, p3}, Ld/j;->d(Ld/i;Le/b;ZLf/c;)Ld/i;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_0

    :goto_1
    const/4 v3, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    .line 12
    invoke-direct/range {v1 .. v6}, Ld/h;->a(Ld/i;ILjava/lang/String;Lf/c;Z)V

    return-void

    .line 13
    :cond_3
    new-instance p0, Lc/c;

    const-string p1, "Failure creating array node"

    invoke-direct {p0, p1, v0}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Lc/c;

    const-string p1, "Explicit arrayOptions required to create new array"

    invoke-direct {p0, p1, v1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Lc/c;

    const-string p1, "Only array form flags allowed for arrayOptions"

    invoke-direct {p0, p1, v1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lf/c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ld/d;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Ld/d;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {p4, p3}, Ld/j;->o(Lf/c;Ljava/lang/Object;)Lf/c;

    move-result-object p4

    .line 4
    invoke-static {p1, p2}, Le/c;->a(Ljava/lang/String;Ljava/lang/String;)Le/b;

    move-result-object p1

    .line 5
    iget-object p2, p0, Ld/h;->a:Ld/i;

    const/4 v0, 0x1

    invoke-static {p2, p1, v0, p4}, Ld/j;->d(Ld/i;Le/b;ZLf/c;)Ld/i;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p0, p1, p3, p4, p2}, Ld/h;->e(Ld/i;Ljava/lang/Object;Lf/c;Z)V

    return-void

    .line 7
    :cond_0
    new-instance p0, Lc/c;

    const/16 p1, 0x66

    const-string p2, "Specified property does not exist"

    invoke-direct {p0, p2, p1}, Lc/c;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lf/c;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ld/d;->d(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Ld/d;->e(Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lc/f;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1, p2, p5, p6}, Ld/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lf/c;)V

    return-void
.end method

.method public i()V
    .locals 0

    iget-object p0, p0, Ld/h;->a:Ld/i;

    invoke-virtual {p0}, Ld/i;->T()V

    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ld/h;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lf/c;)V

    return-void
.end method
