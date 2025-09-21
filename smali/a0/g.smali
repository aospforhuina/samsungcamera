.class final La0/g;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le0/n$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/bumptech/glide/d;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private h:La0/h$e;

.field private i:Lx/i;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lx/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Lx/f;

.field private o:Lcom/bumptech/glide/f;

.field private p:La0/j;

.field private q:Z

.field private r:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/g;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    .line 2
    iput-object v0, p0, La0/g;->d:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, La0/g;->n:Lx/f;

    .line 4
    iput-object v0, p0, La0/g;->g:Ljava/lang/Class;

    .line 5
    iput-object v0, p0, La0/g;->k:Ljava/lang/Class;

    .line 6
    iput-object v0, p0, La0/g;->i:Lx/i;

    .line 7
    iput-object v0, p0, La0/g;->o:Lcom/bumptech/glide/f;

    .line 8
    iput-object v0, p0, La0/g;->j:Ljava/util/Map;

    .line 9
    iput-object v0, p0, La0/g;->p:La0/j;

    .line 10
    iget-object v0, p0, La0/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, La0/g;->l:Z

    .line 12
    iget-object v1, p0, La0/g;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 13
    iput-boolean v0, p0, La0/g;->m:Z

    return-void
.end method

.method b()Lb0/b;
    .locals 0

    iget-object p0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    invoke-virtual {p0}, Lcom/bumptech/glide/d;->b()Lb0/b;

    move-result-object p0

    return-object p0
.end method

.method c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lx/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, La0/g;->m:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La0/g;->m:Z

    .line 3
    iget-object v0, p0, La0/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    invoke-virtual {p0}, La0/g;->g()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le0/n$a;

    .line 7
    iget-object v5, p0, La0/g;->b:Ljava/util/List;

    iget-object v6, v4, Le0/n$a;->a:Lx/f;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 8
    iget-object v5, p0, La0/g;->b:Ljava/util/List;

    iget-object v6, v4, Le0/n$a;->a:Lx/f;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move v5, v2

    .line 9
    :goto_1
    iget-object v6, v4, Le0/n$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 10
    iget-object v6, p0, La0/g;->b:Ljava/util/List;

    iget-object v7, v4, Le0/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 11
    iget-object v6, p0, La0/g;->b:Ljava/util/List;

    iget-object v7, v4, Le0/n$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object p0, p0, La0/g;->b:Ljava/util/List;

    return-object p0
.end method

.method d()Lc0/a;
    .locals 0

    iget-object p0, p0, La0/g;->h:La0/h$e;

    invoke-interface {p0}, La0/h$e;->a()Lc0/a;

    move-result-object p0

    return-object p0
.end method

.method e()La0/j;
    .locals 0

    iget-object p0, p0, La0/g;->p:La0/j;

    return-object p0
.end method

.method f()I
    .locals 0

    iget p0, p0, La0/g;->f:I

    return p0
.end method

.method g()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le0/n$a<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, La0/g;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, La0/g;->l:Z

    .line 3
    iget-object v0, p0, La0/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, La0/g;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->i(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le0/n;

    .line 7
    iget-object v4, p0, La0/g;->d:Ljava/lang/Object;

    iget v5, p0, La0/g;->e:I

    iget v6, p0, La0/g;->f:I

    iget-object v7, p0, La0/g;->i:Lx/i;

    invoke-interface {v3, v4, v5, v6, v7}, Le0/n;->b(Ljava/lang/Object;IILx/i;)Le0/n$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    iget-object v4, p0, La0/g;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p0, p0, La0/g;->a:Ljava/util/List;

    return-object p0
.end method

.method h(Ljava/lang/Class;)La0/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "La0/t<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    iget-object v0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, La0/g;->g:Ljava/lang/Class;

    iget-object p0, p0, La0/g;->k:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, p0}, Lcom/bumptech/glide/h;->h(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)La0/t;

    move-result-object p0

    return-object p0
.end method

.method i()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, La0/g;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method j(Ljava/io/File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Le0/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    invoke-virtual {p0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->i(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method k()Lx/i;
    .locals 0

    iget-object p0, p0, La0/g;->i:Lx/i;

    return-object p0
.end method

.method l()Lcom/bumptech/glide/f;
    .locals 0

    iget-object p0, p0, La0/g;->o:Lcom/bumptech/glide/f;

    return-object p0
.end method

.method m()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    .line 2
    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object v0

    iget-object v1, p0, La0/g;->d:Ljava/lang/Object;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, La0/g;->g:Ljava/lang/Class;

    iget-object p0, p0, La0/g;->k:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, p0}, Lcom/bumptech/glide/h;->j(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method n(La0/v;)Lx/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "La0/v<",
            "TZ;>;)",
            "Lx/l<",
            "TZ;>;"
        }
    .end annotation

    iget-object p0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    invoke-virtual {p0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->k(La0/v;)Lx/l;

    move-result-object p0

    return-object p0
.end method

.method o()Lx/f;
    .locals 0

    iget-object p0, p0, La0/g;->n:Lx/f;

    return-object p0
.end method

.method p(Ljava/lang/Object;)Lx/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lx/d<",
            "TX;>;"
        }
    .end annotation

    iget-object p0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    invoke-virtual {p0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->m(Ljava/lang/Object;)Lx/d;

    move-result-object p0

    return-object p0
.end method

.method q()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, La0/g;->k:Ljava/lang/Class;

    return-object p0
.end method

.method r(Ljava/lang/Class;)Lx/m;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lx/m<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La0/g;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/m;

    if-nez v0, :cond_1

    .line 2
    iget-object v1, p0, La0/g;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/m;

    :cond_1
    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, La0/g;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean p0, p0, La0/g;->q:Z

    if-nez p0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missing transformation for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Lg0/c;->c()Lg0/c;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method s()I
    .locals 0

    iget p0, p0, La0/g;->e:I

    return p0
.end method

.method t(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, La0/g;->h(Ljava/lang/Class;)La0/t;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method u(Lcom/bumptech/glide/d;Ljava/lang/Object;Lx/f;IILa0/j;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lx/i;Ljava/util/Map;ZZLa0/h$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Lx/f;",
            "II",
            "La0/j;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "Lx/i;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lx/m<",
            "*>;>;ZZ",
            "La0/h$e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, La0/g;->c:Lcom/bumptech/glide/d;

    .line 2
    iput-object p2, p0, La0/g;->d:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, La0/g;->n:Lx/f;

    .line 4
    iput p4, p0, La0/g;->e:I

    .line 5
    iput p5, p0, La0/g;->f:I

    .line 6
    iput-object p6, p0, La0/g;->p:La0/j;

    .line 7
    iput-object p7, p0, La0/g;->g:Ljava/lang/Class;

    .line 8
    iput-object p14, p0, La0/g;->h:La0/h$e;

    .line 9
    iput-object p8, p0, La0/g;->k:Ljava/lang/Class;

    .line 10
    iput-object p9, p0, La0/g;->o:Lcom/bumptech/glide/f;

    .line 11
    iput-object p10, p0, La0/g;->i:Lx/i;

    .line 12
    iput-object p11, p0, La0/g;->j:Ljava/util/Map;

    .line 13
    iput-boolean p12, p0, La0/g;->q:Z

    .line 14
    iput-boolean p13, p0, La0/g;->r:Z

    return-void
.end method

.method v(La0/v;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, La0/g;->c:Lcom/bumptech/glide/d;

    invoke-virtual {p0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->n(La0/v;)Z

    move-result p0

    return p0
.end method

.method w()Z
    .locals 0

    iget-boolean p0, p0, La0/g;->r:Z

    return p0
.end method

.method x(Lx/f;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, La0/g;->g()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le0/n$a;

    .line 4
    iget-object v3, v3, Le0/n$a;->a:Lx/f;

    invoke-interface {v3, p1}, Lx/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
