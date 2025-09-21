.class public Lj/p;
.super Ljava/lang/Object;
.source "RepeaterContent.java"

# interfaces
.implements Lj/e;
.implements Lj/m;
.implements Lj/j;
.implements Lk/a$b;
.implements Lj/k;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lcom/airbnb/lottie/n;

.field private final d:Lp/b;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lk/p;

.field private j:Lj/d;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/n;Lp/b;Lo/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lj/p;->a:Landroid/graphics/Matrix;

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lj/p;->b:Landroid/graphics/Path;

    .line 4
    iput-object p1, p0, Lj/p;->c:Lcom/airbnb/lottie/n;

    .line 5
    iput-object p2, p0, Lj/p;->d:Lp/b;

    .line 6
    invoke-virtual {p3}, Lo/l;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj/p;->e:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lo/l;->f()Z

    move-result p1

    iput-boolean p1, p0, Lj/p;->f:Z

    .line 8
    invoke-virtual {p3}, Lo/l;->b()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/p;->g:Lk/a;

    .line 9
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 10
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 11
    invoke-virtual {p3}, Lo/l;->d()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/p;->h:Lk/a;

    .line 12
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 13
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 14
    invoke-virtual {p3}, Lo/l;->e()Ln/l;

    move-result-object p1

    invoke-virtual {p1}, Ln/l;->b()Lk/p;

    move-result-object p1

    iput-object p1, p0, Lj/p;->i:Lk/p;

    .line 15
    invoke-virtual {p1, p2}, Lk/p;->a(Lp/b;)V

    .line 16
    invoke-virtual {p1, p0}, Lk/p;->b(Lk/a$b;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lj/p;->c:Lcom/airbnb/lottie/n;

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 0
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

    iget-object p0, p0, Lj/p;->j:Lj/d;

    invoke-virtual {p0, p1, p2}, Lj/d;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public d(Ljava/lang/Object;Lu/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lu/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/p;->i:Lk/p;

    invoke-virtual {v0, p1, p2}, Lk/p;->c(Ljava/lang/Object;Lu/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lh/u;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p0, p0, Lj/p;->g:Lk/a;

    invoke-virtual {p0, p2}, Lk/a;->n(Lu/c;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lh/u;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p0, p0, Lj/p;->h:Lk/a;

    invoke-virtual {p0, p2}, Lk/a;->n(Lu/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    iget-object p0, p0, Lj/p;->j:Lj/d;

    invoke-virtual {p0, p1, p2, p3}, Lj/d;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public f(Ljava/util/ListIterator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lj/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lj/p;->j:Lj/d;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/c;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 8
    new-instance p1, Lj/d;

    iget-object v2, p0, Lj/p;->c:Lcom/airbnb/lottie/n;

    iget-object v3, p0, Lj/p;->d:Lp/b;

    iget-boolean v5, p0, Lj/p;->f:Z

    const/4 v7, 0x0

    const-string v4, "Repeater"

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lj/d;-><init>(Lcom/airbnb/lottie/n;Lp/b;Ljava/lang/String;ZLjava/util/List;Ln/l;)V

    iput-object p1, p0, Lj/p;->j:Lj/d;

    return-void
.end method

.method public g(Lm/e;ILjava/util/List;Lm/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e;",
            "I",
            "Ljava/util/List<",
            "Lm/e;",
            ">;",
            "Lm/e;",
            ")V"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lt/g;->k(Lm/e;ILjava/util/List;Lm/e;Lj/k;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj/p;->e:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 6

    .line 1
    iget-object v0, p0, Lj/p;->j:Lj/d;

    invoke-virtual {v0}, Lj/d;->getPath()Landroid/graphics/Path;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lj/p;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-object v1, p0, Lj/p;->g:Lk/a;

    invoke-virtual {v1}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 4
    iget-object v2, p0, Lj/p;->h:Lk/a;

    invoke-virtual {v2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 5
    iget-object v3, p0, Lj/p;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lj/p;->i:Lk/p;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lk/p;->g(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v3, p0, Lj/p;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lj/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lj/p;->b:Landroid/graphics/Path;

    return-object p0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lj/p;->g:Lk/a;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2
    iget-object v1, p0, Lj/p;->h:Lk/a;

    invoke-virtual {v1}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 3
    iget-object v2, p0, Lj/p;->i:Lk/p;

    invoke-virtual {v2}, Lk/p;->i()Lk/a;

    move-result-object v2

    invoke-virtual {v2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    .line 4
    iget-object v4, p0, Lj/p;->i:Lk/p;

    invoke-virtual {v4}, Lk/p;->e()Lk/a;

    move-result-object v4

    invoke-virtual {v4}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 5
    iget-object v5, p0, Lj/p;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v5, p0, Lj/p;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lj/p;->i:Lk/p;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lk/p;->g(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    .line 7
    invoke-static {v2, v4, v7}, Lt/g;->i(FFF)F

    move-result v6

    mul-float/2addr v5, v6

    .line 8
    iget-object v6, p0, Lj/p;->j:Lj/d;

    iget-object v7, p0, Lj/p;->a:Landroid/graphics/Matrix;

    float-to-int v5, v5

    invoke-virtual {v6, p1, v7, v5}, Lj/d;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
