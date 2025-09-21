.class public Lj/t;
.super Lj/a;
.source "StrokeContent.java"


# instance fields
.field private final r:Lp/b;

.field private final s:Ljava/lang/String;

.field private final t:Z

.field private final u:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/n;Lp/b;Lo/r;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lo/r;->b()Lo/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lo/r$b;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 2
    invoke-virtual {p3}, Lo/r;->e()Lo/r$c;

    move-result-object v0

    invoke-virtual {v0}, Lo/r$c;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    invoke-virtual {p3}, Lo/r;->g()F

    move-result v6

    invoke-virtual {p3}, Lo/r;->i()Ln/d;

    move-result-object v7

    .line 3
    invoke-virtual {p3}, Lo/r;->j()Ln/b;

    move-result-object v8

    invoke-virtual {p3}, Lo/r;->f()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Lo/r;->d()Ln/b;

    move-result-object v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 4
    invoke-direct/range {v1 .. v10}, Lj/a;-><init>(Lcom/airbnb/lottie/n;Lp/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLn/d;Ln/b;Ljava/util/List;Ln/b;)V

    .line 5
    iput-object p2, p0, Lj/t;->r:Lp/b;

    .line 6
    invoke-virtual {p3}, Lo/r;->h()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj/t;->s:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lo/r;->k()Z

    move-result p1

    iput-boolean p1, p0, Lj/t;->t:Z

    .line 8
    invoke-virtual {p3}, Lo/r;->c()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/t;->u:Lk/a;

    .line 9
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 10
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    return-void
.end method


# virtual methods
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
    invoke-super {p0, p1, p2}, Lj/a;->d(Ljava/lang/Object;Lu/c;)V

    .line 2
    sget-object v0, Lh/u;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p0, p0, Lj/t;->u:Lk/a;

    invoke-virtual {p0, p2}, Lk/a;->n(Lu/c;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lh/u;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    .line 5
    iget-object p1, p0, Lj/t;->v:Lk/a;

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lj/t;->r:Lp/b;

    invoke-virtual {v0, p1}, Lp/b;->G(Lk/a;)V

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lj/t;->v:Lk/a;

    goto :goto_0

    .line 8
    :cond_2
    new-instance p1, Lk/q;

    invoke-direct {p1, p2}, Lk/q;-><init>(Lu/c;)V

    iput-object p1, p0, Lj/t;->v:Lk/a;

    .line 9
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 10
    iget-object p1, p0, Lj/t;->r:Lp/b;

    iget-object p0, p0, Lj/t;->u:Lk/a;

    invoke-virtual {p1, p0}, Lp/b;->i(Lk/a;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lj/t;->s:Ljava/lang/String;

    return-object p0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/t;->t:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lj/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lj/t;->u:Lk/a;

    check-cast v1, Lk/b;

    invoke-virtual {v1}, Lk/b;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lj/t;->v:Lk/a;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lj/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lj/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
