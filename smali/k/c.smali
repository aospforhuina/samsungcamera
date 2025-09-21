.class public Lk/c;
.super Ljava/lang/Object;
.source "DropShadowKeyframeAnimation.java"

# interfaces
.implements Lk/a$b;


# instance fields
.field private final a:Lk/a$b;

.field private final b:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lk/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Lk/a$b;Lp/b;Lr/j;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lk/c;->g:Z

    .line 3
    iput-object p1, p0, Lk/c;->a:Lk/a$b;

    .line 4
    invoke-virtual {p3}, Lr/j;->a()Ln/a;

    move-result-object p1

    invoke-virtual {p1}, Ln/a;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lk/c;->b:Lk/a;

    .line 5
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 6
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 7
    invoke-virtual {p3}, Lr/j;->d()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lk/c;->c:Lk/a;

    .line 8
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 9
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 10
    invoke-virtual {p3}, Lr/j;->b()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lk/c;->d:Lk/a;

    .line 11
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 12
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 13
    invoke-virtual {p3}, Lr/j;->c()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lk/c;->e:Lk/a;

    .line 14
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 15
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    .line 16
    invoke-virtual {p3}, Lr/j;->e()Ln/b;

    move-result-object p1

    invoke-virtual {p1}, Ln/b;->a()Lk/a;

    move-result-object p1

    iput-object p1, p0, Lk/c;->f:Lk/a;

    .line 17
    invoke-virtual {p1, p0}, Lk/a;->a(Lk/a$b;)V

    .line 18
    invoke-virtual {p2, p1}, Lp/b;->i(Lk/a;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lk/c;->g:Z

    .line 2
    iget-object p0, p0, Lk/c;->a:Lk/a$b;

    invoke-interface {p0}, Lk/a$b;->a()V

    return-void
.end method

.method public b(Landroid/graphics/Paint;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lk/c;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk/c;->g:Z

    .line 3
    iget-object v0, p0, Lk/c;->d:Lk/a;

    invoke-virtual {v0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, v2

    .line 4
    iget-object v2, p0, Lk/c;->e:Lk/a;

    invoke-virtual {v2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v3, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v4

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v2

    .line 7
    iget-object v1, p0, Lk/c;->b:Lk/a;

    invoke-virtual {v1}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    iget-object v2, p0, Lk/c;->c:Lk/a;

    invoke-virtual {v2}, Lk/a;->h()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v4, v5, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 10
    iget-object p0, p0, Lk/c;->f:Lk/a;

    invoke-virtual {p0}, Lk/a;->h()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 11
    invoke-virtual {p1, p0, v3, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method public c(Lu/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lk/c;->b:Lk/a;

    invoke-virtual {p0, p1}, Lk/a;->n(Lu/c;)V

    return-void
.end method

.method public d(Lu/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lk/c;->d:Lk/a;

    invoke-virtual {p0, p1}, Lk/a;->n(Lu/c;)V

    return-void
.end method

.method public e(Lu/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lk/c;->e:Lk/a;

    invoke-virtual {p0, p1}, Lk/a;->n(Lu/c;)V

    return-void
.end method

.method public f(Lu/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p0, p0, Lk/c;->c:Lk/a;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lk/a;->n(Lu/c;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lk/c;->c:Lk/a;

    new-instance v1, Lk/c$a;

    invoke-direct {v1, p0, p1}, Lk/c$a;-><init>(Lk/c;Lu/c;)V

    invoke-virtual {v0, v1}, Lk/a;->n(Lu/c;)V

    return-void
.end method

.method public g(Lu/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lk/c;->f:Lk/a;

    invoke-virtual {p0, p1}, Lk/a;->n(Lu/c;)V

    return-void
.end method
