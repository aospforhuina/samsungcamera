.class public Lp/g;
.super Lp/b;
.source "ShapeLayer.java"


# instance fields
.field private final D:Lj/d;

.field private final E:Lp/c;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/n;Lp/e;Lp/c;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lp/b;-><init>(Lcom/airbnb/lottie/n;Lp/e;)V

    .line 2
    iput-object p3, p0, Lp/g;->E:Lp/c;

    .line 3
    new-instance p3, Lo/p;

    invoke-virtual {p2}, Lp/e;->n()Ljava/util/List;

    move-result-object p2

    const-string v0, "__container"

    const/4 v1, 0x0

    invoke-direct {p3, v0, p2, v1}, Lo/p;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    .line 4
    new-instance p2, Lj/d;

    invoke-direct {p2, p1, p0, p3}, Lj/d;-><init>(Lcom/airbnb/lottie/n;Lp/b;Lo/p;)V

    iput-object p2, p0, Lp/g;->D:Lj/d;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lj/d;->b(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected H(Lm/e;ILjava/util/List;Lm/e;)V
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

    iget-object p0, p0, Lp/g;->D:Lj/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Lj/d;->g(Lm/e;ILjava/util/List;Lm/e;)V

    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lp/b;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 2
    iget-object p2, p0, Lp/g;->D:Lj/d;

    iget-object p0, p0, Lp/b;->o:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, p0, p3}, Lj/d;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method t(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 0

    iget-object p0, p0, Lp/g;->D:Lj/d;

    invoke-virtual {p0, p1, p2, p3}, Lj/d;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public v()Lo/a;
    .locals 1

    .line 1
    invoke-super {p0}, Lp/b;->v()Lo/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p0, p0, Lp/g;->E:Lp/c;

    invoke-virtual {p0}, Lp/b;->v()Lo/a;

    move-result-object p0

    return-object p0
.end method

.method public x()Lr/j;
    .locals 1

    .line 1
    invoke-super {p0}, Lp/b;->x()Lr/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object p0, p0, Lp/g;->E:Lp/c;

    invoke-virtual {p0}, Lp/b;->x()Lr/j;

    move-result-object p0

    return-object p0
.end method
