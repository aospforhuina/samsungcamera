.class La0/h;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements La0/f$a;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lv0/a$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La0/h$h;,
        La0/h$g;,
        La0/h$e;,
        La0/h$b;,
        La0/h$d;,
        La0/h$f;,
        La0/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La0/f$a;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "La0/h<",
        "*>;>;",
        "Lv0/a$f;"
    }
.end annotation


# instance fields
.field private A:Ljava/lang/Thread;

.field private B:Lx/f;

.field private C:Lx/f;

.field private D:Ljava/lang/Object;

.field private E:Lx/a;

.field private F:Ly/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly/d<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile G:La0/f;

.field private volatile H:Z

.field private volatile I:Z

.field private final a:La0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/g<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lv0/c;

.field private final d:La0/h$e;

.field private final f:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "La0/h<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final g:La0/h$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/h$d<",
            "*>;"
        }
    .end annotation
.end field

.field private final k:La0/h$f;

.field private l:Lcom/bumptech/glide/d;

.field private m:Lx/f;

.field private n:Lcom/bumptech/glide/f;

.field private o:La0/n;

.field private p:I

.field private q:I

.field private r:La0/j;

.field private s:Lx/i;

.field private t:La0/h$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La0/h$b<",
            "TR;>;"
        }
    .end annotation
.end field

.field private u:I

.field private v:La0/h$h;

.field private w:La0/h$g;

.field private x:J

.field private y:Z

.field private z:Ljava/lang/Object;


# direct methods
.method constructor <init>(La0/h$e;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/h$e;",
            "Landroidx/core/util/Pools$Pool<",
            "La0/h<",
            "*>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La0/g;

    invoke-direct {v0}, La0/g;-><init>()V

    iput-object v0, p0, La0/h;->a:La0/g;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La0/h;->b:Ljava/util/List;

    .line 4
    invoke-static {}, Lv0/c;->a()Lv0/c;

    move-result-object v0

    iput-object v0, p0, La0/h;->c:Lv0/c;

    .line 5
    new-instance v0, La0/h$d;

    invoke-direct {v0}, La0/h$d;-><init>()V

    iput-object v0, p0, La0/h;->g:La0/h$d;

    .line 6
    new-instance v0, La0/h$f;

    invoke-direct {v0}, La0/h$f;-><init>()V

    iput-object v0, p0, La0/h;->k:La0/h$f;

    .line 7
    iput-object p1, p0, La0/h;->d:La0/h$e;

    .line 8
    iput-object p2, p0, La0/h;->f:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private A(La0/v;Lx/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "TR;>;",
            "Lx/a;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p1, La0/r;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, La0/r;

    invoke-interface {v0}, La0/r;->initialize()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, La0/h;->g:La0/h$d;

    invoke-virtual {v1}, La0/h$d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {p1}, La0/u;->e(La0/v;)La0/u;

    move-result-object p1

    move-object v0, p1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, La0/h;->z(La0/v;Lx/a;)V

    .line 6
    sget-object p1, La0/h$h;->f:La0/h$h;

    iput-object p1, p0, La0/h;->v:La0/h$h;

    .line 7
    :try_start_0
    iget-object p1, p0, La0/h;->g:La0/h$d;

    invoke-virtual {p1}, La0/h$d;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, La0/h;->g:La0/h$d;

    iget-object p2, p0, La0/h;->d:La0/h$e;

    iget-object v1, p0, La0/h;->s:Lx/i;

    invoke-virtual {p1, p2, v1}, La0/h$d;->b(La0/h$e;Lx/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, La0/u;->g()V

    .line 10
    :cond_3
    invoke-direct {p0}, La0/h;->C()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, La0/u;->g()V

    :cond_4
    throw p0
.end method

.method private B()V
    .locals 3

    .line 1
    invoke-direct {p0}, La0/h;->K()V

    .line 2
    new-instance v0, La0/q;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, La0/h;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, La0/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3
    iget-object v1, p0, La0/h;->t:La0/h$b;

    invoke-interface {v1, v0}, La0/h$b;->a(La0/q;)V

    .line 4
    invoke-direct {p0}, La0/h;->D()V

    return-void
.end method

.method private C()V
    .locals 1

    .line 1
    iget-object v0, p0, La0/h;->k:La0/h$f;

    invoke-virtual {v0}, La0/h$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, La0/h;->G()V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 1

    .line 1
    iget-object v0, p0, La0/h;->k:La0/h$f;

    invoke-virtual {v0}, La0/h$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, La0/h;->G()V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 4

    .line 1
    iget-object v0, p0, La0/h;->k:La0/h$f;

    invoke-virtual {v0}, La0/h$f;->e()V

    .line 2
    iget-object v0, p0, La0/h;->g:La0/h$d;

    invoke-virtual {v0}, La0/h$d;->a()V

    .line 3
    iget-object v0, p0, La0/h;->a:La0/g;

    invoke-virtual {v0}, La0/g;->a()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, La0/h;->H:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, La0/h;->l:Lcom/bumptech/glide/d;

    .line 6
    iput-object v1, p0, La0/h;->m:Lx/f;

    .line 7
    iput-object v1, p0, La0/h;->s:Lx/i;

    .line 8
    iput-object v1, p0, La0/h;->n:Lcom/bumptech/glide/f;

    .line 9
    iput-object v1, p0, La0/h;->o:La0/n;

    .line 10
    iput-object v1, p0, La0/h;->t:La0/h$b;

    .line 11
    iput-object v1, p0, La0/h;->v:La0/h$h;

    .line 12
    iput-object v1, p0, La0/h;->G:La0/f;

    .line 13
    iput-object v1, p0, La0/h;->A:Ljava/lang/Thread;

    .line 14
    iput-object v1, p0, La0/h;->B:Lx/f;

    .line 15
    iput-object v1, p0, La0/h;->D:Ljava/lang/Object;

    .line 16
    iput-object v1, p0, La0/h;->E:Lx/a;

    .line 17
    iput-object v1, p0, La0/h;->F:Ly/d;

    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, La0/h;->x:J

    .line 19
    iput-boolean v0, p0, La0/h;->I:Z

    .line 20
    iput-object v1, p0, La0/h;->z:Ljava/lang/Object;

    .line 21
    iget-object v0, p0, La0/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 22
    iget-object v0, p0, La0/h;->f:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private H()V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, La0/h;->A:Ljava/lang/Thread;

    .line 2
    invoke-static {}, Lu0/f;->b()J

    move-result-wide v0

    iput-wide v0, p0, La0/h;->x:J

    const/4 v0, 0x0

    .line 3
    :cond_0
    iget-boolean v1, p0, La0/h;->I:Z

    if-nez v1, :cond_1

    iget-object v1, p0, La0/h;->G:La0/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, La0/h;->G:La0/f;

    .line 4
    invoke-interface {v0}, La0/f;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, La0/h;->v:La0/h$h;

    invoke-direct {p0, v1}, La0/h;->t(La0/h$h;)La0/h$h;

    move-result-object v1

    iput-object v1, p0, La0/h;->v:La0/h$h;

    .line 6
    invoke-direct {p0}, La0/h;->s()La0/f;

    move-result-object v1

    iput-object v1, p0, La0/h;->G:La0/f;

    .line 7
    iget-object v1, p0, La0/h;->v:La0/h$h;

    sget-object v2, La0/h$h;->d:La0/h$h;

    if-ne v1, v2, :cond_0

    .line 8
    invoke-virtual {p0}, La0/h;->k()V

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, La0/h;->v:La0/h$h;

    sget-object v2, La0/h$h;->g:La0/h$h;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, La0/h;->I:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    .line 10
    invoke-direct {p0}, La0/h;->B()V

    :cond_3
    return-void
.end method

.method private I(Ljava/lang/Object;Lx/a;La0/t;)La0/v;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lx/a;",
            "La0/t<",
            "TData;TResourceType;TR;>;)",
            "La0/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, La0/h;->u(Lx/a;)Lx/i;

    move-result-object v2

    .line 2
    iget-object v0, p0, La0/h;->l:Lcom/bumptech/glide/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->h()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/h;->l(Ljava/lang/Object;)Ly/e;

    move-result-object p1

    .line 3
    :try_start_0
    iget v3, p0, La0/h;->p:I

    iget v4, p0, La0/h;->q:I

    new-instance v5, La0/h$c;

    invoke-direct {v5, p0, p2}, La0/h$c;-><init>(La0/h;Lx/a;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, La0/t;->a(Ly/e;Lx/i;IILa0/i$a;)La0/v;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p1}, Ly/e;->b()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ly/e;->b()V

    throw p0
.end method

.method private J()V
    .locals 3

    .line 1
    sget-object v0, La0/h$a;->a:[I

    iget-object v1, p0, La0/h;->w:La0/h$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, La0/h;->r()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La0/h;->w:La0/h$g;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-direct {p0}, La0/h;->H()V

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, La0/h$h;->a:La0/h$h;

    invoke-direct {p0, v0}, La0/h;->t(La0/h$h;)La0/h$h;

    move-result-object v0

    iput-object v0, p0, La0/h;->v:La0/h$h;

    .line 6
    invoke-direct {p0}, La0/h;->s()La0/f;

    move-result-object v0

    iput-object v0, p0, La0/h;->G:La0/f;

    .line 7
    invoke-direct {p0}, La0/h;->H()V

    :goto_0
    return-void
.end method

.method private K()V
    .locals 2

    .line 1
    iget-object v0, p0, La0/h;->c:Lv0/c;

    invoke-virtual {v0}, Lv0/c;->c()V

    .line 2
    iget-boolean v0, p0, La0/h;->H:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, La0/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, La0/h;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already notified"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    iput-boolean v1, p0, La0/h;->H:Z

    return-void
.end method

.method private n(Ly/d;Ljava/lang/Object;Lx/a;)La0/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ly/d<",
            "*>;TData;",
            "Lx/a;",
            ")",
            "La0/v<",
            "TR;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    .line 1
    invoke-interface {p1}, Ly/d;->b()V

    return-object p0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lu0/f;->b()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, p2, p3}, La0/h;->p(Ljava/lang/Object;Lx/a;)La0/v;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    .line 4
    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, La0/h;->x(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    invoke-interface {p1}, Ly/d;->b()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ly/d;->b()V

    throw p0
.end method

.method private p(Ljava/lang/Object;Lx/a;)La0/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lx/a;",
            ")",
            "La0/v<",
            "TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, La0/h;->a:La0/g;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, La0/g;->h(Ljava/lang/Class;)La0/t;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, v0}, La0/h;->I(Ljava/lang/Object;Lx/a;La0/t;)La0/v;

    move-result-object p0

    return-object p0
.end method

.method private r()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, La0/h;->x:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La0/h;->D:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La0/h;->B:Lx/f;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, La0/h;->F:Ly/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, La0/h;->y(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, La0/h;->F:Ly/d;

    iget-object v2, p0, La0/h;->D:Ljava/lang/Object;

    iget-object v3, p0, La0/h;->E:Lx/a;

    invoke-direct {p0, v1, v2, v3}, La0/h;->n(Ly/d;Ljava/lang/Object;Lx/a;)La0/v;

    move-result-object v0
    :try_end_0
    .catch La0/q; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    iget-object v2, p0, La0/h;->C:Lx/f;

    iget-object v3, p0, La0/h;->E:Lx/a;

    invoke-virtual {v1, v2, v3}, La0/q;->i(Lx/f;Lx/a;)V

    .line 5
    iget-object v2, p0, La0/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, La0/h;->E:Lx/a;

    invoke-direct {p0, v0, v1}, La0/h;->A(La0/v;Lx/a;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {p0}, La0/h;->H()V

    :goto_1
    return-void
.end method

.method private s()La0/f;
    .locals 3

    .line 1
    sget-object v0, La0/h$a;->b:[I

    iget-object v1, p0, La0/h;->v:La0/h$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La0/h;->v:La0/h$h;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance v0, La0/z;

    iget-object v1, p0, La0/h;->a:La0/g;

    invoke-direct {v0, v1, p0}, La0/z;-><init>(La0/g;La0/f$a;)V

    return-object v0

    .line 4
    :cond_2
    new-instance v0, La0/c;

    iget-object v1, p0, La0/h;->a:La0/g;

    invoke-direct {v0, v1, p0}, La0/c;-><init>(La0/g;La0/f$a;)V

    return-object v0

    .line 5
    :cond_3
    new-instance v0, La0/w;

    iget-object v1, p0, La0/h;->a:La0/g;

    invoke-direct {v0, v1, p0}, La0/w;-><init>(La0/g;La0/f$a;)V

    return-object v0
.end method

.method private t(La0/h$h;)La0/h$h;
    .locals 2

    .line 1
    sget-object v0, La0/h$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2
    iget-object p1, p0, La0/h;->r:La0/j;

    invoke-virtual {p1}, La0/j;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p0, La0/h$h;->b:La0/h$h;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, La0/h$h;->b:La0/h$h;

    invoke-direct {p0, p1}, La0/h;->t(La0/h$h;)La0/h$h;

    move-result-object p0

    :goto_0
    return-object p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    sget-object p0, La0/h$h;->g:La0/h$h;

    return-object p0

    .line 7
    :cond_3
    iget-boolean p0, p0, La0/h;->y:Z

    if-eqz p0, :cond_4

    sget-object p0, La0/h$h;->g:La0/h$h;

    goto :goto_1

    :cond_4
    sget-object p0, La0/h$h;->d:La0/h$h;

    :goto_1
    return-object p0

    .line 8
    :cond_5
    iget-object p1, p0, La0/h;->r:La0/j;

    invoke-virtual {p1}, La0/j;->a()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    sget-object p0, La0/h$h;->c:La0/h$h;

    goto :goto_2

    .line 10
    :cond_6
    sget-object p1, La0/h$h;->c:La0/h$h;

    invoke-direct {p0, p1}, La0/h;->t(La0/h$h;)La0/h$h;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private u(Lx/a;)Lx/i;
    .locals 3

    .line 1
    iget-object v0, p0, La0/h;->s:Lx/i;

    .line 2
    sget-object v1, Lx/a;->d:Lx/a;

    if-eq p1, v1, :cond_1

    iget-object p1, p0, La0/h;->a:La0/g;

    .line 3
    invoke-virtual {p1}, La0/g;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4
    :goto_1
    sget-object v1, Lh0/n;->j:Lx/h;

    invoke-virtual {v0, v1}, Lx/i;->c(Lx/h;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    .line 5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    return-object v0

    .line 6
    :cond_3
    new-instance v0, Lx/i;

    invoke-direct {v0}, Lx/i;-><init>()V

    .line 7
    iget-object p0, p0, La0/h;->s:Lx/i;

    invoke-virtual {v0, p0}, Lx/i;->d(Lx/i;)V

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lx/i;->e(Lx/h;Ljava/lang/Object;)Lx/i;

    return-object v0
.end method

.method private v()I
    .locals 0

    iget-object p0, p0, La0/h;->n:Lcom/bumptech/glide/f;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method private x(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, La0/h;->y(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private y(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {p2, p3}, Lu0/f;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La0/h;->o:La0/n;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    .line 5
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private z(La0/v;Lx/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "TR;>;",
            "Lx/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, La0/h;->K()V

    .line 2
    iget-object p0, p0, La0/h;->t:La0/h$b;

    invoke-interface {p0, p1, p2}, La0/h$b;->c(La0/v;Lx/a;)V

    return-void
.end method


# virtual methods
.method E(Lx/a;La0/v;)La0/v;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lx/a;",
            "La0/v<",
            "TZ;>;)",
            "La0/v<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, La0/v;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2
    sget-object v0, Lx/a;->d:Lx/a;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 3
    iget-object v0, p0, La0/h;->a:La0/g;

    invoke-virtual {v0, v8}, La0/g;->r(Ljava/lang/Class;)Lx/m;

    move-result-object v0

    .line 4
    iget-object v2, p0, La0/h;->l:Lcom/bumptech/glide/d;

    iget v3, p0, La0/h;->p:I

    iget v4, p0, La0/h;->q:I

    invoke-interface {v0, v2, p2, v3, v4}, Lx/m;->b(Landroid/content/Context;La0/v;II)La0/v;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    .line 5
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-interface {p2}, La0/v;->recycle()V

    .line 7
    :cond_1
    iget-object p2, p0, La0/h;->a:La0/g;

    invoke-virtual {p2, v0}, La0/g;->v(La0/v;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 8
    iget-object p2, p0, La0/h;->a:La0/g;

    invoke-virtual {p2, v0}, La0/g;->n(La0/v;)Lx/l;

    move-result-object v1

    .line 9
    iget-object p2, p0, La0/h;->s:Lx/i;

    invoke-interface {v1, p2}, Lx/l;->a(Lx/i;)Lx/c;

    move-result-object p2

    goto :goto_1

    .line 10
    :cond_2
    sget-object p2, Lx/c;->c:Lx/c;

    :goto_1
    move-object v10, v1

    .line 11
    iget-object v1, p0, La0/h;->a:La0/g;

    iget-object v2, p0, La0/h;->B:Lx/f;

    invoke-virtual {v1, v2}, La0/g;->x(Lx/f;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 12
    iget-object v3, p0, La0/h;->r:La0/j;

    invoke-virtual {v3, v1, p1, p2}, La0/j;->d(ZLx/a;Lx/c;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    .line 13
    sget-object p1, La0/h$a;->c:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 14
    new-instance p1, La0/x;

    iget-object p2, p0, La0/h;->a:La0/g;

    .line 15
    invoke-virtual {p2}, La0/g;->b()Lb0/b;

    move-result-object v2

    iget-object v3, p0, La0/h;->B:Lx/f;

    iget-object v4, p0, La0/h;->m:Lx/f;

    iget v5, p0, La0/h;->p:I

    iget v6, p0, La0/h;->q:I

    iget-object v9, p0, La0/h;->s:Lx/i;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, La0/x;-><init>(Lb0/b;Lx/f;Lx/f;IILx/m;Ljava/lang/Class;Lx/i;)V

    goto :goto_2

    .line 16
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown strategy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_4
    new-instance p1, La0/d;

    iget-object p2, p0, La0/h;->B:Lx/f;

    iget-object v1, p0, La0/h;->m:Lx/f;

    invoke-direct {p1, p2, v1}, La0/d;-><init>(Lx/f;Lx/f;)V

    .line 18
    :goto_2
    invoke-static {v0}, La0/u;->e(La0/v;)La0/u;

    move-result-object v0

    .line 19
    iget-object p0, p0, La0/h;->g:La0/h$d;

    invoke-virtual {p0, p1, v10, v0}, La0/h$d;->d(Lx/f;Lx/l;La0/u;)V

    goto :goto_3

    .line 20
    :cond_5
    new-instance p0, Lcom/bumptech/glide/h$d;

    invoke-interface {v0}, La0/v;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/h$d;-><init>(Ljava/lang/Class;)V

    throw p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method F(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, La0/h;->k:La0/h$f;

    invoke-virtual {v0, p1}, La0/h$f;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, La0/h;->G()V

    :cond_0
    return-void
.end method

.method L()Z
    .locals 1

    .line 1
    sget-object v0, La0/h$h;->a:La0/h$h;

    invoke-direct {p0, v0}, La0/h;->t(La0/h$h;)La0/h$h;

    move-result-object p0

    .line 2
    sget-object v0, La0/h$h;->b:La0/h$h;

    if-eq p0, v0, :cond_1

    sget-object v0, La0/h$h;->c:La0/h$h;

    if-ne p0, v0, :cond_0

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

.method public a(Lx/f;Ljava/lang/Object;Ly/d;Lx/a;Lx/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/f;",
            "Ljava/lang/Object;",
            "Ly/d<",
            "*>;",
            "Lx/a;",
            "Lx/f;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, La0/h;->B:Lx/f;

    .line 2
    iput-object p2, p0, La0/h;->D:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, La0/h;->F:Ly/d;

    .line 4
    iput-object p4, p0, La0/h;->E:Lx/a;

    .line 5
    iput-object p5, p0, La0/h;->C:Lx/f;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, La0/h;->A:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 7
    sget-object p1, La0/h$g;->c:La0/h$g;

    iput-object p1, p0, La0/h;->w:La0/h$g;

    .line 8
    iget-object p1, p0, La0/h;->t:La0/h$b;

    invoke-interface {p1, p0}, La0/h$b;->d(La0/h;)V

    goto :goto_0

    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    .line 9
    invoke-static {p1}, Lv0/b;->a(Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-direct {p0}, La0/h;->r()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-static {}, Lv0/b;->d()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lv0/b;->d()V

    throw p0
.end method

.method public b()Lv0/c;
    .locals 0

    iget-object p0, p0, La0/h;->c:Lv0/c;

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, La0/h;

    invoke-virtual {p0, p1}, La0/h;->m(La0/h;)I

    move-result p0

    return p0
.end method

.method public h(Lx/f;Ljava/lang/Exception;Ly/d;Lx/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/f;",
            "Ljava/lang/Exception;",
            "Ly/d<",
            "*>;",
            "Lx/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ly/d;->b()V

    .line 2
    new-instance v0, La0/q;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, La0/q;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-interface {p3}, Ly/d;->a()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, La0/q;->j(Lx/f;Lx/a;Ljava/lang/Class;)V

    .line 4
    iget-object p1, p0, La0/h;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, La0/h;->A:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    .line 6
    sget-object p1, La0/h$g;->b:La0/h$g;

    iput-object p1, p0, La0/h;->w:La0/h$g;

    .line 7
    iget-object p1, p0, La0/h;->t:La0/h$b;

    invoke-interface {p1, p0}, La0/h$b;->d(La0/h;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, La0/h;->H()V

    :goto_0
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    sget-object v0, La0/h$g;->b:La0/h$g;

    iput-object v0, p0, La0/h;->w:La0/h$g;

    .line 2
    iget-object v0, p0, La0/h;->t:La0/h$b;

    invoke-interface {v0, p0}, La0/h$b;->d(La0/h;)V

    return-void
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, La0/h;->I:Z

    .line 2
    iget-object p0, p0, La0/h;->G:La0/f;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, La0/f;->cancel()V

    :cond_0
    return-void
.end method

.method public m(La0/h;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/h<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, La0/h;->v()I

    move-result v0

    invoke-direct {p1}, La0/h;->v()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    iget p0, p0, La0/h;->u:I

    iget p1, p1, La0/h;->u:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    .line 1
    iget-object v1, p0, La0/h;->z:Ljava/lang/Object;

    const-string v2, "DecodeJob#run(model=%s)"

    invoke-static {v2, v1}, Lv0/b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v1, p0, La0/h;->F:Ly/d;

    .line 3
    :try_start_0
    iget-boolean v2, p0, La0/h;->I:Z

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0}, La0/h;->B()V
    :try_end_0
    .catch La0/b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Ly/d;->b()V

    .line 6
    :cond_0
    invoke-static {}, Lv0/b;->d()V

    return-void

    .line 7
    :cond_1
    :try_start_1
    invoke-direct {p0}, La0/h;->J()V
    :try_end_1
    .catch La0/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Ly/d;->b()V

    .line 9
    :cond_2
    invoke-static {}, Lv0/b;->d()V

    return-void

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    .line 10
    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, La0/h;->I:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, La0/h;->v:La0/h$h;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    :cond_3
    iget-object v0, p0, La0/h;->v:La0/h$h;

    sget-object v3, La0/h$h;->f:La0/h$h;

    if-eq v0, v3, :cond_4

    .line 13
    iget-object v0, p0, La0/h;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-direct {p0}, La0/h;->B()V

    .line 15
    :cond_4
    iget-boolean p0, p0, La0/h;->I:Z

    if-nez p0, :cond_5

    .line 16
    throw v2

    .line 17
    :cond_5
    throw v2

    :catch_0
    move-exception p0

    .line 18
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_6

    .line 19
    invoke-interface {v1}, Ly/d;->b()V

    .line 20
    :cond_6
    invoke-static {}, Lv0/b;->d()V

    throw p0
.end method

.method w(Lcom/bumptech/glide/d;Ljava/lang/Object;La0/n;Lx/f;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;La0/j;Ljava/util/Map;ZZZLx/i;La0/h$b;I)La0/h;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/d;",
            "Ljava/lang/Object;",
            "La0/n;",
            "Lx/f;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/f;",
            "La0/j;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lx/m<",
            "*>;>;ZZZ",
            "Lx/i;",
            "La0/h$b<",
            "TR;>;I)",
            "La0/h<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, La0/h;->a:La0/g;

    iget-object v15, v0, La0/h;->d:La0/h$e;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, La0/g;->u(Lcom/bumptech/glide/d;Ljava/lang/Object;Lx/f;IILa0/j;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/f;Lx/i;Ljava/util/Map;ZZLa0/h$e;)V

    move-object/from16 v1, p1

    .line 2
    iput-object v1, v0, La0/h;->l:Lcom/bumptech/glide/d;

    move-object/from16 v1, p4

    .line 3
    iput-object v1, v0, La0/h;->m:Lx/f;

    move-object/from16 v1, p9

    .line 4
    iput-object v1, v0, La0/h;->n:Lcom/bumptech/glide/f;

    move-object/from16 v1, p3

    .line 5
    iput-object v1, v0, La0/h;->o:La0/n;

    move/from16 v1, p5

    .line 6
    iput v1, v0, La0/h;->p:I

    move/from16 v1, p6

    .line 7
    iput v1, v0, La0/h;->q:I

    move-object/from16 v1, p10

    .line 8
    iput-object v1, v0, La0/h;->r:La0/j;

    move/from16 v1, p14

    .line 9
    iput-boolean v1, v0, La0/h;->y:Z

    move-object/from16 v1, p15

    .line 10
    iput-object v1, v0, La0/h;->s:Lx/i;

    move-object/from16 v1, p16

    .line 11
    iput-object v1, v0, La0/h;->t:La0/h$b;

    move/from16 v1, p17

    .line 12
    iput v1, v0, La0/h;->u:I

    .line 13
    sget-object v1, La0/h$g;->a:La0/h$g;

    iput-object v1, v0, La0/h;->w:La0/h$g;

    move-object/from16 v1, p2

    .line 14
    iput-object v1, v0, La0/h;->z:Ljava/lang/Object;

    return-object v0
.end method
