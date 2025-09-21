.class La0/c;
.super Ljava/lang/Object;
.source "DataCacheGenerator.java"

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
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx/f;",
            ">;"
        }
    .end annotation
.end field

.field private final b:La0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/g<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:La0/f$a;

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
    invoke-virtual {p1}, La0/g;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, La0/c;-><init>(Ljava/util/List;La0/g;La0/f$a;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;La0/g;La0/f$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lx/f;",
            ">;",
            "La0/g<",
            "*>;",
            "La0/f$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, La0/c;->d:I

    .line 4
    iput-object p1, p0, La0/c;->a:Ljava/util/List;

    .line 5
    iput-object p2, p0, La0/c;->b:La0/g;

    .line 6
    iput-object p3, p0, La0/c;->c:La0/f$a;

    return-void
.end method

.method private a()Z
    .locals 1

    iget v0, p0, La0/c;->k:I

    iget-object p0, p0, La0/c;->g:Ljava/util/List;

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
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, La0/c;->g:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, La0/c;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, La0/c;->l:Le0/n$a;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 3
    invoke-direct {p0}, La0/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, La0/c;->g:Ljava/util/List;

    iget v3, p0, La0/c;->k:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, La0/c;->k:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le0/n;

    .line 5
    iget-object v3, p0, La0/c;->m:Ljava/io/File;

    iget-object v4, p0, La0/c;->b:La0/g;

    .line 6
    invoke-virtual {v4}, La0/g;->s()I

    move-result v4

    iget-object v5, p0, La0/c;->b:La0/g;

    invoke-virtual {v5}, La0/g;->f()I

    move-result v5

    iget-object v6, p0, La0/c;->b:La0/g;

    invoke-virtual {v6}, La0/g;->k()Lx/i;

    move-result-object v6

    .line 7
    invoke-interface {v0, v3, v4, v5, v6}, Le0/n;->b(Ljava/lang/Object;IILx/i;)Le0/n$a;

    move-result-object v0

    iput-object v0, p0, La0/c;->l:Le0/n$a;

    .line 8
    iget-object v0, p0, La0/c;->l:Le0/n$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, La0/c;->b:La0/g;

    iget-object v3, p0, La0/c;->l:Le0/n$a;

    iget-object v3, v3, Le0/n$a;->c:Ly/d;

    invoke-interface {v3}, Ly/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, La0/g;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, La0/c;->l:Le0/n$a;

    iget-object v0, v0, Le0/n$a;->c:Ly/d;

    iget-object v1, p0, La0/c;->b:La0/g;

    invoke-virtual {v1}, La0/g;->l()Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ly/d;->e(Lcom/bumptech/glide/f;Ly/d$a;)V

    move v1, v2

    goto :goto_1

    :cond_3
    return v1

    .line 10
    :cond_4
    :goto_2
    iget v0, p0, La0/c;->d:I

    add-int/2addr v0, v2

    iput v0, p0, La0/c;->d:I

    .line 11
    iget-object v2, p0, La0/c;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return v1

    .line 12
    :cond_5
    iget-object v0, p0, La0/c;->a:Ljava/util/List;

    iget v2, p0, La0/c;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/f;

    .line 13
    new-instance v2, La0/d;

    iget-object v3, p0, La0/c;->b:La0/g;

    invoke-virtual {v3}, La0/g;->o()Lx/f;

    move-result-object v3

    invoke-direct {v2, v0, v3}, La0/d;-><init>(Lx/f;Lx/f;)V

    .line 14
    iget-object v3, p0, La0/c;->b:La0/g;

    invoke-virtual {v3}, La0/g;->d()Lc0/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lc0/a;->a(Lx/f;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, La0/c;->m:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 15
    iput-object v0, p0, La0/c;->f:Lx/f;

    .line 16
    iget-object v0, p0, La0/c;->b:La0/g;

    invoke-virtual {v0, v2}, La0/g;->j(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, La0/c;->g:Ljava/util/List;

    .line 17
    iput v1, p0, La0/c;->k:I

    goto/16 :goto_0
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, La0/c;->c:La0/f$a;

    iget-object v1, p0, La0/c;->f:Lx/f;

    iget-object p0, p0, La0/c;->l:Le0/n$a;

    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    sget-object v2, Lx/a;->c:Lx/a;

    invoke-interface {v0, v1, p1, p0, v2}, La0/f$a;->h(Lx/f;Ljava/lang/Exception;Ly/d;Lx/a;)V

    return-void
.end method

.method public cancel()V
    .locals 0

    .line 1
    iget-object p0, p0, La0/c;->l:Le0/n$a;

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Le0/n$a;->c:Ly/d;

    invoke-interface {p0}, Ly/d;->cancel()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, La0/c;->c:La0/f$a;

    iget-object v1, p0, La0/c;->f:Lx/f;

    iget-object v2, p0, La0/c;->l:Le0/n$a;

    iget-object v3, v2, Le0/n$a;->c:Ly/d;

    sget-object v4, Lx/a;->c:Lx/a;

    iget-object v5, p0, La0/c;->f:Lx/f;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, La0/f$a;->a(Lx/f;Ljava/lang/Object;Ly/d;Lx/a;Lx/f;)V

    return-void
.end method
