.class public Lj/g;
.super Ljava/lang/Object;
.source "FillContent.java"

# interfaces
.implements Lj/e;
.implements Lk/a$b;
.implements Lj/k;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Lp/b;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj/m;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/airbnb/lottie/n;

.field private k:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field l:F

.field private m:Lk/c;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/n;Lp/b;Lo/o;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lj/g;->a:Landroid/graphics/Path;

    .line 3
    new-instance v1, Li/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Li/a;-><init>(I)V

    iput-object v1, p0, Lj/g;->b:Landroid/graphics/Paint;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lj/g;->f:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lj/g;->c:Lp/b;

    .line 6
    invoke-virtual {p3}, Lo/o;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lj/g;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lo/o;->f()Z

    move-result v1

    iput-boolean v1, p0, Lj/g;->e:Z

    .line 8
    iput-object p1, p0, Lj/g;->j:Lcom/airbnb/lottie/n;

    .line 9
    invoke-virtual {p2}, Lp/b;->v()Lo/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p2}, Lp/b;->v()Lo/a;

    move-result-object p1

    invoke-virtual {p1}, Lo/a;->a()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/g;->k:Lk/a;

    .line 11
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 12
    iget-object p1, p0, Lj/g;->k:Lk/a;

    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 13
    :cond_0
    invoke-virtual {p2}, Lp/b;->x()Lr/j;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    new-instance p1, Lk/c;

    invoke-virtual {p2}, Lp/b;->x()Lr/j;

    move-result-object v1

    invoke-direct {p1, p0, p2, v1}, Lk/c;-><init>(Lk/a$b;Lp/b;Lr/j;)V

    iput-object p1, p0, Lj/g;->m:Lk/c;

    .line 15
    :cond_1
    invoke-virtual {p3}, Lo/o;->b()Ln/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lo/o;->e()Ln/d;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p3}, Lo/o;->c()Landroid/graphics/Path$FillType;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 17
    invoke-virtual {p3}, Lo/o;->b()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/g;->g:Lk/a;

    .line 18
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 19
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 20
    invoke-virtual {p3}, Lo/o;->e()Ln/d;

    move-result-object p1

    invoke-virtual {p1}, Ln/d;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lj/g;->h:Lk/a;

    .line 21
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 22
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lj/g;->g:Lk/a;

    .line 24
    iput-object p1, p0, Lj/g;->h:Lk/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Lj/g;->j:Lcom/airbnb/lottie/n;

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    return-void
.end method

.method public b(Ljava/util/List;Ljava/util/List;)V
    .locals 2
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

    const/4 p1, 0x0

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/c;

    .line 3
    instance-of v1, v0, Lj/m;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lj/g;->f:Ljava/util/List;

    check-cast v0, Lj/m;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
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
    sget-object v0, Lh/u;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lj/g;->g:Lk/a;

    invoke-virtual {p0, p2}, Lk/a;->n(Lu/c;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    sget-object v0, Lh/u;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lj/g;->h:Lk/a;

    invoke-virtual {p0, p2}, Lk/a;->n(Lu/c;)V

    goto/16 :goto_0

    .line 5
    :cond_1
    sget-object v0, Lh/u;->K:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, Lj/g;->i:Lk/a;

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lj/g;->c:Lp/b;

    invoke-virtual {v0, p1}, Lp/b;->G(Lk/a;)V

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lj/g;->i:Lk/a;

    goto/16 :goto_0

    .line 9
    :cond_3
    new-instance p1, Lk/q;

    invoke-direct {p1, p2}, Lk/q;-><init>(Lu/c;)V

    iput-object p1, p0, Lj/g;->i:Lk/a;

    .line 10
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 11
    iget-object p1, p0, Lj/g;->c:Lp/b;

    iget-object p0, p0, Lj/g;->i:Lk/a;

    invoke-virtual {p1, p0}, Lp/b;->i(Lk/a;)V

    goto :goto_0

    .line 12
    :cond_4
    sget-object v0, Lh/u;->j:Ljava/lang/Float;

    if-ne p1, v0, :cond_6

    .line 13
    iget-object p1, p0, Lj/g;->k:Lk/a;

    if-eqz p1, :cond_5

    .line 14
    invoke-virtual {p1, p2}, Lk/a;->n(Lu/c;)V

    goto :goto_0

    .line 15
    :cond_5
    new-instance p1, Lk/q;

    invoke-direct {p1, p2}, Lk/q;-><init>(Lu/c;)V

    iput-object p1, p0, Lj/g;->k:Lk/a;

    .line 16
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 17
    iget-object p1, p0, Lj/g;->c:Lp/b;

    iget-object p0, p0, Lj/g;->k:Lk/a;

    invoke-virtual {p1, p0}, Lp/b;->i(Lk/a;)V

    goto :goto_0

    .line 18
    :cond_6
    sget-object v0, Lh/u;->e:Ljava/lang/Integer;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lj/g;->m:Lk/c;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0, p2}, Lk/c;->c(Lu/c;)V

    goto :goto_0

    .line 20
    :cond_7
    sget-object v0, Lh/u;->G:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lj/g;->m:Lk/c;

    if-eqz v0, :cond_8

    .line 21
    invoke-virtual {v0, p2}, Lk/c;->f(Lu/c;)V

    goto :goto_0

    .line 22
    :cond_8
    sget-object v0, Lh/u;->H:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lj/g;->m:Lk/c;

    if-eqz v0, :cond_9

    .line 23
    invoke-virtual {v0, p2}, Lk/c;->d(Lu/c;)V

    goto :goto_0

    .line 24
    :cond_9
    sget-object v0, Lh/u;->I:Ljava/lang/Float;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lj/g;->m:Lk/c;

    if-eqz v0, :cond_a

    .line 25
    invoke-virtual {v0, p2}, Lk/c;->e(Lu/c;)V

    goto :goto_0

    .line 26
    :cond_a
    sget-object v0, Lh/u;->J:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object p0, p0, Lj/g;->m:Lk/c;

    if-eqz p0, :cond_b

    .line 27
    invoke-virtual {p0, p2}, Lk/c;->g(Lu/c;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    .line 1
    iget-object p3, p0, Lj/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    move v0, p3

    .line 2
    :goto_0
    iget-object v1, p0, Lj/g;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lj/g;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lj/g;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj/m;

    invoke-interface {v2}, Lj/m;->getPath()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lj/g;->a:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 5
    iget p0, p1, Landroid/graphics/RectF;->left:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p0, p2

    iget p3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p3, p2

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p2

    invoke-virtual {p1, p0, p3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

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

    iget-object p0, p0, Lj/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method public h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lj/g;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FillContent#draw"

    .line 2
    invoke-static {v0}, Lh/c;->a(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lj/g;->g:Lk/a;

    check-cast v1, Lk/b;

    invoke-virtual {v1}, Lk/b;->p()I

    move-result v1

    int-to-float p3, p3

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p3, v2

    .line 4
    iget-object v3, p0, Lj/g;->h:Lk/a;

    invoke-virtual {v3}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr p3, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr p3, v3

    mul-float/2addr p3, v2

    float-to-int p3, p3

    .line 5
    iget-object v2, p0, Lj/g;->b:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-static {p3, v4, v3}, Lt/g;->c(III)I

    move-result p3

    shl-int/lit8 p3, p3, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr p3, v1

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p3, p0, Lj/g;->i:Lk/a;

    if-eqz p3, :cond_1

    .line 7
    iget-object v1, p0, Lj/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lk/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 8
    :cond_1
    iget-object p3, p0, Lj/g;->k:Lk/a;

    if-eqz p3, :cond_4

    .line 9
    invoke-virtual {p3}, Lk/a;->h()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, p0, Lj/g;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0

    .line 11
    :cond_2
    iget v1, p0, Lj/g;->l:F

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lj/g;->c:Lp/b;

    invoke-virtual {v1, p3}, Lp/b;->w(F)Landroid/graphics/BlurMaskFilter;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lj/g;->b:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 14
    :cond_3
    :goto_0
    iput p3, p0, Lj/g;->l:F

    .line 15
    :cond_4
    iget-object p3, p0, Lj/g;->m:Lk/c;

    if-eqz p3, :cond_5

    .line 16
    iget-object v1, p0, Lj/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p3, v1}, Lk/c;->b(Landroid/graphics/Paint;)V

    .line 17
    :cond_5
    iget-object p3, p0, Lj/g;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 18
    :goto_1
    iget-object p3, p0, Lj/g;->f:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v4, p3, :cond_6

    .line 19
    iget-object p3, p0, Lj/g;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lj/g;->f:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj/m;

    invoke-interface {v1}, Lj/m;->getPath()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_6
    iget-object p2, p0, Lj/g;->a:Landroid/graphics/Path;

    iget-object p0, p0, Lj/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 21
    invoke-static {v0}, Lh/c;->b(Ljava/lang/String;)F

    return-void
.end method
