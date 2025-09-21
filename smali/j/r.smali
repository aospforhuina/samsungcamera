.class public Lj/r;
.super Ljava/lang/Object;
.source "ShapeContent.java"

# interfaces
.implements Lj/m;
.implements Lk/a$b;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/airbnb/lottie/n;

.field private final e:Lk/m;

.field private f:Z

.field private final g:Lj/b;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/n;Lp/b;Lo/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lj/r;->a:Landroid/graphics/Path;

    .line 3
    new-instance v0, Lj/b;

    invoke-direct {v0}, Lj/b;-><init>()V

    iput-object v0, p0, Lj/r;->g:Lj/b;

    .line 4
    invoke-virtual {p3}, Lo/q;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj/r;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p3}, Lo/q;->d()Z

    move-result v0

    iput-boolean v0, p0, Lj/r;->c:Z

    .line 6
    iput-object p1, p0, Lj/r;->d:Lcom/airbnb/lottie/n;

    .line 7
    invoke-virtual {p3}, Lo/q;->c()Ln/h;

    move-result-object p1

    invoke-virtual {p1}, Ln/h;->d()Lk/m;

    move-result-object p1

    iput-object p1, p0, Lj/r;->e:Lk/m;

    .line 8
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 9
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lj/r;->f:Z

    .line 2
    iget-object p0, p0, Lj/r;->d:Lcom/airbnb/lottie/n;

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lj/r;->d()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/c;",
            ">;",
            "Ljava/util/List<",
            "Lj/c;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/c;

    .line 3
    instance-of v2, v1, Lj/u;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lj/u;

    .line 4
    invoke-virtual {v2}, Lj/u;->j()Lo/s$a;

    move-result-object v3

    sget-object v4, Lo/s$a;->a:Lo/s$a;

    if-ne v3, v4, :cond_0

    .line 5
    iget-object v1, p0, Lj/r;->g:Lj/b;

    invoke-virtual {v1, v2}, Lj/b;->a(Lj/u;)V

    .line 6
    invoke-virtual {v2, p0}, Lj/u;->d(Lk/a$b;)V

    goto :goto_1

    .line 7
    :cond_0
    instance-of v2, v1, Lj/s;

    if-eqz v2, :cond_2

    if-nez p2, :cond_1

    .line 8
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    :cond_1
    check-cast v1, Lj/s;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    iget-object p0, p0, Lj/r;->e:Lk/m;

    invoke-virtual {p0, p2}, Lk/m;->q(Ljava/util/List;)V

    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lj/r;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lj/r;->a:Landroid/graphics/Path;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lj/r;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-boolean v0, p0, Lj/r;->c:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lj/r;->f:Z

    .line 6
    iget-object p0, p0, Lj/r;->a:Landroid/graphics/Path;

    return-object p0

    .line 7
    :cond_1
    iget-object v0, p0, Lj/r;->e:Lk/m;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 8
    iget-object p0, p0, Lj/r;->a:Landroid/graphics/Path;

    return-object p0

    .line 9
    :cond_2
    iget-object v2, p0, Lj/r;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v0}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 10
    iget-object v0, p0, Lj/r;->a:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 11
    iget-object v0, p0, Lj/r;->g:Lj/b;

    iget-object v2, p0, Lj/r;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lj/b;->b(Landroid/graphics/Path;)V

    .line 12
    iput-boolean v1, p0, Lj/r;->f:Z

    .line 13
    iget-object p0, p0, Lj/r;->a:Landroid/graphics/Path;

    return-object p0
.end method
