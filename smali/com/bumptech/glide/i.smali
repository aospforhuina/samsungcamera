.class public Lcom/bumptech/glide/i;
.super Lq0/a;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Lq0/a<",
        "Lcom/bumptech/glide/i<",
        "TTranscodeType;>;>;"
    }
.end annotation


# static fields
.field protected static final S:Lq0/f;


# instance fields
.field private final E:Landroid/content/Context;

.field private final F:Lcom/bumptech/glide/j;

.field private final G:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private final H:Lcom/bumptech/glide/b;

.field private final I:Lcom/bumptech/glide/d;

.field private J:Lcom/bumptech/glide/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;"
        }
    .end annotation
.end field

.field private K:Ljava/lang/Object;

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lq0/e<",
            "TTranscodeType;>;>;"
        }
    .end annotation
.end field

.field private M:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private N:Lcom/bumptech/glide/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private O:Ljava/lang/Float;

.field private P:Z

.field private Q:Z

.field private R:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq0/f;

    invoke-direct {v0}, Lq0/f;-><init>()V

    sget-object v1, La0/j;->c:La0/j;

    .line 2
    invoke-virtual {v0, v1}, Lq0/a;->h(La0/j;)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/f;

    sget-object v1, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/f;

    .line 3
    invoke-virtual {v0, v1}, Lq0/a;->U(Lcom/bumptech/glide/f;)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/f;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lq0/a;->b0(Z)Lq0/a;

    move-result-object v0

    check-cast v0, Lq0/f;

    sput-object v0, Lcom/bumptech/glide/i;->S:Lq0/f;

    return-void
.end method

.method protected constructor <init>(Lcom/bumptech/glide/b;Lcom/bumptech/glide/j;Ljava/lang/Class;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/b;",
            "Lcom/bumptech/glide/j;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq0/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bumptech/glide/i;->P:Z

    .line 3
    iput-object p1, p0, Lcom/bumptech/glide/i;->H:Lcom/bumptech/glide/b;

    .line 4
    iput-object p2, p0, Lcom/bumptech/glide/i;->F:Lcom/bumptech/glide/j;

    .line 5
    iput-object p3, p0, Lcom/bumptech/glide/i;->G:Ljava/lang/Class;

    .line 6
    iput-object p4, p0, Lcom/bumptech/glide/i;->E:Landroid/content/Context;

    .line 7
    invoke-virtual {p2, p3}, Lcom/bumptech/glide/j;->q(Ljava/lang/Class;)Lcom/bumptech/glide/k;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/i;->J:Lcom/bumptech/glide/k;

    .line 8
    invoke-virtual {p1}, Lcom/bumptech/glide/b;->i()Lcom/bumptech/glide/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/i;->I:Lcom/bumptech/glide/d;

    .line 9
    invoke-virtual {p2}, Lcom/bumptech/glide/j;->o()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/i;->p0(Ljava/util/List;)V

    .line 10
    invoke-virtual {p2}, Lcom/bumptech/glide/j;->p()Lq0/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->j0(Lq0/a;)Lcom/bumptech/glide/i;

    return-void
.end method

.method private k0(Lr0/h;Lq0/e;Lq0/a;Ljava/util/concurrent/Executor;)Lq0/c;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr0/h<",
            "TTranscodeType;>;",
            "Lq0/e<",
            "TTranscodeType;>;",
            "Lq0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lq0/c;"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v5, p0, Lcom/bumptech/glide/i;->J:Lcom/bumptech/glide/k;

    .line 2
    invoke-virtual {p3}, Lq0/a;->v()Lcom/bumptech/glide/f;

    move-result-object v6

    .line 3
    invoke-virtual {p3}, Lq0/a;->s()I

    move-result v7

    .line 4
    invoke-virtual {p3}, Lq0/a;->r()I

    move-result v8

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v9, p3

    move-object v10, p4

    .line 5
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->l0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILq0/a;Ljava/util/concurrent/Executor;)Lq0/c;

    move-result-object p0

    return-object p0
.end method

.method private l0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILq0/a;Ljava/util/concurrent/Executor;)Lq0/c;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lr0/h<",
            "TTranscodeType;>;",
            "Lq0/e<",
            "TTranscodeType;>;",
            "Lq0/d;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Lq0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lq0/c;"
        }
    .end annotation

    move-object v11, p0

    .line 1
    iget-object v0, v11, Lcom/bumptech/glide/i;->N:Lcom/bumptech/glide/i;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lq0/b;

    move-object v12, p1

    move-object/from16 v1, p4

    invoke-direct {v0, p1, v1}, Lq0/b;-><init>(Ljava/lang/Object;Lq0/d;)V

    move-object v4, v0

    move-object v13, v4

    goto :goto_0

    :cond_0
    move-object v12, p1

    move-object/from16 v1, p4

    const/4 v0, 0x0

    move-object v13, v0

    move-object v4, v1

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 3
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->m0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILq0/a;Ljava/util/concurrent/Executor;)Lq0/c;

    move-result-object v0

    if-nez v13, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v1, v11, Lcom/bumptech/glide/i;->N:Lcom/bumptech/glide/i;

    invoke-virtual {v1}, Lq0/a;->s()I

    move-result v1

    .line 5
    iget-object v2, v11, Lcom/bumptech/glide/i;->N:Lcom/bumptech/glide/i;

    invoke-virtual {v2}, Lq0/a;->r()I

    move-result v2

    .line 6
    invoke-static/range {p7 .. p8}, Lu0/k;->s(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v11, Lcom/bumptech/glide/i;->N:Lcom/bumptech/glide/i;

    invoke-virtual {v3}, Lq0/a;->L()Z

    move-result v3

    if-nez v3, :cond_2

    .line 7
    invoke-virtual/range {p9 .. p9}, Lq0/a;->s()I

    move-result v1

    .line 8
    invoke-virtual/range {p9 .. p9}, Lq0/a;->r()I

    move-result v2

    :cond_2
    move v8, v1

    move v9, v2

    .line 9
    iget-object v1, v11, Lcom/bumptech/glide/i;->N:Lcom/bumptech/glide/i;

    iget-object v6, v1, Lcom/bumptech/glide/i;->J:Lcom/bumptech/glide/k;

    .line 10
    invoke-virtual {v1}, Lq0/a;->v()Lcom/bumptech/glide/f;

    move-result-object v7

    iget-object v10, v11, Lcom/bumptech/glide/i;->N:Lcom/bumptech/glide/i;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v13

    move-object/from16 v11, p10

    .line 11
    invoke-direct/range {v1 .. v11}, Lcom/bumptech/glide/i;->l0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILq0/a;Ljava/util/concurrent/Executor;)Lq0/c;

    move-result-object v1

    .line 12
    invoke-virtual {v13, v0, v1}, Lq0/b;->p(Lq0/c;Lq0/c;)V

    return-object v13
.end method

.method private m0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILq0/a;Ljava/util/concurrent/Executor;)Lq0/c;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lr0/h<",
            "TTranscodeType;>;",
            "Lq0/e<",
            "TTranscodeType;>;",
            "Lq0/d;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Lq0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lq0/c;"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v5, p4

    move-object/from16 v13, p6

    .line 1
    iget-object v0, v11, Lcom/bumptech/glide/i;->M:Lcom/bumptech/glide/i;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, v11, Lcom/bumptech/glide/i;->R:Z

    if-nez v1, :cond_3

    .line 3
    iget-object v1, v0, Lcom/bumptech/glide/i;->J:Lcom/bumptech/glide/k;

    .line 4
    iget-boolean v2, v0, Lcom/bumptech/glide/i;->P:Z

    if-eqz v2, :cond_0

    move-object/from16 v14, p5

    goto :goto_0

    :cond_0
    move-object v14, v1

    .line 5
    :goto_0
    invoke-virtual {v0}, Lq0/a;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, v11, Lcom/bumptech/glide/i;->M:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lq0/a;->v()Lcom/bumptech/glide/f;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_1
    invoke-direct {v11, v13}, Lcom/bumptech/glide/i;->o0(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;

    move-result-object v0

    :goto_1
    move-object v15, v0

    .line 8
    iget-object v0, v11, Lcom/bumptech/glide/i;->M:Lcom/bumptech/glide/i;

    invoke-virtual {v0}, Lq0/a;->s()I

    move-result v0

    .line 9
    iget-object v1, v11, Lcom/bumptech/glide/i;->M:Lcom/bumptech/glide/i;

    invoke-virtual {v1}, Lq0/a;->r()I

    move-result v1

    .line 10
    invoke-static/range {p7 .. p8}, Lu0/k;->s(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v11, Lcom/bumptech/glide/i;->M:Lcom/bumptech/glide/i;

    .line 11
    invoke-virtual {v2}, Lq0/a;->L()Z

    move-result v2

    if-nez v2, :cond_2

    .line 12
    invoke-virtual/range {p9 .. p9}, Lq0/a;->s()I

    move-result v0

    .line 13
    invoke-virtual/range {p9 .. p9}, Lq0/a;->r()I

    move-result v1

    :cond_2
    move/from16 v16, v0

    move/from16 v17, v1

    .line 14
    new-instance v10, Lq0/i;

    invoke-direct {v10, v12, v5}, Lq0/i;-><init>(Ljava/lang/Object;Lq0/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v10

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v13, v10

    move-object/from16 v10, p10

    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->y0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/a;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Lq0/c;

    move-result-object v10

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, v11, Lcom/bumptech/glide/i;->R:Z

    .line 17
    iget-object v9, v11, Lcom/bumptech/glide/i;->M:Lcom/bumptech/glide/i;

    move-object v0, v9

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move-object v12, v10

    move-object/from16 v10, p10

    .line 18
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->l0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILq0/a;Ljava/util/concurrent/Executor;)Lq0/c;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    iput-boolean v1, v11, Lcom/bumptech/glide/i;->R:Z

    .line 20
    invoke-virtual {v13, v12, v0}, Lq0/i;->o(Lq0/c;Lq0/c;)V

    return-object v13

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_4
    iget-object v0, v11, Lcom/bumptech/glide/i;->O:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 23
    new-instance v14, Lq0/i;

    invoke-direct {v14, v12, v5}, Lq0/i;-><init>(Ljava/lang/Object;Lq0/d;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object v5, v14

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 24
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->y0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/a;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Lq0/c;

    move-result-object v15

    .line 25
    invoke-virtual/range {p9 .. p9}, Lq0/a;->e()Lq0/a;

    move-result-object v0

    iget-object v1, v11, Lcom/bumptech/glide/i;->O:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lq0/a;->a0(F)Lq0/a;

    move-result-object v4

    .line 26
    invoke-direct {v11, v13}, Lcom/bumptech/glide/i;->o0(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 27
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->y0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/a;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Lq0/c;

    move-result-object v0

    .line 28
    invoke-virtual {v14, v15, v0}, Lq0/i;->o(Lq0/c;Lq0/c;)V

    return-object v14

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p9

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p10

    .line 29
    invoke-direct/range {v0 .. v10}, Lcom/bumptech/glide/i;->y0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/a;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Lq0/c;

    move-result-object v0

    return-object v0
.end method

.method private o0(Lcom/bumptech/glide/f;)Lcom/bumptech/glide/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/i$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lq0/a;->v()Lcom/bumptech/glide/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    sget-object p0, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/f;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lcom/bumptech/glide/f;->b:Lcom/bumptech/glide/f;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/f;

    return-object p0
.end method

.method private p0(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lq0/e<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq0/e;

    .line 2
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/i;->i0(Lq0/e;)Lcom/bumptech/glide/i;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s0(Lr0/h;Lq0/e;Lq0/a;Ljava/util/concurrent/Executor;)Lr0/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lr0/h<",
            "TTranscodeType;>;>(TY;",
            "Lq0/e<",
            "TTranscodeType;>;",
            "Lq0/a<",
            "*>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-boolean v0, p0, Lcom/bumptech/glide/i;->Q:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/i;->k0(Lr0/h;Lq0/e;Lq0/a;Ljava/util/concurrent/Executor;)Lq0/c;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Lr0/h;->i()Lq0/c;

    move-result-object p4

    .line 5
    invoke-interface {p2, p4}, Lq0/c;->d(Lq0/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, p3, p4}, Lcom/bumptech/glide/i;->u0(Lq0/a;Lq0/c;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    invoke-static {p4}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lq0/c;

    invoke-interface {p0}, Lq0/c;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    .line 8
    invoke-interface {p4}, Lq0/c;->i()V

    :cond_0
    return-object p1

    .line 9
    :cond_1
    iget-object p3, p0, Lcom/bumptech/glide/i;->F:Lcom/bumptech/glide/j;

    invoke-virtual {p3, p1}, Lcom/bumptech/glide/j;->n(Lr0/h;)V

    .line 10
    invoke-interface {p1, p2}, Lr0/h;->c(Lq0/c;)V

    .line 11
    iget-object p0, p0, Lcom/bumptech/glide/i;->F:Lcom/bumptech/glide/j;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/j;->x(Lr0/h;Lq0/c;)V

    return-object p1

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You must call #load() before calling #into()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private u0(Lq0/a;Lq0/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/a<",
            "*>;",
            "Lq0/c;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p1}, Lq0/a;->D()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lq0/c;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private x0(Ljava/lang/Object;)Lcom/bumptech/glide/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/i;->K:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/bumptech/glide/i;->Q:Z

    return-object p0
.end method

.method private y0(Ljava/lang/Object;Lr0/h;Lq0/e;Lq0/a;Lq0/d;Lcom/bumptech/glide/k;Lcom/bumptech/glide/f;IILjava/util/concurrent/Executor;)Lq0/c;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lr0/h<",
            "TTranscodeType;>;",
            "Lq0/e<",
            "TTranscodeType;>;",
            "Lq0/a<",
            "*>;",
            "Lq0/d;",
            "Lcom/bumptech/glide/k<",
            "*-TTranscodeType;>;",
            "Lcom/bumptech/glide/f;",
            "II",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lq0/c;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bumptech/glide/i;->E:Landroid/content/Context;

    iget-object v2, v0, Lcom/bumptech/glide/i;->I:Lcom/bumptech/glide/d;

    iget-object v3, v0, Lcom/bumptech/glide/i;->K:Ljava/lang/Object;

    iget-object v4, v0, Lcom/bumptech/glide/i;->G:Ljava/lang/Class;

    iget-object v11, v0, Lcom/bumptech/glide/i;->L:Ljava/util/List;

    .line 2
    invoke-virtual {v2}, Lcom/bumptech/glide/d;->f()La0/k;

    move-result-object v13

    .line 3
    invoke-virtual/range {p6 .. p6}, Lcom/bumptech/glide/k;->b()Ls0/c;

    move-result-object v14

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v15, p10

    .line 4
    invoke-static/range {v0 .. v15}, Lq0/h;->y(Landroid/content/Context;Lcom/bumptech/glide/d;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lq0/a;IILcom/bumptech/glide/f;Lr0/h;Lq0/e;Ljava/util/List;Lq0/d;La0/k;Ls0/c;Ljava/util/concurrent/Executor;)Lq0/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lq0/a;)Lq0/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/i;->j0(Lq0/a;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/i;->n0()Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e()Lq0/a;
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/i;->n0()Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public i0(Lq0/e;)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/e<",
            "TTranscodeType;>;)",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/i;->L:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/i;->L:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->L:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public j0(Lq0/a;)Lcom/bumptech/glide/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/a<",
            "*>;)",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-super {p0, p1}, Lq0/a;->a(Lq0/a;)Lq0/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/i;

    return-object p0
.end method

.method public n0()Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lq0/a;->e()Lq0/a;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/i;

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/i;->J:Lcom/bumptech/glide/k;

    invoke-virtual {v0}, Lcom/bumptech/glide/k;->a()Lcom/bumptech/glide/k;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i;->J:Lcom/bumptech/glide/k;

    return-object p0
.end method

.method public q0(Lr0/h;)Lr0/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lr0/h<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    invoke-static {}, Lu0/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/bumptech/glide/i;->r0(Lr0/h;Lq0/e;Ljava/util/concurrent/Executor;)Lr0/h;

    move-result-object p0

    return-object p0
.end method

.method r0(Lr0/h;Lq0/e;Ljava/util/concurrent/Executor;)Lr0/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lr0/h<",
            "TTranscodeType;>;>(TY;",
            "Lq0/e<",
            "TTranscodeType;>;",
            "Ljava/util/concurrent/Executor;",
            ")TY;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p0, p3}, Lcom/bumptech/glide/i;->s0(Lr0/h;Lq0/e;Lq0/a;Ljava/util/concurrent/Executor;)Lr0/h;

    move-result-object p0

    return-object p0
.end method

.method public t0(Landroid/widget/ImageView;)Lr0/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lr0/i<",
            "Landroid/widget/ImageView;",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lu0/k;->a()V

    .line 2
    invoke-static {p1}, Lu0/j;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lq0/a;->K()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lq0/a;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/bumptech/glide/i$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7
    :pswitch_0
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/a;->O()Lq0/a;

    move-result-object v0

    goto :goto_1

    .line 8
    :pswitch_1
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/a;->P()Lq0/a;

    move-result-object v0

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/a;->O()Lq0/a;

    move-result-object v0

    goto :goto_1

    .line 10
    :pswitch_3
    invoke-virtual {p0}, Lq0/a;->e()Lq0/a;

    move-result-object v0

    invoke-virtual {v0}, Lq0/a;->N()Lq0/a;

    move-result-object v0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/i;->I:Lcom/bumptech/glide/d;

    iget-object v2, p0, Lcom/bumptech/glide/i;->G:Ljava/lang/Class;

    .line 12
    invoke-virtual {v1, p1, v2}, Lcom/bumptech/glide/d;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lr0/i;

    move-result-object p1

    const/4 v1, 0x0

    .line 13
    invoke-static {}, Lu0/e;->b()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 14
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/bumptech/glide/i;->s0(Lr0/h;Lq0/e;Lq0/a;Ljava/util/concurrent/Executor;)Lr0/h;

    move-result-object p0

    check-cast p0, Lr0/i;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public v0(Ljava/lang/Object;)Lcom/bumptech/glide/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/i;->x0(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method

.method public w0(Ljava/lang/String;)Lcom/bumptech/glide/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/i<",
            "TTranscodeType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/i;->x0(Ljava/lang/Object;)Lcom/bumptech/glide/i;

    move-result-object p0

    return-object p0
.end method
