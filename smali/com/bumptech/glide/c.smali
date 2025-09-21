.class public final Lcom/bumptech/glide/c;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/k<",
            "**>;>;"
        }
    .end annotation
.end field

.field private b:La0/k;

.field private c:Lb0/d;

.field private d:Lb0/b;

.field private e:Lc0/h;

.field private f:Ld0/a;

.field private g:Ld0/a;

.field private h:Lc0/a$a;

.field private i:Lc0/i;

.field private j:Ln0/d;

.field private k:I

.field private l:Lcom/bumptech/glide/b$a;

.field private m:Ln0/l$b;

.field private n:Ld0/a;

.field private o:Z

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq0/e<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/bumptech/glide/c;->k:I

    .line 4
    new-instance v0, Lcom/bumptech/glide/c$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/c$a;-><init>(Lcom/bumptech/glide/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/bumptech/glide/c;->f:Ld0/a;

    if-nez v2, :cond_0

    .line 2
    invoke-static {}, Ld0/a;->g()Ld0/a;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c;->f:Ld0/a;

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/bumptech/glide/c;->g:Ld0/a;

    if-nez v2, :cond_1

    .line 4
    invoke-static {}, Ld0/a;->e()Ld0/a;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c;->g:Ld0/a;

    .line 5
    :cond_1
    iget-object v2, v0, Lcom/bumptech/glide/c;->n:Ld0/a;

    if-nez v2, :cond_2

    .line 6
    invoke-static {}, Ld0/a;->c()Ld0/a;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c;->n:Ld0/a;

    .line 7
    :cond_2
    iget-object v2, v0, Lcom/bumptech/glide/c;->i:Lc0/i;

    if-nez v2, :cond_3

    .line 8
    new-instance v2, Lc0/i$a;

    invoke-direct {v2, v1}, Lc0/i$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lc0/i$a;->a()Lc0/i;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c;->i:Lc0/i;

    .line 9
    :cond_3
    iget-object v2, v0, Lcom/bumptech/glide/c;->j:Ln0/d;

    if-nez v2, :cond_4

    .line 10
    new-instance v2, Ln0/f;

    invoke-direct {v2}, Ln0/f;-><init>()V

    iput-object v2, v0, Lcom/bumptech/glide/c;->j:Ln0/d;

    .line 11
    :cond_4
    iget-object v2, v0, Lcom/bumptech/glide/c;->c:Lb0/d;

    if-nez v2, :cond_6

    .line 12
    iget-object v2, v0, Lcom/bumptech/glide/c;->i:Lc0/i;

    invoke-virtual {v2}, Lc0/i;->b()I

    move-result v2

    if-lez v2, :cond_5

    .line 13
    new-instance v3, Lb0/j;

    int-to-long v4, v2

    invoke-direct {v3, v4, v5}, Lb0/j;-><init>(J)V

    iput-object v3, v0, Lcom/bumptech/glide/c;->c:Lb0/d;

    goto :goto_0

    .line 14
    :cond_5
    new-instance v2, Lb0/e;

    invoke-direct {v2}, Lb0/e;-><init>()V

    iput-object v2, v0, Lcom/bumptech/glide/c;->c:Lb0/d;

    .line 15
    :cond_6
    :goto_0
    iget-object v2, v0, Lcom/bumptech/glide/c;->d:Lb0/b;

    if-nez v2, :cond_7

    .line 16
    new-instance v2, Lb0/i;

    iget-object v3, v0, Lcom/bumptech/glide/c;->i:Lc0/i;

    invoke-virtual {v3}, Lc0/i;->a()I

    move-result v3

    invoke-direct {v2, v3}, Lb0/i;-><init>(I)V

    iput-object v2, v0, Lcom/bumptech/glide/c;->d:Lb0/b;

    .line 17
    :cond_7
    iget-object v2, v0, Lcom/bumptech/glide/c;->e:Lc0/h;

    if-nez v2, :cond_8

    .line 18
    new-instance v2, Lc0/g;

    iget-object v3, v0, Lcom/bumptech/glide/c;->i:Lc0/i;

    invoke-virtual {v3}, Lc0/i;->d()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lc0/g;-><init>(J)V

    iput-object v2, v0, Lcom/bumptech/glide/c;->e:Lc0/h;

    .line 19
    :cond_8
    iget-object v2, v0, Lcom/bumptech/glide/c;->h:Lc0/a$a;

    if-nez v2, :cond_9

    .line 20
    new-instance v2, Lc0/f;

    invoke-direct {v2, v1}, Lc0/f;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/bumptech/glide/c;->h:Lc0/a$a;

    .line 21
    :cond_9
    iget-object v2, v0, Lcom/bumptech/glide/c;->b:La0/k;

    if-nez v2, :cond_a

    .line 22
    new-instance v2, La0/k;

    iget-object v4, v0, Lcom/bumptech/glide/c;->e:Lc0/h;

    iget-object v5, v0, Lcom/bumptech/glide/c;->h:Lc0/a$a;

    iget-object v6, v0, Lcom/bumptech/glide/c;->g:Ld0/a;

    iget-object v7, v0, Lcom/bumptech/glide/c;->f:Ld0/a;

    .line 23
    invoke-static {}, Ld0/a;->h()Ld0/a;

    move-result-object v8

    iget-object v9, v0, Lcom/bumptech/glide/c;->n:Ld0/a;

    iget-boolean v10, v0, Lcom/bumptech/glide/c;->o:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, La0/k;-><init>(Lc0/h;Lc0/a$a;Ld0/a;Ld0/a;Ld0/a;Ld0/a;Z)V

    iput-object v2, v0, Lcom/bumptech/glide/c;->b:La0/k;

    .line 24
    :cond_a
    iget-object v2, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    if-nez v2, :cond_b

    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    goto :goto_1

    .line 26
    :cond_b
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    .line 27
    :goto_1
    new-instance v6, Ln0/l;

    iget-object v2, v0, Lcom/bumptech/glide/c;->m:Ln0/l$b;

    invoke-direct {v6, v2}, Ln0/l;-><init>(Ln0/l$b;)V

    .line 28
    new-instance v14, Lcom/bumptech/glide/b;

    iget-object v2, v0, Lcom/bumptech/glide/c;->b:La0/k;

    iget-object v3, v0, Lcom/bumptech/glide/c;->e:Lc0/h;

    iget-object v4, v0, Lcom/bumptech/glide/c;->c:Lb0/d;

    iget-object v5, v0, Lcom/bumptech/glide/c;->d:Lb0/b;

    iget-object v7, v0, Lcom/bumptech/glide/c;->j:Ln0/d;

    iget v8, v0, Lcom/bumptech/glide/c;->k:I

    iget-object v9, v0, Lcom/bumptech/glide/c;->l:Lcom/bumptech/glide/b$a;

    iget-object v10, v0, Lcom/bumptech/glide/c;->a:Ljava/util/Map;

    iget-object v11, v0, Lcom/bumptech/glide/c;->p:Ljava/util/List;

    iget-boolean v12, v0, Lcom/bumptech/glide/c;->q:Z

    iget-boolean v13, v0, Lcom/bumptech/glide/c;->r:Z

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;La0/k;Lc0/h;Lb0/d;Lb0/b;Ln0/l;Ln0/d;ILcom/bumptech/glide/b$a;Ljava/util/Map;Ljava/util/List;ZZ)V

    return-object v14
.end method

.method b(Ln0/l$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/c;->m:Ln0/l$b;

    return-void
.end method
