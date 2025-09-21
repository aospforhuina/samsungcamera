.class Ll0/g;
.super Ljava/lang/Object;
.source "GifFrameLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll0/g$d;,
        Ll0/g$a;,
        Ll0/g$c;,
        Ll0/g$b;
    }
.end annotation


# instance fields
.field private final a:Lw/a;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll0/g$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/bumptech/glide/j;

.field private final e:Lb0/d;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ll0/g$a;

.field private k:Z

.field private l:Ll0/g$a;

.field private m:Landroid/graphics/Bitmap;

.field private n:Lx/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ll0/g$a;

.field private p:Ll0/g$d;

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method constructor <init>(Lb0/d;Lcom/bumptech/glide/j;Lw/a;Landroid/os/Handler;Lcom/bumptech/glide/i;Lx/m;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb0/d;",
            "Lcom/bumptech/glide/j;",
            "Lw/a;",
            "Landroid/os/Handler;",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ll0/g;->c:Ljava/util/List;

    .line 7
    iput-object p2, p0, Ll0/g;->d:Lcom/bumptech/glide/j;

    if-nez p4, :cond_0

    .line 8
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Ll0/g$c;

    invoke-direct {v0, p0}, Ll0/g$c;-><init>(Ll0/g;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 9
    :cond_0
    iput-object p1, p0, Ll0/g;->e:Lb0/d;

    .line 10
    iput-object p4, p0, Ll0/g;->b:Landroid/os/Handler;

    .line 11
    iput-object p5, p0, Ll0/g;->i:Lcom/bumptech/glide/i;

    .line 12
    iput-object p3, p0, Ll0/g;->a:Lw/a;

    .line 13
    invoke-virtual {p0, p6, p7}, Ll0/g;->o(Lx/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/b;Lw/a;IILx/m;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lw/a;",
            "II",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->f()Lb0/d;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->t(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->h()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/b;->t(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-static {p1, p3, p4}, Ll0/g;->i(Lcom/bumptech/glide/j;II)Lcom/bumptech/glide/i;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Ll0/g;-><init>(Lb0/d;Lcom/bumptech/glide/j;Lw/a;Landroid/os/Handler;Lcom/bumptech/glide/i;Lx/m;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static g()Lx/f;
    .locals 3

    new-instance v0, Lt0/b;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static i(Lcom/bumptech/glide/j;II)Lcom/bumptech/glide/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/j;",
            "II)",
            "Lcom/bumptech/glide/i<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/j;->l()Lcom/bumptech/glide/i;

    move-result-object p0

    sget-object v0, La0/j;->b:La0/j;

    .line 2
    invoke-static {v0}, Lq0/f;->j0(La0/j;)Lq0/f;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lq0/a;->h0(Z)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/f;

    .line 4
    invoke-virtual {v0, v1}, Lq0/a;->b0(Z)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/f;

    .line 5
    invoke-virtual {v0, p1, p2}, Lq0/a;->S(II)Lq0/a;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->j0(Lq0/a;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method private l()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Ll0/g;->f:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ll0/g;->g:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-boolean v0, p0, Ll0/g;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Ll0/g;->o:Ll0/g$a;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lu0/j;->a(ZLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Ll0/g;->a:Lw/a;

    invoke-interface {v0}, Lw/a;->f()V

    .line 5
    iput-boolean v2, p0, Ll0/g;->h:Z

    .line 6
    :cond_2
    iget-object v0, p0, Ll0/g;->o:Ll0/g$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Ll0/g;->o:Ll0/g$a;

    .line 8
    invoke-virtual {p0, v0}, Ll0/g;->m(Ll0/g$a;)V

    return-void

    .line 9
    :cond_3
    iput-boolean v1, p0, Ll0/g;->g:Z

    .line 10
    iget-object v0, p0, Ll0/g;->a:Lw/a;

    invoke-interface {v0}, Lw/a;->d()I

    move-result v0

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 12
    iget-object v0, p0, Ll0/g;->a:Lw/a;

    invoke-interface {v0}, Lw/a;->b()V

    .line 13
    new-instance v0, Ll0/g$a;

    iget-object v3, p0, Ll0/g;->b:Landroid/os/Handler;

    iget-object v4, p0, Ll0/g;->a:Lw/a;

    invoke-interface {v4}, Lw/a;->g()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Ll0/g$a;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Ll0/g;->l:Ll0/g$a;

    .line 14
    iget-object v0, p0, Ll0/g;->i:Lcom/bumptech/glide/i;

    invoke-static {}, Ll0/g;->g()Lx/f;

    move-result-object v1

    invoke-static {v1}, Lq0/f;->k0(Lx/f;)Lq0/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->j0(Lq0/a;)Lcom/bumptech/glide/i;

    move-result-object v0

    iget-object v1, p0, Ll0/g;->a:Lw/a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->v0(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object v0

    iget-object p0, p0, Ll0/g;->l:Ll0/g$a;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/i;->q0(Lr0/h;)Lr0/h;

    :cond_4
    :goto_1
    return-void
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll0/g;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Ll0/g;->e:Lb0/d;

    invoke-interface {v1, v0}, Lb0/d;->c(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Ll0/g;->m:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll0/g;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll0/g;->f:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ll0/g;->k:Z

    .line 4
    invoke-direct {p0}, Ll0/g;->l()V

    return-void
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ll0/g;->f:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-direct {p0}, Ll0/g;->n()V

    .line 3
    invoke-direct {p0}, Ll0/g;->q()V

    .line 4
    iget-object v0, p0, Ll0/g;->j:Ll0/g$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Ll0/g;->d:Lcom/bumptech/glide/j;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->n(Lr0/h;)V

    .line 6
    iput-object v1, p0, Ll0/g;->j:Ll0/g$a;

    .line 7
    :cond_0
    iget-object v0, p0, Ll0/g;->l:Ll0/g$a;

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Ll0/g;->d:Lcom/bumptech/glide/j;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->n(Lr0/h;)V

    .line 9
    iput-object v1, p0, Ll0/g;->l:Ll0/g$a;

    .line 10
    :cond_1
    iget-object v0, p0, Ll0/g;->o:Ll0/g$a;

    if-eqz v0, :cond_2

    .line 11
    iget-object v2, p0, Ll0/g;->d:Lcom/bumptech/glide/j;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/j;->n(Lr0/h;)V

    .line 12
    iput-object v1, p0, Ll0/g;->o:Ll0/g$a;

    .line 13
    :cond_2
    iget-object v0, p0, Ll0/g;->a:Lw/a;

    invoke-interface {v0}, Lw/a;->clear()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Ll0/g;->k:Z

    return-void
.end method

.method b()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Ll0/g;->a:Lw/a;

    invoke-interface {p0}, Lw/a;->getData()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ll0/g;->j:Ll0/g$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ll0/g$a;->k()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ll0/g;->m:Landroid/graphics/Bitmap;

    :goto_0
    return-object p0
.end method

.method d()I
    .locals 0

    iget-object p0, p0, Ll0/g;->j:Ll0/g$a;

    if-eqz p0, :cond_0

    iget p0, p0, Ll0/g$a;->f:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Ll0/g;->m:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method f()I
    .locals 0

    iget-object p0, p0, Ll0/g;->a:Lw/a;

    invoke-interface {p0}, Lw/a;->c()I

    move-result p0

    return p0
.end method

.method h()I
    .locals 0

    iget p0, p0, Ll0/g;->s:I

    return p0
.end method

.method j()I
    .locals 1

    iget-object v0, p0, Ll0/g;->a:Lw/a;

    invoke-interface {v0}, Lw/a;->h()I

    move-result v0

    iget p0, p0, Ll0/g;->q:I

    add-int/2addr v0, p0

    return v0
.end method

.method k()I
    .locals 0

    iget p0, p0, Ll0/g;->r:I

    return p0
.end method

.method m(Ll0/g$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll0/g;->p:Ll0/g$d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ll0/g$d;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ll0/g;->g:Z

    .line 4
    iget-boolean v0, p0, Ll0/g;->k:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Ll0/g;->b:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 6
    :cond_1
    iget-boolean v0, p0, Ll0/g;->f:Z

    if-nez v0, :cond_2

    .line 7
    iput-object p1, p0, Ll0/g;->o:Ll0/g$a;

    return-void

    .line 8
    :cond_2
    invoke-virtual {p1}, Ll0/g$a;->k()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0}, Ll0/g;->n()V

    .line 10
    iget-object v0, p0, Ll0/g;->j:Ll0/g$a;

    .line 11
    iput-object p1, p0, Ll0/g;->j:Ll0/g$a;

    .line 12
    iget-object p1, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 13
    iget-object v2, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll0/g$b;

    .line 14
    invoke-interface {v2}, Ll0/g$b;->a()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 15
    iget-object p1, p0, Ll0/g;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 16
    :cond_4
    invoke-direct {p0}, Ll0/g;->l()V

    return-void
.end method

.method o(Lx/m;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/m<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/m;

    iput-object v0, p0, Ll0/g;->n:Lx/m;

    .line 2
    invoke-static {p2}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Ll0/g;->m:Landroid/graphics/Bitmap;

    .line 3
    iget-object v0, p0, Ll0/g;->i:Lcom/bumptech/glide/i;

    new-instance v1, Lq0/f;

    invoke-direct {v1}, Lq0/f;-><init>()V

    invoke-virtual {v1, p1}, Lq0/a;->e0(Lx/m;)Lq0/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/i;->j0(Lq0/a;)Lcom/bumptech/glide/i;

    move-result-object p1

    iput-object p1, p0, Ll0/g;->i:Lcom/bumptech/glide/i;

    .line 4
    invoke-static {p2}, Lu0/k;->g(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Ll0/g;->q:I

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Ll0/g;->r:I

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Ll0/g;->s:I

    return-void
.end method

.method r(Ll0/g$b;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ll0/g;->k:Z

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 4
    iget-object v1, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Ll0/g;->p()V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot subscribe twice in a row"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method s(Ll0/g$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Ll0/g;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Ll0/g;->q()V

    :cond_0
    return-void
.end method
