.class public Lh/h;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# instance fields
.field private final a:Lh/x;

.field private final b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lp/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh/q;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/h;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lm/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lp/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/graphics/Rect;

.field private k:F

.field private l:F

.field private m:F

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lh/x;

    invoke-direct {v0}, Lh/x;-><init>()V

    iput-object v0, p0, Lh/h;->a:Lh/x;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lh/h;->b:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lh/h;->o:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lt/d;->c(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lh/h;->b:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lh/h;->j:Landroid/graphics/Rect;

    return-object p0
.end method

.method public c()Landroidx/collection/SparseArrayCompat;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SparseArrayCompat<",
            "Lm/d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lh/h;->g:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method public d()F
    .locals 2

    invoke-virtual {p0}, Lh/h;->e()F

    move-result v0

    iget p0, p0, Lh/h;->m:F

    div-float/2addr v0, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p0

    float-to-long v0, v0

    long-to-float p0, v0

    return p0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lh/h;->l:F

    iget p0, p0, Lh/h;->k:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Lh/h;->l:F

    return p0
.end method

.method public g()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm/c;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lh/h;->e:Ljava/util/Map;

    return-object p0
.end method

.method public h(F)F
    .locals 1

    iget v0, p0, Lh/h;->k:F

    iget p0, p0, Lh/h;->l:F

    invoke-static {v0, p0, p1}, Lt/g;->i(FFF)F

    move-result p0

    return p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Lh/h;->m:F

    return p0
.end method

.method public j()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh/q;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lh/h;->d:Ljava/util/Map;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lp/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lh/h;->i:Ljava/util/List;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Lm/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lh/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lh/h;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm/h;

    .line 3
    invoke-virtual {v2, p1}, Lm/h;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public m()I
    .locals 0

    iget p0, p0, Lh/h;->o:I

    return p0
.end method

.method public n()Lh/x;
    .locals 0

    iget-object p0, p0, Lh/h;->a:Lh/x;

    return-object p0
.end method

.method public o(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lp/e;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lh/h;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public p()F
    .locals 0

    iget p0, p0, Lh/h;->k:F

    return p0
.end method

.method public q()Z
    .locals 0

    iget-boolean p0, p0, Lh/h;->n:Z

    return p0
.end method

.method public r(I)V
    .locals 1

    iget v0, p0, Lh/h;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lh/h;->o:I

    return-void
.end method

.method public s(Landroid/graphics/Rect;FFFLjava/util/List;Landroidx/collection/LongSparseArray;Ljava/util/Map;Ljava/util/Map;Landroidx/collection/SparseArrayCompat;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "FFF",
            "Ljava/util/List<",
            "Lp/e;",
            ">;",
            "Landroidx/collection/LongSparseArray<",
            "Lp/e;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lp/e;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lh/q;",
            ">;",
            "Landroidx/collection/SparseArrayCompat<",
            "Lm/d;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lm/c;",
            ">;",
            "Ljava/util/List<",
            "Lm/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lh/h;->j:Landroid/graphics/Rect;

    .line 2
    iput p2, p0, Lh/h;->k:F

    .line 3
    iput p3, p0, Lh/h;->l:F

    .line 4
    iput p4, p0, Lh/h;->m:F

    .line 5
    iput-object p5, p0, Lh/h;->i:Ljava/util/List;

    .line 6
    iput-object p6, p0, Lh/h;->h:Landroidx/collection/LongSparseArray;

    .line 7
    iput-object p7, p0, Lh/h;->c:Ljava/util/Map;

    .line 8
    iput-object p8, p0, Lh/h;->d:Ljava/util/Map;

    .line 9
    iput-object p9, p0, Lh/h;->g:Landroidx/collection/SparseArrayCompat;

    .line 10
    iput-object p10, p0, Lh/h;->e:Ljava/util/Map;

    .line 11
    iput-object p11, p0, Lh/h;->f:Ljava/util/List;

    return-void
.end method

.method public t(J)Lp/e;
    .locals 0

    iget-object p0, p0, Lh/h;->h:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp/e;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lh/h;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp/e;

    const-string v2, "\t"

    .line 3
    invoke-virtual {v1, v2}, Lp/e;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Z)V
    .locals 0

    iput-boolean p1, p0, Lh/h;->n:Z

    return-void
.end method

.method public v(Z)V
    .locals 0

    iget-object p0, p0, Lh/h;->a:Lh/x;

    invoke-virtual {p0, p1}, Lh/x;->b(Z)V

    return-void
.end method
