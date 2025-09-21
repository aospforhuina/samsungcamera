.class public abstract Lq0/a;
.super Ljava/lang/Object;
.source "BaseRequestOptions.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lq0/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private a:I

.field private b:F

.field private c:La0/j;

.field private d:Lcom/bumptech/glide/f;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:I

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:Lx/f;

.field private q:Z

.field private r:Z

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:Lx/i;

.field private v:Ljava/util/Map;
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

.field private w:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Landroid/content/res/Resources$Theme;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lq0/a;->b:F

    .line 3
    sget-object v0, La0/j;->e:La0/j;

    iput-object v0, p0, Lq0/a;->c:La0/j;

    .line 4
    sget-object v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lq0/a;->d:Lcom/bumptech/glide/f;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lq0/a;->m:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lq0/a;->n:I

    .line 7
    iput v1, p0, Lq0/a;->o:I

    .line 8
    invoke-static {}, Lt0/a;->c()Lt0/a;

    move-result-object v1

    iput-object v1, p0, Lq0/a;->p:Lx/f;

    .line 9
    iput-boolean v0, p0, Lq0/a;->r:Z

    .line 10
    new-instance v1, Lx/i;

    invoke-direct {v1}, Lx/i;-><init>()V

    iput-object v1, p0, Lq0/a;->u:Lx/i;

    .line 11
    new-instance v1, Lu0/b;

    invoke-direct {v1}, Lu0/b;-><init>()V

    iput-object v1, p0, Lq0/a;->v:Ljava/util/Map;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lq0/a;->w:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Lq0/a;->C:Z

    return-void
.end method

.method private G(I)Z
    .locals 0

    iget p0, p0, Lq0/a;->a:I

    invoke-static {p0, p1}, Lq0/a;->H(II)Z

    move-result p0

    return p0
.end method

.method private static H(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Q(Lh0/m;Lx/m;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m;",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lq0/a;->V(Lh0/m;Lx/m;Z)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method private V(Lh0/m;Lx/m;Z)Lq0/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m;",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lq0/a;->c0(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lq0/a;->R(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lq0/a;->C:Z

    return-object p0
.end method

.method private W()Lq0/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method private X()Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->x:Z

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lq0/a;->W()Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot modify locked T, consider clone()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lx/m<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Lq0/a;->v:Ljava/util/Map;

    return-object p0
.end method

.method public final B()Z
    .locals 0

    iget-boolean p0, p0, Lq0/a;->D:Z

    return p0
.end method

.method public final C()Z
    .locals 0

    iget-boolean p0, p0, Lq0/a;->A:Z

    return p0
.end method

.method public final D()Z
    .locals 0

    iget-boolean p0, p0, Lq0/a;->m:Z

    return p0
.end method

.method public final E()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lq0/a;->G(I)Z

    move-result p0

    return p0
.end method

.method F()Z
    .locals 0

    iget-boolean p0, p0, Lq0/a;->C:Z

    return p0
.end method

.method public final I()Z
    .locals 0

    iget-boolean p0, p0, Lq0/a;->r:Z

    return p0
.end method

.method public final J()Z
    .locals 0

    iget-boolean p0, p0, Lq0/a;->q:Z

    return p0
.end method

.method public final K()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lq0/a;->G(I)Z

    move-result p0

    return p0
.end method

.method public final L()Z
    .locals 1

    iget v0, p0, Lq0/a;->o:I

    iget p0, p0, Lq0/a;->n:I

    invoke-static {v0, p0}, Lu0/k;->s(II)Z

    move-result p0

    return p0
.end method

.method public M()Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lq0/a;->x:Z

    .line 2
    invoke-direct {p0}, Lq0/a;->W()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public N()Lq0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lh0/m;->e:Lh0/m;

    new-instance v1, Lh0/i;

    invoke-direct {v1}, Lh0/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Lq0/a;->R(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public O()Lq0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lh0/m;->d:Lh0/m;

    new-instance v1, Lh0/j;

    invoke-direct {v1}, Lh0/j;-><init>()V

    invoke-direct {p0, v0, v1}, Lq0/a;->Q(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public P()Lq0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lh0/m;->c:Lh0/m;

    new-instance v1, Lh0/r;

    invoke-direct {v1}, Lh0/r;-><init>()V

    invoke-direct {p0, v0, v1}, Lq0/a;->Q(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method final R(Lh0/m;Lx/m;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m;",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq0/a;->R(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lq0/a;->i(Lh0/m;)Lq0/a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Lq0/a;->f0(Lx/m;Z)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public S(II)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq0/a;->S(II)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iput p1, p0, Lq0/a;->o:I

    .line 4
    iput p2, p0, Lq0/a;->n:I

    .line 5
    iget p1, p0, Lq0/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lq0/a;->a:I

    .line 6
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public T(I)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->T(I)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iput p1, p0, Lq0/a;->l:I

    .line 4
    iget p1, p0, Lq0/a;->a:I

    or-int/lit16 p1, p1, 0x80

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 6
    iput p1, p0, Lq0/a;->a:I

    .line 7
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public U(Lcom/bumptech/glide/f;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->U(Lcom/bumptech/glide/f;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/f;

    iput-object p1, p0, Lq0/a;->d:Lcom/bumptech/glide/f;

    .line 4
    iget p1, p0, Lq0/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lq0/a;->a:I

    .line 5
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public Y(Lx/h;Ljava/lang/Object;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lx/h<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq0/a;->Y(Lx/h;Ljava/lang/Object;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lq0/a;->u:Lx/i;

    invoke-virtual {v0, p1, p2}, Lx/i;->e(Lx/h;Ljava/lang/Object;)Lx/i;

    .line 6
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public Z(Lx/f;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->Z(Lx/f;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx/f;

    iput-object p1, p0, Lq0/a;->p:Lx/f;

    .line 4
    iget p1, p0, Lq0/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lq0/a;->a:I

    .line 5
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lq0/a;)Lq0/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->a(Lq0/a;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget v0, p1, Lq0/a;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Lq0/a;->b:F

    iput v0, p0, Lq0/a;->b:F

    .line 5
    :cond_1
    iget v0, p1, Lq0/a;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Lq0/a;->A:Z

    iput-boolean v0, p0, Lq0/a;->A:Z

    .line 7
    :cond_2
    iget v0, p1, Lq0/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Lq0/a;->D:Z

    iput-boolean v0, p0, Lq0/a;->D:Z

    .line 9
    :cond_3
    iget v0, p1, Lq0/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Lq0/a;->c:La0/j;

    iput-object v0, p0, Lq0/a;->c:La0/j;

    .line 11
    :cond_4
    iget v0, p1, Lq0/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Lq0/a;->d:Lcom/bumptech/glide/f;

    iput-object v0, p0, Lq0/a;->d:Lcom/bumptech/glide/f;

    .line 13
    :cond_5
    iget v0, p1, Lq0/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lq0/a;->H(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Lq0/a;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lq0/a;->f:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Lq0/a;->g:I

    .line 16
    iget v0, p0, Lq0/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lq0/a;->a:I

    .line 17
    :cond_6
    iget v0, p1, Lq0/a;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lq0/a;->H(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Lq0/a;->g:I

    iput v0, p0, Lq0/a;->g:I

    .line 19
    iput-object v2, p0, Lq0/a;->f:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Lq0/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lq0/a;->a:I

    .line 21
    :cond_7
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Lq0/a;->l:I

    .line 24
    iget v0, p0, Lq0/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lq0/a;->a:I

    .line 25
    :cond_8
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Lq0/a;->l:I

    iput v0, p0, Lq0/a;->l:I

    .line 27
    iput-object v2, p0, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Lq0/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lq0/a;->a:I

    .line 29
    :cond_9
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Lq0/a;->m:Z

    iput-boolean v0, p0, Lq0/a;->m:Z

    .line 31
    :cond_a
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Lq0/a;->o:I

    iput v0, p0, Lq0/a;->o:I

    .line 33
    iget v0, p1, Lq0/a;->n:I

    iput v0, p0, Lq0/a;->n:I

    .line 34
    :cond_b
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Lq0/a;->p:Lx/f;

    iput-object v0, p0, Lq0/a;->p:Lx/f;

    .line 36
    :cond_c
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Lq0/a;->w:Ljava/lang/Class;

    iput-object v0, p0, Lq0/a;->w:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Lq0/a;->s:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lq0/a;->s:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Lq0/a;->t:I

    .line 41
    iget v0, p0, Lq0/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lq0/a;->a:I

    .line 42
    :cond_e
    iget v0, p1, Lq0/a;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Lq0/a;->t:I

    iput v0, p0, Lq0/a;->t:I

    .line 44
    iput-object v2, p0, Lq0/a;->s:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Lq0/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lq0/a;->a:I

    .line 46
    :cond_f
    iget v0, p1, Lq0/a;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Lq0/a;->y:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lq0/a;->y:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Lq0/a;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Lq0/a;->r:Z

    iput-boolean v0, p0, Lq0/a;->r:Z

    .line 50
    :cond_11
    iget v0, p1, Lq0/a;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Lq0/a;->q:Z

    iput-boolean v0, p0, Lq0/a;->q:Z

    .line 52
    :cond_12
    iget v0, p1, Lq0/a;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Lq0/a;->v:Ljava/util/Map;

    iget-object v2, p1, Lq0/a;->v:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Lq0/a;->C:Z

    iput-boolean v0, p0, Lq0/a;->C:Z

    .line 55
    :cond_13
    iget v0, p1, Lq0/a;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lq0/a;->H(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Lq0/a;->B:Z

    iput-boolean v0, p0, Lq0/a;->B:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Lq0/a;->r:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Lq0/a;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget v0, p0, Lq0/a;->a:I

    and-int/lit16 v0, v0, -0x801

    .line 60
    iput-boolean v1, p0, Lq0/a;->q:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Lq0/a;->a:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lq0/a;->C:Z

    .line 63
    :cond_15
    iget v0, p0, Lq0/a;->a:I

    iget v1, p1, Lq0/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lq0/a;->a:I

    .line 64
    iget-object v0, p0, Lq0/a;->u:Lx/i;

    iget-object p1, p1, Lq0/a;->u:Lx/i;

    invoke-virtual {v0, p1}, Lx/i;->d(Lx/i;)V

    .line 65
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public a0(F)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->a0(F)Lq0/a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 3
    iput p1, p0, Lq0/a;->b:F

    .line 4
    iget p1, p0, Lq0/a;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lq0/a;->a:I

    .line 5
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->x:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lq0/a;->z:Z

    .line 4
    invoke-virtual {p0}, Lq0/a;->M()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public b0(Z)Lq0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, v1}, Lq0/a;->b0(Z)Lq0/a;

    move-result-object p0

    return-object p0

    :cond_0
    xor-int/2addr p1, v1

    .line 3
    iput-boolean p1, p0, Lq0/a;->m:Z

    .line 4
    iget p1, p0, Lq0/a;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lq0/a;->a:I

    .line 5
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public c()Lq0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lh0/m;->d:Lh0/m;

    new-instance v1, Lh0/k;

    invoke-direct {v1}, Lh0/k;-><init>()V

    invoke-virtual {p0, v0, v1}, Lq0/a;->c0(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method final c0(Lh0/m;Lx/m;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m;",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq0/a;->c0(Lh0/m;Lx/m;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lq0/a;->i(Lh0/m;)Lq0/a;

    .line 4
    invoke-virtual {p0, p2}, Lq0/a;->e0(Lx/m;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method d0(Ljava/lang/Class;Lx/m;Z)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lx/m<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lq0/a;->d0(Ljava/lang/Class;Lx/m;Z)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lq0/a;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, p0, Lq0/a;->a:I

    or-int/lit16 p1, p1, 0x800

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lq0/a;->r:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lq0/a;->a:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lq0/a;->C:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 10
    iput p1, p0, Lq0/a;->a:I

    .line 11
    iput-boolean p2, p0, Lq0/a;->q:Z

    .line 12
    :cond_1
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public e()Lq0/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/a;

    .line 2
    new-instance v1, Lx/i;

    invoke-direct {v1}, Lx/i;-><init>()V

    iput-object v1, v0, Lq0/a;->u:Lx/i;

    .line 3
    iget-object v2, p0, Lq0/a;->u:Lx/i;

    invoke-virtual {v1, v2}, Lx/i;->d(Lx/i;)V

    .line 4
    new-instance v1, Lu0/b;

    invoke-direct {v1}, Lu0/b;-><init>()V

    iput-object v1, v0, Lq0/a;->v:Ljava/util/Map;

    .line 5
    iget-object p0, p0, Lq0/a;->v:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 6
    iput-boolean p0, v0, Lq0/a;->x:Z

    .line 7
    iput-boolean p0, v0, Lq0/a;->z:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public e0(Lx/m;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lq0/a;->f0(Lx/m;Z)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lq0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lq0/a;

    .line 3
    iget v0, p1, Lq0/a;->b:F

    iget v2, p0, Lq0/a;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lq0/a;->g:I

    iget v2, p1, Lq0/a;->g:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lq0/a;->f:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lq0/a;->f:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Lu0/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lq0/a;->l:I

    iget v2, p1, Lq0/a;->l:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Lu0/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lq0/a;->t:I

    iget v2, p1, Lq0/a;->t:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lq0/a;->s:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lq0/a;->s:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Lu0/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lq0/a;->m:Z

    iget-boolean v2, p1, Lq0/a;->m:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Lq0/a;->n:I

    iget v2, p1, Lq0/a;->n:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lq0/a;->o:I

    iget v2, p1, Lq0/a;->o:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lq0/a;->q:Z

    iget-boolean v2, p1, Lq0/a;->q:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lq0/a;->r:Z

    iget-boolean v2, p1, Lq0/a;->r:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lq0/a;->A:Z

    iget-boolean v2, p1, Lq0/a;->A:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lq0/a;->B:Z

    iget-boolean v2, p1, Lq0/a;->B:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lq0/a;->c:La0/j;

    iget-object v2, p1, Lq0/a;->c:La0/j;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/a;->d:Lcom/bumptech/glide/f;

    iget-object v2, p1, Lq0/a;->d:Lcom/bumptech/glide/f;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lq0/a;->u:Lx/i;

    iget-object v2, p1, Lq0/a;->u:Lx/i;

    .line 8
    invoke-virtual {v0, v2}, Lx/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/a;->v:Ljava/util/Map;

    iget-object v2, p1, Lq0/a;->v:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/a;->w:Ljava/lang/Class;

    iget-object v2, p1, Lq0/a;->w:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/a;->p:Lx/f;

    iget-object v2, p1, Lq0/a;->p:Lx/f;

    .line 11
    invoke-static {v0, v2}, Lu0/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lq0/a;->y:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lq0/a;->y:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {p0, p1}, Lu0/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method f0(Lx/m;Z)Lq0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq0/a;->f0(Lx/m;Z)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lh0/p;

    invoke-direct {v0, p1, p2}, Lh0/p;-><init>(Lx/m;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lq0/a;->d0(Ljava/lang/Class;Lx/m;Z)Lq0/a;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lq0/a;->d0(Ljava/lang/Class;Lx/m;Z)Lq0/a;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lh0/p;->c()Lx/m;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lq0/a;->d0(Ljava/lang/Class;Lx/m;Z)Lq0/a;

    .line 7
    const-class v0, Ll0/c;

    new-instance v1, Ll0/f;

    invoke-direct {v1, p1}, Ll0/f;-><init>(Lx/m;)V

    invoke-virtual {p0, v0, v1, p2}, Lq0/a;->d0(Ljava/lang/Class;Lx/m;Z)Lq0/a;

    .line 8
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/Class;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->g(Ljava/lang/Class;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lq0/a;->w:Ljava/lang/Class;

    .line 4
    iget p1, p0, Lq0/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lq0/a;->a:I

    .line 5
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public varargs g0([Lx/m;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lx/g;

    invoke-direct {v0, p1}, Lx/g;-><init>([Lx/m;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lq0/a;->f0(Lx/m;Z)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public h(La0/j;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/j;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->h(La0/j;)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La0/j;

    iput-object p1, p0, Lq0/a;->c:La0/j;

    .line 4
    iget p1, p0, Lq0/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lq0/a;->a:I

    .line 5
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public h0(Z)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lq0/a;->z:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lq0/a;->h0(Z)Lq0/a;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iput-boolean p1, p0, Lq0/a;->D:Z

    .line 4
    iget p1, p0, Lq0/a;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lq0/a;->a:I

    .line 5
    invoke-direct {p0}, Lq0/a;->X()Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lq0/a;->b:F

    invoke-static {v0}, Lu0/k;->j(F)I

    move-result v0

    .line 2
    iget v1, p0, Lq0/a;->g:I

    invoke-static {v1, v0}, Lu0/k;->m(II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lq0/a;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 4
    iget v1, p0, Lq0/a;->l:I

    invoke-static {v1, v0}, Lu0/k;->m(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 6
    iget v1, p0, Lq0/a;->t:I

    invoke-static {v1, v0}, Lu0/k;->m(II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lq0/a;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 8
    iget-boolean v1, p0, Lq0/a;->m:Z

    invoke-static {v1, v0}, Lu0/k;->o(ZI)I

    move-result v0

    .line 9
    iget v1, p0, Lq0/a;->n:I

    invoke-static {v1, v0}, Lu0/k;->m(II)I

    move-result v0

    .line 10
    iget v1, p0, Lq0/a;->o:I

    invoke-static {v1, v0}, Lu0/k;->m(II)I

    move-result v0

    .line 11
    iget-boolean v1, p0, Lq0/a;->q:Z

    invoke-static {v1, v0}, Lu0/k;->o(ZI)I

    move-result v0

    .line 12
    iget-boolean v1, p0, Lq0/a;->r:Z

    invoke-static {v1, v0}, Lu0/k;->o(ZI)I

    move-result v0

    .line 13
    iget-boolean v1, p0, Lq0/a;->A:Z

    invoke-static {v1, v0}, Lu0/k;->o(ZI)I

    move-result v0

    .line 14
    iget-boolean v1, p0, Lq0/a;->B:Z

    invoke-static {v1, v0}, Lu0/k;->o(ZI)I

    move-result v0

    .line 15
    iget-object v1, p0, Lq0/a;->c:La0/j;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 16
    iget-object v1, p0, Lq0/a;->d:Lcom/bumptech/glide/f;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Lq0/a;->u:Lx/i;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Lq0/a;->v:Ljava/util/Map;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Lq0/a;->w:Ljava/lang/Class;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lq0/a;->p:Lx/f;

    invoke-static {v1, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object p0, p0, Lq0/a;->y:Landroid/content/res/Resources$Theme;

    invoke-static {p0, v0}, Lu0/k;->n(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public i(Lh0/m;)Lq0/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh0/m;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lh0/m;->h:Lx/h;

    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lq0/a;->Y(Lx/h;Ljava/lang/Object;)Lq0/a;

    move-result-object p0

    return-object p0
.end method

.method public final j()La0/j;
    .locals 0

    iget-object p0, p0, Lq0/a;->c:La0/j;

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lq0/a;->g:I

    return p0
.end method

.method public final l()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lq0/a;->f:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final m()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lq0/a;->s:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final n()I
    .locals 0

    iget p0, p0, Lq0/a;->t:I

    return p0
.end method

.method public final p()Z
    .locals 0

    iget-boolean p0, p0, Lq0/a;->B:Z

    return p0
.end method

.method public final q()Lx/i;
    .locals 0

    iget-object p0, p0, Lq0/a;->u:Lx/i;

    return-object p0
.end method

.method public final r()I
    .locals 0

    iget p0, p0, Lq0/a;->n:I

    return p0
.end method

.method public final s()I
    .locals 0

    iget p0, p0, Lq0/a;->o:I

    return p0
.end method

.method public final t()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lq0/a;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final u()I
    .locals 0

    iget p0, p0, Lq0/a;->l:I

    return p0
.end method

.method public final v()Lcom/bumptech/glide/f;
    .locals 0

    iget-object p0, p0, Lq0/a;->d:Lcom/bumptech/glide/f;

    return-object p0
.end method

.method public final w()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lq0/a;->w:Ljava/lang/Class;

    return-object p0
.end method

.method public final x()Lx/f;
    .locals 0

    iget-object p0, p0, Lq0/a;->p:Lx/f;

    return-object p0
.end method

.method public final y()F
    .locals 0

    iget p0, p0, Lq0/a;->b:F

    return p0
.end method

.method public final z()Landroid/content/res/Resources$Theme;
    .locals 0

    iget-object p0, p0, Lq0/a;->y:Landroid/content/res/Resources$Theme;

    return-object p0
.end method
