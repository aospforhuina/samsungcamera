.class public final Lq0/h;
.super Ljava/lang/Object;
.source "SingleRequest.java"

# interfaces
.implements Lq0/c;
.implements Lr0/g;
.implements Lq0/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq0/c;",
        "Lr0/g;",
        "Lq0/g;"
    }
.end annotation


# static fields
.field private static final D:Z


# instance fields
.field private A:I

.field private B:Z

.field private C:Ljava/lang/RuntimeException;

.field private final a:Ljava/lang/String;

.field private final b:Lv0/c;

.field private final c:Ljava/lang/Object;

.field private final d:Lq0/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final e:Lq0/d;

.field private final f:Landroid/content/Context;

.field private final g:Lcom/bumptech/glide/d;

.field private final h:Ljava/lang/Object;

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final j:Lq0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/a<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:I

.field private final m:Lcom/bumptech/glide/f;

.field private final n:Lr0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr0/h<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq0/e<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final p:Ls0/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls0/c<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/Executor;

.field private r:La0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/v<",
            "TR;>;"
        }
    .end annotation
.end field

.field private s:La0/k$d;

.field private t:J

.field private volatile u:La0/k;

.field private v:Lq0/h$a;

.field private w:Landroid/graphics/drawable/Drawable;

.field private x:Landroid/graphics/drawable/Drawable;

.field private y:Landroid/graphics/drawable/Drawable;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Request"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lq0/h;->D:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lq0/a;IILcom/bumptech/glide/f;Lr0/h;Lq0/e;Ljava/util/List;Lq0/d;La0/k;Ls0/c;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lq0/a<",
            "*>;II",
            "Lcom/bumptech/glide/f;",
            "Lr0/h<",
            "TR;>;",
            "Lq0/e<",
            "TR;>;",
            "Ljava/util/List<",
            "Lq0/e<",
            "TR;>;>;",
            "Lq0/d;",
            "La0/k;",
            "Ls0/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v1, Lq0/h;->D:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lq0/h;->a:Ljava/lang/String;

    .line 3
    invoke-static {}, Lv0/c;->a()Lv0/c;

    move-result-object v1

    iput-object v1, v0, Lq0/h;->b:Lv0/c;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lq0/h;->c:Ljava/lang/Object;

    move-object v1, p1

    .line 5
    iput-object v1, v0, Lq0/h;->f:Landroid/content/Context;

    move-object v1, p2

    .line 6
    iput-object v1, v0, Lq0/h;->g:Lcom/bumptech/glide/d;

    move-object v2, p4

    .line 7
    iput-object v2, v0, Lq0/h;->h:Ljava/lang/Object;

    move-object v2, p5

    .line 8
    iput-object v2, v0, Lq0/h;->i:Ljava/lang/Class;

    move-object v2, p6

    .line 9
    iput-object v2, v0, Lq0/h;->j:Lq0/a;

    move v2, p7

    .line 10
    iput v2, v0, Lq0/h;->k:I

    move v2, p8

    .line 11
    iput v2, v0, Lq0/h;->l:I

    move-object v2, p9

    .line 12
    iput-object v2, v0, Lq0/h;->m:Lcom/bumptech/glide/f;

    move-object v2, p10

    .line 13
    iput-object v2, v0, Lq0/h;->n:Lr0/h;

    move-object v2, p11

    .line 14
    iput-object v2, v0, Lq0/h;->d:Lq0/e;

    move-object v2, p12

    .line 15
    iput-object v2, v0, Lq0/h;->o:Ljava/util/List;

    move-object/from16 v2, p13

    .line 16
    iput-object v2, v0, Lq0/h;->e:Lq0/d;

    move-object/from16 v2, p14

    .line 17
    iput-object v2, v0, Lq0/h;->u:La0/k;

    move-object/from16 v2, p15

    .line 18
    iput-object v2, v0, Lq0/h;->p:Ls0/c;

    move-object/from16 v2, p16

    .line 19
    iput-object v2, v0, Lq0/h;->q:Ljava/util/concurrent/Executor;

    .line 20
    sget-object v2, Lq0/h$a;->a:Lq0/h$a;

    iput-object v2, v0, Lq0/h;->v:Lq0/h$a;

    .line 21
    iget-object v2, v0, Lq0/h;->C:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/bumptech/glide/d;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lq0/h;->C:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method private A(La0/v;Ljava/lang/Object;Lx/a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "TR;>;TR;",
            "Lx/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq0/h;->s()Z

    move-result v6

    .line 2
    sget-object v0, Lq0/h$a;->d:Lq0/h$a;

    iput-object v0, p0, Lq0/h;->v:Lq0/h$a;

    .line 3
    iput-object p1, p0, Lq0/h;->r:La0/v;

    .line 4
    iget-object p1, p0, Lq0/h;->g:Lcom/bumptech/glide/d;

    invoke-virtual {p1}, Lcom/bumptech/glide/d;->g()I

    move-result p1

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Finished loading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lq0/h;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " with size ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lq0/h;->z:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lq0/h;->A:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lq0/h;->t:J

    .line 7
    invoke-static {v0, v1}, Lu0/f;->a(J)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Glide"

    .line 8
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lq0/h;->B:Z

    const/4 v7, 0x0

    .line 10
    :try_start_0
    iget-object v0, p0, Lq0/h;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v9, v7

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/e;

    .line 12
    iget-object v2, p0, Lq0/h;->h:Ljava/lang/Object;

    iget-object v3, p0, Lq0/h;->n:Lr0/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 13
    invoke-interface/range {v0 .. v5}, Lq0/e;->b(Ljava/lang/Object;Ljava/lang/Object;Lr0/h;Lx/a;Z)Z

    move-result v0

    or-int/2addr v9, v0

    goto :goto_0

    :cond_1
    move v9, v7

    .line 14
    :cond_2
    iget-object v0, p0, Lq0/h;->d:Lq0/e;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lq0/h;->h:Ljava/lang/Object;

    iget-object v3, p0, Lq0/h;->n:Lr0/h;

    move-object v1, p2

    move-object v4, p3

    move v5, v6

    .line 15
    invoke-interface/range {v0 .. v5}, Lq0/e;->b(Ljava/lang/Object;Ljava/lang/Object;Lr0/h;Lx/a;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move p1, v7

    :goto_1
    or-int/2addr p1, v9

    if-nez p1, :cond_4

    .line 16
    iget-object p1, p0, Lq0/h;->p:Ls0/c;

    invoke-interface {p1, p3, v6}, Ls0/c;->a(Lx/a;Z)Ls0/b;

    move-result-object p1

    .line 17
    iget-object p3, p0, Lq0/h;->n:Lr0/h;

    invoke-interface {p3, p2, p1}, Lr0/h;->d(Ljava/lang/Object;Ls0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_4
    iput-boolean v7, p0, Lq0/h;->B:Z

    .line 19
    invoke-direct {p0}, Lq0/h;->x()V

    return-void

    :catchall_0
    move-exception p1

    .line 20
    iput-boolean v7, p0, Lq0/h;->B:Z

    throw p1
.end method

.method private B()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lq0/h;->m()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lq0/h;->h:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0}, Lq0/h;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0}, Lq0/h;->p()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lq0/h;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    :cond_3
    iget-object p0, p0, Lq0/h;->n:Lr0/h;

    invoke-interface {p0, v0}, Lr0/h;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private k()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lq0/h;->B:Z

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private l()Z
    .locals 1

    iget-object v0, p0, Lq0/h;->e:Lq0/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lq0/d;->f(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private m()Z
    .locals 1

    iget-object v0, p0, Lq0/h;->e:Lq0/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lq0/d;->a(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private n()Z
    .locals 1

    iget-object v0, p0, Lq0/h;->e:Lq0/d;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lq0/d;->h(Lq0/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private o()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lq0/h;->k()V

    .line 2
    iget-object v0, p0, Lq0/h;->b:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->c()V

    .line 3
    iget-object v0, p0, Lq0/h;->n:Lr0/h;

    invoke-interface {v0, p0}, Lr0/h;->a(Lr0/g;)V

    .line 4
    iget-object v0, p0, Lq0/h;->s:La0/k$d;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, La0/k$d;->a()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lq0/h;->s:La0/k$d;

    :cond_0
    return-void
.end method

.method private p()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/h;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->l()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lq0/h;->w:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->k()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->k()I

    move-result v0

    invoke-direct {p0, v0}, Lq0/h;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lq0/h;->w:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object p0, p0, Lq0/h;->w:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private q()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/h;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lq0/h;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->n()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->n()I

    move-result v0

    invoke-direct {p0, v0}, Lq0/h;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lq0/h;->y:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object p0, p0, Lq0/h;->y:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private r()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->t()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lq0/h;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->u()I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->u()I

    move-result v0

    invoke-direct {p0, v0}, Lq0/h;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lq0/h;->x:Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object p0, p0, Lq0/h;->x:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private s()Z
    .locals 0

    iget-object p0, p0, Lq0/h;->e:Lq0/d;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lq0/d;->getRoot()Lq0/d;

    move-result-object p0

    invoke-interface {p0}, Lq0/d;->b()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private t(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->z()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v0}, Lq0/a;->z()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lq0/h;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 2
    :goto_0
    iget-object p0, p0, Lq0/h;->g:Lcom/bumptech/glide/d;

    invoke-static {p0, p1, v0}, Lj0/a;->a(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private u(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lq0/h;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Request"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static v(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method private w()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/h;->e:Lq0/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lq0/d;->c(Lq0/c;)V

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/h;->e:Lq0/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lq0/d;->k(Lq0/c;)V

    :cond_0
    return-void
.end method

.method public static y(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lq0/a;IILcom/bumptech/glide/f;Lr0/h;Lq0/e;Ljava/util/List;Lq0/d;La0/k;Ls0/c;Ljava/util/concurrent/Executor;)Lq0/h;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lq0/a<",
            "*>;II",
            "Lcom/bumptech/glide/f;",
            "Lr0/h<",
            "TR;>;",
            "Lq0/e<",
            "TR;>;",
            "Ljava/util/List<",
            "Lq0/e<",
            "TR;>;>;",
            "Lq0/d;",
            "La0/k;",
            "Ls0/c<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lq0/h<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    new-instance v17, Lq0/h;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lq0/h;-><init>(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lq0/a;IILcom/bumptech/glide/f;Lr0/h;Lq0/e;Ljava/util/List;Lq0/d;La0/k;Ls0/c;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private z(La0/q;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lq0/h;->b:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->c()V

    .line 2
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lq0/h;->C:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v1}, La0/q;->k(Ljava/lang/Exception;)V

    .line 4
    iget-object v1, p0, Lq0/h;->g:Lcom/bumptech/glide/d;

    invoke-virtual {v1}, Lcom/bumptech/glide/d;->g()I

    move-result v1

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq0/h;->h:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lq0/h;->z:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lq0/h;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    .line 6
    invoke-virtual {p1, p2}, La0/q;->g(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lq0/h;->s:La0/k$d;

    .line 8
    sget-object p2, Lq0/h$a;->f:Lq0/h$a;

    iput-object p2, p0, Lq0/h;->v:Lq0/h$a;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p0, Lq0/h;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 10
    :try_start_1
    iget-object v2, p0, Lq0/h;->o:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lq0/e;

    .line 12
    iget-object v5, p0, Lq0/h;->h:Ljava/lang/Object;

    iget-object v6, p0, Lq0/h;->n:Lr0/h;

    .line 13
    invoke-direct {p0}, Lq0/h;->s()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lq0/e;->a(La0/q;Ljava/lang/Object;Lr0/h;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    .line 14
    :cond_2
    iget-object v2, p0, Lq0/h;->d:Lq0/e;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lq0/h;->h:Ljava/lang/Object;

    iget-object v5, p0, Lq0/h;->n:Lr0/h;

    .line 15
    invoke-direct {p0}, Lq0/h;->s()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, Lq0/e;->a(La0/q;Ljava/lang/Object;Lr0/h;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    or-int p1, v3, p2

    if-nez p1, :cond_4

    .line 16
    invoke-direct {p0}, Lq0/h;->B()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_4
    :try_start_2
    iput-boolean v1, p0, Lq0/h;->B:Z

    .line 18
    invoke-direct {p0}, Lq0/h;->w()V

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 20
    iput-boolean v1, p0, Lq0/h;->B:Z

    throw p1

    :catchall_1
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public a(La0/q;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lq0/h;->z(La0/q;I)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lq0/h;->v:Lq0/h$a;

    sget-object v1, Lq0/h$a;->d:Lq0/h$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c(La0/v;Lx/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "*>;",
            "Lx/a;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq0/h;->b:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->c()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3
    :try_start_1
    iput-object v0, p0, Lq0/h;->s:La0/k$d;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, La0/q;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lq0/h;->i:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inside, but instead got null."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, La0/q;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lq0/h;->a(La0/q;)V

    .line 6
    monitor-exit v1

    return-void

    .line 7
    :cond_0
    invoke-interface {p1}, La0/v;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v3, p0, Lq0/h;->i:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lq0/h;->n()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    .line 10
    :try_start_2
    iput-object v0, p0, Lq0/h;->r:La0/v;

    .line 11
    sget-object p2, Lq0/h$a;->d:Lq0/h$a;

    iput-object p2, p0, Lq0/h;->v:Lq0/h$a;

    .line 12
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    iget-object p0, p0, Lq0/h;->u:La0/k;

    invoke-virtual {p0, p1}, La0/k;->k(La0/v;)V

    return-void

    .line 14
    :cond_2
    :try_start_3
    invoke-direct {p0, p1, v2, p2}, Lq0/h;->A(La0/v;Ljava/lang/Object;Lx/a;)V

    .line 15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 16
    :cond_3
    :goto_0
    :try_start_4
    iput-object v0, p0, Lq0/h;->r:La0/v;

    .line 17
    new-instance p2, La0/q;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lq0/h;->i:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "} inside Resource{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "}."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    const-string v2, ""

    goto :goto_2

    :cond_5
    const-string v2, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    .line 19
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, La0/q;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p2}, Lq0/h;->a(La0/q;)V

    .line 21
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 22
    iget-object p0, p0, Lq0/h;->u:La0/k;

    invoke-virtual {p0, p1}, La0/k;->k(La0/v;)V

    return-void

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 23
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_6

    .line 24
    iget-object p0, p0, Lq0/h;->u:La0/k;

    invoke-virtual {p0, v0}, La0/k;->k(La0/v;)V

    :cond_6
    throw p1
.end method

.method public clear()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/h;->k()V

    .line 3
    iget-object v1, p0, Lq0/h;->b:Lv0/c;

    invoke-virtual {v1}, Lv0/c;->c()V

    .line 4
    iget-object v1, p0, Lq0/h;->v:Lq0/h$a;

    sget-object v2, Lq0/h$a;->g:Lq0/h$a;

    if-ne v1, v2, :cond_0

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lq0/h;->o()V

    .line 7
    iget-object v1, p0, Lq0/h;->r:La0/v;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 8
    iput-object v3, p0, Lq0/h;->r:La0/v;

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 9
    :goto_0
    invoke-direct {p0}, Lq0/h;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 10
    iget-object v3, p0, Lq0/h;->n:Lr0/h;

    invoke-direct {p0}, Lq0/h;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Lr0/h;->j(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    iput-object v2, p0, Lq0/h;->v:Lq0/h$a;

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 13
    iget-object p0, p0, Lq0/h;->u:La0/k;

    invoke-virtual {p0, v1}, La0/k;->k(La0/v;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public d(Lq0/c;)Z
    .locals 14

    .line 1
    instance-of v0, p1, Lq0/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v2, p0, Lq0/h;->k:I

    .line 4
    iget v3, p0, Lq0/h;->l:I

    .line 5
    iget-object v4, p0, Lq0/h;->h:Ljava/lang/Object;

    .line 6
    iget-object v5, p0, Lq0/h;->i:Ljava/lang/Class;

    .line 7
    iget-object v6, p0, Lq0/h;->j:Lq0/a;

    .line 8
    iget-object v7, p0, Lq0/h;->m:Lcom/bumptech/glide/f;

    .line 9
    iget-object p0, p0, Lq0/h;->o:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_1
    move p0, v1

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    check-cast p1, Lq0/h;

    .line 12
    iget-object v8, p1, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v8

    .line 13
    :try_start_1
    iget v0, p1, Lq0/h;->k:I

    .line 14
    iget v9, p1, Lq0/h;->l:I

    .line 15
    iget-object v10, p1, Lq0/h;->h:Ljava/lang/Object;

    .line 16
    iget-object v11, p1, Lq0/h;->i:Ljava/lang/Class;

    .line 17
    iget-object v12, p1, Lq0/h;->j:Lq0/a;

    .line 18
    iget-object v13, p1, Lq0/h;->m:Lcom/bumptech/glide/f;

    .line 19
    iget-object p1, p1, Lq0/h;->o:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 20
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_3

    if-ne v3, v9, :cond_3

    .line 21
    invoke-static {v4, v10}, Lu0/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v6, v12}, Lq0/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne v7, v13, :cond_3

    if-ne p0, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :catchall_0
    move-exception p0

    .line 24
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 25
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lq0/h;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lq0/h;->clear()V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public f(II)V
    .locals 25

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lq0/h;->b:Lv0/c;

    invoke-virtual {v1}, Lv0/c;->c()V

    .line 2
    iget-object v15, v0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v15

    .line 3
    :try_start_0
    sget-boolean v21, Lq0/h;->D:Z

    if-eqz v21, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onSizeReady in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lq0/h;->t:J

    invoke-static {v2, v3}, Lu0/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq0/h;->u(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v1, v0, Lq0/h;->v:Lq0/h$a;

    sget-object v2, Lq0/h$a;->c:Lq0/h$a;

    if-eq v1, v2, :cond_1

    .line 6
    monitor-exit v15

    return-void

    .line 7
    :cond_1
    sget-object v14, Lq0/h$a;->b:Lq0/h$a;

    iput-object v14, v0, Lq0/h;->v:Lq0/h$a;

    .line 8
    iget-object v1, v0, Lq0/h;->j:Lq0/a;

    invoke-virtual {v1}, Lq0/a;->y()F

    move-result v1

    move/from16 v2, p1

    .line 9
    invoke-static {v2, v1}, Lq0/h;->v(IF)I

    move-result v2

    iput v2, v0, Lq0/h;->z:I

    move/from16 v2, p2

    .line 10
    invoke-static {v2, v1}, Lq0/h;->v(IF)I

    move-result v1

    iput v1, v0, Lq0/h;->A:I

    if-eqz v21, :cond_2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished setup for calling load in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lq0/h;->t:J

    invoke-static {v2, v3}, Lu0/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq0/h;->u(Ljava/lang/String;)V

    .line 12
    :cond_2
    iget-object v1, v0, Lq0/h;->u:La0/k;

    iget-object v2, v0, Lq0/h;->g:Lcom/bumptech/glide/d;

    iget-object v3, v0, Lq0/h;->h:Ljava/lang/Object;

    iget-object v4, v0, Lq0/h;->j:Lq0/a;

    .line 13
    invoke-virtual {v4}, Lq0/a;->x()Lx/f;

    move-result-object v4

    iget v5, v0, Lq0/h;->z:I

    iget v6, v0, Lq0/h;->A:I

    iget-object v7, v0, Lq0/h;->j:Lq0/a;

    .line 14
    invoke-virtual {v7}, Lq0/a;->w()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v0, Lq0/h;->i:Ljava/lang/Class;

    iget-object v9, v0, Lq0/h;->m:Lcom/bumptech/glide/f;

    iget-object v10, v0, Lq0/h;->j:Lq0/a;

    .line 15
    invoke-virtual {v10}, Lq0/a;->j()La0/j;

    move-result-object v10

    iget-object v11, v0, Lq0/h;->j:Lq0/a;

    .line 16
    invoke-virtual {v11}, Lq0/a;->A()Ljava/util/Map;

    move-result-object v11

    iget-object v12, v0, Lq0/h;->j:Lq0/a;

    .line 17
    invoke-virtual {v12}, Lq0/a;->J()Z

    move-result v12

    iget-object v13, v0, Lq0/h;->j:Lq0/a;

    .line 18
    invoke-virtual {v13}, Lq0/a;->F()Z

    move-result v13

    move-object/from16 v16, v14

    iget-object v14, v0, Lq0/h;->j:Lq0/a;

    .line 19
    invoke-virtual {v14}, Lq0/a;->q()Lx/i;

    move-result-object v14

    move-object/from16 p1, v14

    iget-object v14, v0, Lq0/h;->j:Lq0/a;

    .line 20
    invoke-virtual {v14}, Lq0/a;->D()Z

    move-result v17

    iget-object v14, v0, Lq0/h;->j:Lq0/a;

    .line 21
    invoke-virtual {v14}, Lq0/a;->C()Z

    move-result v18

    iget-object v14, v0, Lq0/h;->j:Lq0/a;

    .line 22
    invoke-virtual {v14}, Lq0/a;->B()Z

    move-result v19

    iget-object v14, v0, Lq0/h;->j:Lq0/a;

    .line 23
    invoke-virtual {v14}, Lq0/a;->p()Z

    move-result v20

    iget-object v14, v0, Lq0/h;->q:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v23, v14

    move-object/from16 v22, v16

    move-object/from16 v14, p1

    move-object/from16 v24, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move-object/from16 v19, p0

    move-object/from16 v20, v23

    .line 24
    :try_start_1
    invoke-virtual/range {v1 .. v20}, La0/k;->f(Lcom/bumptech/glide/d;Ljava/lang/Object;Lx/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;La0/j;Ljava/util/Map;ZZLx/i;ZZZZLq0/g;Ljava/util/concurrent/Executor;)La0/k$d;

    move-result-object v1

    iput-object v1, v0, Lq0/h;->s:La0/k$d;

    .line 25
    iget-object v1, v0, Lq0/h;->v:Lq0/h$a;

    move-object/from16 v2, v22

    if-eq v1, v2, :cond_3

    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Lq0/h;->s:La0/k$d;

    :cond_3
    if-eqz v21, :cond_4

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lq0/h;->t:J

    invoke-static {v2, v3}, Lu0/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lq0/h;->u(Ljava/lang/String;)V

    .line 28
    :cond_4
    monitor-exit v24

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v24, v15

    :goto_0
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lq0/h;->v:Lq0/h$a;

    sget-object v1, Lq0/h$a;->g:Lq0/h$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public h()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/h;->b:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->c()V

    .line 2
    iget-object p0, p0, Lq0/h;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public i()V
    .locals 5

    .line 1
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lq0/h;->k()V

    .line 3
    iget-object v1, p0, Lq0/h;->b:Lv0/c;

    invoke-virtual {v1}, Lv0/c;->c()V

    .line 4
    invoke-static {}, Lu0/f;->b()J

    move-result-wide v1

    iput-wide v1, p0, Lq0/h;->t:J

    .line 5
    iget-object v1, p0, Lq0/h;->h:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 6
    iget v1, p0, Lq0/h;->k:I

    iget v2, p0, Lq0/h;->l:I

    invoke-static {v1, v2}, Lu0/k;->s(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget v1, p0, Lq0/h;->k:I

    iput v1, p0, Lq0/h;->z:I

    .line 8
    iget v1, p0, Lq0/h;->l:I

    iput v1, p0, Lq0/h;->A:I

    .line 9
    :cond_0
    invoke-direct {p0}, Lq0/h;->q()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    .line 10
    :goto_0
    new-instance v2, La0/q;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, La0/q;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lq0/h;->z(La0/q;I)V

    .line 11
    monitor-exit v0

    return-void

    .line 12
    :cond_2
    iget-object v1, p0, Lq0/h;->v:Lq0/h$a;

    sget-object v2, Lq0/h$a;->b:Lq0/h$a;

    if-eq v1, v2, :cond_8

    .line 13
    sget-object v3, Lq0/h$a;->d:Lq0/h$a;

    if-ne v1, v3, :cond_3

    .line 14
    iget-object v1, p0, Lq0/h;->r:La0/v;

    sget-object v2, Lx/a;->f:Lx/a;

    invoke-virtual {p0, v1, v2}, Lq0/h;->c(La0/v;Lx/a;)V

    .line 15
    monitor-exit v0

    return-void

    .line 16
    :cond_3
    sget-object v1, Lq0/h$a;->c:Lq0/h$a;

    iput-object v1, p0, Lq0/h;->v:Lq0/h$a;

    .line 17
    iget v3, p0, Lq0/h;->k:I

    iget v4, p0, Lq0/h;->l:I

    invoke-static {v3, v4}, Lu0/k;->s(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    iget v3, p0, Lq0/h;->k:I

    iget v4, p0, Lq0/h;->l:I

    invoke-virtual {p0, v3, v4}, Lq0/h;->f(II)V

    goto :goto_1

    .line 19
    :cond_4
    iget-object v3, p0, Lq0/h;->n:Lr0/h;

    invoke-interface {v3, p0}, Lr0/h;->g(Lr0/g;)V

    .line 20
    :goto_1
    iget-object v3, p0, Lq0/h;->v:Lq0/h$a;

    if-eq v3, v2, :cond_5

    if-ne v3, v1, :cond_6

    .line 21
    :cond_5
    invoke-direct {p0}, Lq0/h;->m()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 22
    iget-object v1, p0, Lq0/h;->n:Lr0/h;

    invoke-direct {p0}, Lq0/h;->r()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lr0/h;->h(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_6
    sget-boolean v1, Lq0/h;->D:Z

    if-eqz v1, :cond_7

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lq0/h;->t:J

    invoke-static {v2, v3}, Lu0/f;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lq0/h;->u(Ljava/lang/String;)V

    .line 25
    :cond_7
    monitor-exit v0

    return-void

    .line 26
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot restart a running request"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lq0/h;->v:Lq0/h$a;

    sget-object v1, Lq0/h$a;->b:Lq0/h$a;

    if-eq p0, v1, :cond_1

    sget-object v1, Lq0/h$a;->c:Lq0/h$a;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lq0/h;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lq0/h;->v:Lq0/h$a;

    sget-object v1, Lq0/h$a;->d:Lq0/h$a;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
