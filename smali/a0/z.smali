.class La0/z;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements La0/f;
.implements La0/f$a;


# instance fields
.field private final a:La0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/g<",
            "*>;"
        }
    .end annotation
.end field

.field private final b:La0/f$a;

.field private c:I

.field private d:La0/c;

.field private f:Ljava/lang/Object;

.field private volatile g:Le0/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private k:La0/d;


# direct methods
.method constructor <init>(La0/g;La0/f$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/g<",
            "*>;",
            "La0/f$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La0/z;->a:La0/g;

    .line 3
    iput-object p2, p0, La0/z;->b:La0/f$a;

    return-void
.end method

.method private c(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    .line 1
    invoke-static {}, Lu0/f;->b()J

    move-result-wide v1

    .line 2
    :try_start_0
    iget-object v3, p0, La0/z;->a:La0/g;

    invoke-virtual {v3, p1}, La0/g;->p(Ljava/lang/Object;)Lx/d;

    move-result-object v3

    .line 3
    new-instance v4, La0/e;

    iget-object v5, p0, La0/z;->a:La0/g;

    .line 4
    invoke-virtual {v5}, La0/g;->k()Lx/i;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, La0/e;-><init>(Lx/d;Ljava/lang/Object;Lx/i;)V

    .line 5
    new-instance v5, La0/d;

    iget-object v6, p0, La0/z;->g:Le0/n$a;

    iget-object v6, v6, Le0/n$a;->a:Lx/f;

    iget-object v7, p0, La0/z;->a:La0/g;

    invoke-virtual {v7}, La0/g;->o()Lx/f;

    move-result-object v7

    invoke-direct {v5, v6, v7}, La0/d;-><init>(Lx/f;Lx/f;)V

    iput-object v5, p0, La0/z;->k:La0/d;

    .line 6
    iget-object v5, p0, La0/z;->a:La0/g;

    invoke-virtual {v5}, La0/g;->d()Lc0/a;

    move-result-object v5

    iget-object v6, p0, La0/z;->k:La0/d;

    invoke-interface {v5, v6, v4}, Lc0/a;->b(Lx/f;Lc0/a$b;)V

    const/4 v4, 0x2

    .line 7
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, La0/z;->k:La0/d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v1, v2}, Lu0/f;->a(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    iget-object p1, p0, La0/z;->g:Le0/n$a;

    iget-object p1, p1, Le0/n$a;->c:Ly/d;

    invoke-interface {p1}, Ly/d;->b()V

    .line 12
    new-instance p1, La0/c;

    iget-object v0, p0, La0/z;->g:Le0/n$a;

    iget-object v0, v0, Le0/n$a;->a:Lx/f;

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, La0/z;->a:La0/g;

    invoke-direct {p1, v0, v1, p0}, La0/c;-><init>(Ljava/util/List;La0/g;La0/f$a;)V

    iput-object p1, p0, La0/z;->d:La0/c;

    return-void

    :catchall_0
    move-exception p1

    .line 14
    iget-object p0, p0, La0/z;->g:Le0/n$a;

    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    invoke-interface {p0}, Ly/d;->b()V

    throw p1
.end method

.method private d()Z
    .locals 1

    iget v0, p0, La0/z;->c:I

    iget-object p0, p0, La0/z;->a:La0/g;

    invoke-virtual {p0}, La0/g;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private i(Le0/n$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/n$a<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La0/z;->g:Le0/n$a;

    iget-object v0, v0, Le0/n$a;->c:Ly/d;

    iget-object v1, p0, La0/z;->a:La0/g;

    .line 2
    invoke-virtual {v1}, La0/g;->l()Lcom/bumptech/glide/f;

    move-result-object v1

    new-instance v2, La0/z$a;

    invoke-direct {v2, p0, p1}, La0/z$a;-><init>(La0/z;Le0/n$a;)V

    .line 3
    invoke-interface {v0, v1, v2}, Ly/d;->e(Lcom/bumptech/glide/f;Ly/d$a;)V

    return-void
.end method


# virtual methods
.method public a(Lx/f;Ljava/lang/Object;Ly/d;Lx/a;Lx/f;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/f;",
            "Ljava/lang/Object;",
            "Ly/d<",
            "*>;",
            "Lx/a;",
            "Lx/f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, La0/z;->b:La0/f$a;

    iget-object p0, p0, La0/z;->g:Le0/n$a;

    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    invoke-interface {p0}, Ly/d;->d()Lx/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, La0/f$a;->a(Lx/f;Ljava/lang/Object;Ly/d;Lx/a;Lx/f;)V

    return-void
.end method

.method public b()Z
    .locals 5

    .line 1
    iget-object v0, p0, La0/z;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, La0/z;->f:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, v0}, La0/z;->c(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, La0/z;->d:La0/c;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, La0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    iput-object v1, p0, La0/z;->d:La0/c;

    .line 6
    iput-object v1, p0, La0/z;->g:Le0/n$a;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 7
    invoke-direct {p0}, La0/z;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, La0/z;->a:La0/g;

    invoke-virtual {v1}, La0/g;->g()Ljava/util/List;

    move-result-object v1

    iget v3, p0, La0/z;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, La0/z;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le0/n$a;

    iput-object v1, p0, La0/z;->g:Le0/n$a;

    .line 9
    iget-object v1, p0, La0/z;->g:Le0/n$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, La0/z;->a:La0/g;

    .line 10
    invoke-virtual {v1}, La0/g;->e()La0/j;

    move-result-object v1

    iget-object v3, p0, La0/z;->g:Le0/n$a;

    iget-object v3, v3, Le0/n$a;->c:Ly/d;

    invoke-interface {v3}, Ly/d;->d()Lx/a;

    move-result-object v3

    invoke-virtual {v1, v3}, La0/j;->c(Lx/a;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, La0/z;->a:La0/g;

    iget-object v3, p0, La0/z;->g:Le0/n$a;

    iget-object v3, v3, Le0/n$a;->c:Ly/d;

    .line 11
    invoke-interface {v3}, Ly/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, La0/g;->t(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    :cond_3
    iget-object v0, p0, La0/z;->g:Le0/n$a;

    invoke-direct {p0, v0}, La0/z;->i(Le0/n$a;)V

    move v0, v2

    goto :goto_0

    :cond_4
    return v0
.end method

.method public cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, La0/z;->g:Le0/n$a;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    invoke-interface {p0}, Ly/d;->cancel()V

    :cond_0
    return-void
.end method

.method e(Le0/n$a;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/n$a<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, La0/z;->g:Le0/n$a;

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method f(Le0/n$a;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/n$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La0/z;->a:La0/g;

    invoke-virtual {v0}, La0/g;->e()La0/j;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 2
    iget-object v1, p1, Le0/n$a;->c:Ly/d;

    invoke-interface {v1}, Ly/d;->d()Lx/a;

    move-result-object v1

    invoke-virtual {v0, v1}, La0/j;->c(Lx/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p2, p0, La0/z;->f:Ljava/lang/Object;

    .line 4
    iget-object p0, p0, La0/z;->b:La0/f$a;

    invoke-interface {p0}, La0/f$a;->k()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, La0/z;->b:La0/f$a;

    iget-object v1, p1, Le0/n$a;->a:Lx/f;

    iget-object v3, p1, Le0/n$a;->c:Ly/d;

    .line 6
    invoke-interface {v3}, Ly/d;->d()Lx/a;

    move-result-object v4

    iget-object v5, p0, La0/z;->k:La0/d;

    move-object v2, p2

    .line 7
    invoke-interface/range {v0 .. v5}, La0/f$a;->a(Lx/f;Ljava/lang/Object;Ly/d;Lx/a;Lx/f;)V

    :goto_0
    return-void
.end method

.method g(Le0/n$a;Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/n$a<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, La0/z;->b:La0/f$a;

    iget-object p0, p0, La0/z;->k:La0/d;

    iget-object p1, p1, Le0/n$a;->c:Ly/d;

    invoke-interface {p1}, Ly/d;->d()Lx/a;

    move-result-object v1

    invoke-interface {v0, p0, p2, p1, v1}, La0/f$a;->h(Lx/f;Ljava/lang/Exception;Ly/d;Lx/a;)V

    return-void
.end method

.method public h(Lx/f;Ljava/lang/Exception;Ly/d;Lx/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/f;",
            "Ljava/lang/Exception;",
            "Ly/d<",
            "*>;",
            "Lx/a;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, La0/z;->b:La0/f$a;

    iget-object p0, p0, La0/z;->g:Le0/n$a;

    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    invoke-interface {p0}, Ly/d;->d()Lx/a;

    move-result-object p0

    invoke-interface {p4, p1, p2, p3, p0}, La0/f$a;->h(Lx/f;Ljava/lang/Exception;Ly/d;Lx/a;)V

    return-void
.end method

.method public k()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
