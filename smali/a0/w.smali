.class La0/w;
.super Ljava/lang/Object;
.source "ResourceCacheGenerator.java"

# interfaces
.implements La0/f;
.implements Ly/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La0/f;",
        "Ly/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:La0/f$a;

.field private final b:La0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/g<",
            "*>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I

.field private f:Lx/f;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le0/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field private k:I

.field private volatile l:Le0/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private m:Ljava/io/File;

.field private n:La0/x;


# direct methods
.method constructor <init>(La0/g;La0/f$a;)V
    .locals 1
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

    const/4 v0, -0x1

    .line 2
    iput v0, p0, La0/w;->d:I

    .line 3
    iput-object p1, p0, La0/w;->b:La0/g;

    .line 4
    iput-object p2, p0, La0/w;->a:La0/f$a;

    return-void
.end method

.method private a()Z
    .locals 1

    iget v0, p0, La0/w;->k:I

    iget-object p0, p0, La0/w;->g:Ljava/util/List;

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


# virtual methods
.method public b()Z
    .locals 14

    .line 1
    iget-object v0, p0, La0/w;->b:La0/g;

    invoke-virtual {v0}, La0/g;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, La0/w;->b:La0/g;

    invoke-virtual {v1}, La0/g;->m()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    const-class v0, Ljava/io/File;

    iget-object v1, p0, La0/w;->b:La0/g;

    invoke-virtual {v1}, La0/g;->q()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find any load path from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La0/w;->b:La0/g;

    .line 7
    invoke-virtual {v2}, La0/g;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La0/w;->b:La0/g;

    .line 8
    invoke-virtual {p0}, La0/g;->q()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_2
    :goto_0
    iget-object v3, p0, La0/w;->g:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-direct {p0}, La0/w;->a()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, La0/w;->l:Le0/n$a;

    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 11
    invoke-direct {p0}, La0/w;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, La0/w;->g:Ljava/util/List;

    iget v1, p0, La0/w;->k:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, La0/w;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le0/n;

    .line 13
    iget-object v1, p0, La0/w;->m:Ljava/io/File;

    iget-object v3, p0, La0/w;->b:La0/g;

    .line 14
    invoke-virtual {v3}, La0/g;->s()I

    move-result v3

    iget-object v5, p0, La0/w;->b:La0/g;

    invoke-virtual {v5}, La0/g;->f()I

    move-result v5

    iget-object v6, p0, La0/w;->b:La0/g;

    invoke-virtual {v6}, La0/g;->k()Lx/i;

    move-result-object v6

    .line 15
    invoke-interface {v0, v1, v3, v5, v6}, Le0/n;->b(Ljava/lang/Object;IILx/i;)Le0/n$a;

    move-result-object v0

    iput-object v0, p0, La0/w;->l:Le0/n$a;

    .line 16
    iget-object v0, p0, La0/w;->l:Le0/n$a;

    if-eqz v0, :cond_4

    iget-object v0, p0, La0/w;->b:La0/g;

    iget-object v1, p0, La0/w;->l:Le0/n$a;

    iget-object v1, v1, Le0/n$a;->c:Ly/d;

    invoke-interface {v1}, Ly/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, La0/g;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    iget-object v0, p0, La0/w;->l:Le0/n$a;

    iget-object v0, v0, Le0/n$a;->c:Ly/d;

    iget-object v1, p0, La0/w;->b:La0/g;

    invoke-virtual {v1}, La0/g;->l()Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ly/d;->e(Lcom/bumptech/glide/f;Ly/d$a;)V

    move v2, v4

    goto :goto_1

    :cond_5
    return v2

    .line 18
    :cond_6
    :goto_2
    iget v3, p0, La0/w;->d:I

    add-int/2addr v3, v4

    iput v3, p0, La0/w;->d:I

    .line 19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_8

    .line 20
    iget v3, p0, La0/w;->c:I

    add-int/2addr v3, v4

    iput v3, p0, La0/w;->c:I

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_7

    return v2

    .line 22
    :cond_7
    iput v2, p0, La0/w;->d:I

    .line 23
    :cond_8
    iget v3, p0, La0/w;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx/f;

    .line 24
    iget v4, p0, La0/w;->d:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 25
    iget-object v4, p0, La0/w;->b:La0/g;

    invoke-virtual {v4, v11}, La0/g;->r(Ljava/lang/Class;)Lx/m;

    move-result-object v10

    .line 26
    new-instance v13, La0/x;

    iget-object v4, p0, La0/w;->b:La0/g;

    .line 27
    invoke-virtual {v4}, La0/g;->b()Lb0/b;

    move-result-object v5

    iget-object v4, p0, La0/w;->b:La0/g;

    .line 28
    invoke-virtual {v4}, La0/g;->o()Lx/f;

    move-result-object v7

    iget-object v4, p0, La0/w;->b:La0/g;

    .line 29
    invoke-virtual {v4}, La0/g;->s()I

    move-result v8

    iget-object v4, p0, La0/w;->b:La0/g;

    .line 30
    invoke-virtual {v4}, La0/g;->f()I

    move-result v9

    iget-object v4, p0, La0/w;->b:La0/g;

    .line 31
    invoke-virtual {v4}, La0/g;->k()Lx/i;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, La0/x;-><init>(Lb0/b;Lx/f;Lx/f;IILx/m;Ljava/lang/Class;Lx/i;)V

    iput-object v13, p0, La0/w;->n:La0/x;

    .line 32
    iget-object v4, p0, La0/w;->b:La0/g;

    invoke-virtual {v4}, La0/g;->d()Lc0/a;

    move-result-object v4

    iget-object v5, p0, La0/w;->n:La0/x;

    invoke-interface {v4, v5}, Lc0/a;->a(Lx/f;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, La0/w;->m:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 33
    iput-object v3, p0, La0/w;->f:Lx/f;

    .line 34
    iget-object v3, p0, La0/w;->b:La0/g;

    invoke-virtual {v3, v4}, La0/g;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, La0/w;->g:Ljava/util/List;

    .line 35
    iput v2, p0, La0/w;->k:I

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, La0/w;->a:La0/f$a;

    iget-object v1, p0, La0/w;->n:La0/x;

    iget-object p0, p0, La0/w;->l:Le0/n$a;

    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    sget-object v2, Lx/a;->d:Lx/a;

    invoke-interface {v0, v1, p1, p0, v2}, La0/f$a;->h(Lx/f;Ljava/lang/Exception;Ly/d;Lx/a;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, La0/w;->l:Le0/n$a;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    invoke-interface {p0}, Ly/d;->cancel()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, La0/w;->a:La0/f$a;

    iget-object v1, p0, La0/w;->f:Lx/f;

    iget-object v2, p0, La0/w;->l:Le0/n$a;

    iget-object v3, v2, Le0/n$a;->c:Ly/d;

    sget-object v4, Lx/a;->d:Lx/a;

    iget-object v5, p0, La0/w;->n:La0/x;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, La0/f$a;->a(Lx/f;Ljava/lang/Object;Ly/d;Lx/a;Lx/f;)V

    return-void
.end method
