.class public final Ln2/e;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln2/e$f;
    }
.end annotation


# static fields
.field static final A:Ln2/v;

.field static final B:Ln2/v;

.field private static final C:Lcom/google/gson/reflect/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/reflect/a<",
            "*>;"
        }
    .end annotation
.end field

.field static final y:Ljava/lang/String;

.field static final z:Ln2/d;


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/google/gson/reflect/a<",
            "*>;",
            "Ln2/e$f<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/gson/reflect/a<",
            "*>;",
            "Ln2/w<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lp2/c;

.field private final d:Lq2/e;

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln2/x;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lp2/d;

.field final g:Ln2/d;

.field final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ln2/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field final i:Z

.field final j:Z

.field final k:Z

.field final l:Z

.field final m:Z

.field final n:Z

.field final o:Z

.field final p:Z

.field final q:Ljava/lang/String;

.field final r:I

.field final s:I

.field final t:Ln2/t;

.field final u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln2/x;",
            ">;"
        }
    .end annotation
.end field

.field final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln2/x;",
            ">;"
        }
    .end annotation
.end field

.field final w:Ln2/v;

.field final x:Ln2/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ln2/c;->a:Ln2/c;

    sput-object v0, Ln2/e;->z:Ln2/d;

    .line 2
    sget-object v0, Ln2/u;->a:Ln2/u;

    sput-object v0, Ln2/e;->A:Ln2/v;

    .line 3
    sget-object v0, Ln2/u;->b:Ln2/u;

    sput-object v0, Ln2/e;->B:Ln2/v;

    .line 4
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/gson/reflect/a;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/a;

    move-result-object v0

    sput-object v0, Ln2/e;->C:Lcom/google/gson/reflect/a;

    return-void
.end method

.method constructor <init>(Lp2/d;Ln2/d;Ljava/util/Map;ZZZZZZZZLn2/t;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;Ln2/v;Ln2/v;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp2/d;",
            "Ln2/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ln2/g<",
            "*>;>;ZZZZZZZZ",
            "Ln2/t;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ln2/x;",
            ">;",
            "Ljava/util/List<",
            "Ln2/x;",
            ">;",
            "Ljava/util/List<",
            "Ln2/x;",
            ">;",
            "Ln2/v;",
            "Ln2/v;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p5

    move/from16 v5, p10

    move/from16 v6, p11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Ljava/lang/ThreadLocal;

    invoke-direct {v7}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v7, v0, Ln2/e;->a:Ljava/lang/ThreadLocal;

    .line 3
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v7, v0, Ln2/e;->b:Ljava/util/Map;

    .line 4
    iput-object v1, v0, Ln2/e;->f:Lp2/d;

    .line 5
    iput-object v2, v0, Ln2/e;->g:Ln2/d;

    .line 6
    iput-object v3, v0, Ln2/e;->h:Ljava/util/Map;

    .line 7
    new-instance v7, Lp2/c;

    invoke-direct {v7, p3, v6}, Lp2/c;-><init>(Ljava/util/Map;Z)V

    iput-object v7, v0, Ln2/e;->c:Lp2/c;

    move/from16 v3, p4

    .line 8
    iput-boolean v3, v0, Ln2/e;->i:Z

    .line 9
    iput-boolean v4, v0, Ln2/e;->j:Z

    move/from16 v3, p6

    .line 10
    iput-boolean v3, v0, Ln2/e;->k:Z

    move/from16 v3, p7

    .line 11
    iput-boolean v3, v0, Ln2/e;->l:Z

    move/from16 v3, p8

    .line 12
    iput-boolean v3, v0, Ln2/e;->m:Z

    move/from16 v3, p9

    .line 13
    iput-boolean v3, v0, Ln2/e;->n:Z

    .line 14
    iput-boolean v5, v0, Ln2/e;->o:Z

    .line 15
    iput-boolean v6, v0, Ln2/e;->p:Z

    move-object/from16 v3, p12

    .line 16
    iput-object v3, v0, Ln2/e;->t:Ln2/t;

    move-object/from16 v6, p13

    .line 17
    iput-object v6, v0, Ln2/e;->q:Ljava/lang/String;

    move/from16 v6, p14

    .line 18
    iput v6, v0, Ln2/e;->r:I

    move/from16 v6, p15

    .line 19
    iput v6, v0, Ln2/e;->s:I

    move-object/from16 v6, p16

    .line 20
    iput-object v6, v0, Ln2/e;->u:Ljava/util/List;

    move-object/from16 v6, p17

    .line 21
    iput-object v6, v0, Ln2/e;->v:Ljava/util/List;

    move-object/from16 v6, p19

    .line 22
    iput-object v6, v0, Ln2/e;->w:Ln2/v;

    move-object/from16 v8, p20

    .line 23
    iput-object v8, v0, Ln2/e;->x:Ln2/v;

    .line 24
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 25
    sget-object v10, Lq2/n;->W:Ln2/x;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static/range {p19 .. p19}, Lq2/j;->e(Ln2/v;)Ln2/x;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p18

    .line 28
    invoke-interface {v9, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    sget-object v6, Lq2/n;->C:Ln2/x;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v6, Lq2/n;->m:Ln2/x;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v6, Lq2/n;->g:Ln2/x;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v6, Lq2/n;->i:Ln2/x;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v6, Lq2/n;->k:Ln2/x;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static/range {p12 .. p12}, Ln2/e;->n(Ln2/t;)Ln2/w;

    move-result-object v3

    .line 35
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Long;

    invoke-static {v6, v10, v3}, Lq2/n;->b(Ljava/lang/Class;Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Double;

    .line 37
    invoke-direct {p0, v5}, Ln2/e;->e(Z)Ln2/w;

    move-result-object v11

    .line 38
    invoke-static {v6, v10, v11}, Lq2/n;->b(Ljava/lang/Class;Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v10, Ljava/lang/Float;

    .line 40
    invoke-direct {p0, v5}, Ln2/e;->f(Z)Ln2/w;

    move-result-object v5

    .line 41
    invoke-static {v6, v10, v5}, Lq2/n;->b(Ljava/lang/Class;Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static/range {p20 .. p20}, Lq2/i;->e(Ln2/v;)Ln2/x;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v5, Lq2/n;->o:Ln2/x;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v5, Lq2/n;->q:Ln2/x;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    const-class v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Ln2/e;->b(Ln2/w;)Ln2/w;

    move-result-object v6

    invoke-static {v5, v6}, Lq2/n;->c(Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    const-class v5, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v3}, Ln2/e;->c(Ln2/w;)Ln2/w;

    move-result-object v3

    invoke-static {v5, v3}, Lq2/n;->c(Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v3, Lq2/n;->s:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v3, Lq2/n;->x:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v3, Lq2/n;->E:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v3, Lq2/n;->G:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v3, Ljava/math/BigDecimal;

    sget-object v5, Lq2/n;->z:Ln2/w;

    invoke-static {v3, v5}, Lq2/n;->c(Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v3, Ljava/math/BigInteger;

    sget-object v5, Lq2/n;->A:Ln2/w;

    invoke-static {v3, v5}, Lq2/n;->c(Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    const-class v3, Lp2/g;

    sget-object v5, Lq2/n;->B:Ln2/w;

    invoke-static {v3, v5}, Lq2/n;->c(Ljava/lang/Class;Ln2/w;)Ln2/x;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v3, Lq2/n;->I:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v3, Lq2/n;->K:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v3, Lq2/n;->O:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Lq2/n;->Q:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Lq2/n;->U:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Lq2/n;->M:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Lq2/n;->d:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Lq2/c;->b:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Lq2/n;->S:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-boolean v3, Lt2/d;->a:Z

    if-eqz v3, :cond_0

    .line 64
    sget-object v3, Lt2/d;->e:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Lt2/d;->d:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v3, Lt2/d;->f:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    sget-object v3, Lq2/a;->c:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v3, Lq2/n;->b:Ln2/x;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v3, Lq2/b;

    invoke-direct {v3, v7}, Lq2/b;-><init>(Lp2/c;)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v3, Lq2/h;

    invoke-direct {v3, v7, v4}, Lq2/h;-><init>(Lp2/c;Z)V

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Lq2/e;

    invoke-direct {v3, v7}, Lq2/e;-><init>(Lp2/c;)V

    iput-object v3, v0, Ln2/e;->d:Lq2/e;

    .line 72
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v4, Lq2/n;->X:Ln2/x;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v4, Lq2/k;

    invoke-direct {v4, v7, p2, p1, v3}, Lq2/k;-><init>(Lp2/c;Ln2/d;Lp2/d;Lq2/e;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln2/e;->e:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/Object;Lu2/a;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object p0

    sget-object p1, Lu2/b;->n:Lu2/b;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ln2/l;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Ln2/l;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lu2/d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ln2/l;

    invoke-direct {p1, p0}, Ln2/l;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 4
    new-instance p1, Ln2/s;

    invoke-direct {p1, p0}, Ln2/s;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private static b(Ln2/w;)Ln2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/w<",
            "Ljava/lang/Number;",
            ">;)",
            "Ln2/w<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln2/e$d;

    invoke-direct {v0, p0}, Ln2/e$d;-><init>(Ln2/w;)V

    .line 2
    invoke-virtual {v0}, Ln2/w;->a()Ln2/w;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ln2/w;)Ln2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/w<",
            "Ljava/lang/Number;",
            ">;)",
            "Ln2/w<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ln2/e$e;

    invoke-direct {v0, p0}, Ln2/e$e;-><init>(Ln2/w;)V

    .line 2
    invoke-virtual {v0}, Ln2/w;->a()Ln2/w;

    move-result-object p0

    return-object p0
.end method

.method static d(D)V
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e(Z)Ln2/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ln2/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lq2/n;->v:Ln2/w;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ln2/e$a;

    invoke-direct {p1, p0}, Ln2/e$a;-><init>(Ln2/e;)V

    return-object p1
.end method

.method private f(Z)Ln2/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ln2/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Lq2/n;->u:Ln2/w;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ln2/e$b;

    invoke-direct {p1, p0}, Ln2/e$b;-><init>(Ln2/e;)V

    return-object p1
.end method

.method private static n(Ln2/t;)Ln2/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln2/t;",
            ")",
            "Ln2/w<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ln2/t;->a:Ln2/t;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lq2/n;->t:Ln2/w;

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ln2/e$c;

    invoke-direct {p0}, Ln2/e$c;-><init>()V

    return-object p0
.end method


# virtual methods
.method public g(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln2/e;->o(Ljava/io/Reader;)Lu2/a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Ln2/e;->j(Lu2/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-static {p0, p1}, Ln2/e;->a(Ljava/lang/Object;Lu2/a;)V

    return-object p0
.end method

.method public h(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ln2/e;->i(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-static {p2}, Lp2/k;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public i(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0, p2}, Ln2/e;->g(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public j(Lu2/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu2/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lu2/a;->y()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Lu2/a;->Q(Z)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    const/4 v1, 0x0

    .line 4
    invoke-static {p2}, Lcom/google/gson/reflect/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/a;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Ln2/e;->k(Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Ln2/w;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p1, v0}, Lu2/a;->Q(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AssertionError (GSON 2.9.0): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p2, p0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10
    throw p2

    :catch_1
    move-exception p0

    .line 11
    new-instance p2, Ln2/s;

    invoke-direct {p2, p0}, Ln2/s;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p0

    .line 12
    new-instance p2, Ln2/s;

    invoke-direct {p2, p0}, Ln2/s;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p0

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lu2/a;->Q(Z)V

    return-object p0

    .line 14
    :cond_0
    :try_start_2
    new-instance p2, Ln2/s;

    invoke-direct {p2, p0}, Ln2/s;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Lu2/a;->Q(Z)V

    .line 16
    throw p0
.end method

.method public k(Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/reflect/a<",
            "TT;>;)",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/e;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Ln2/e;->C:Lcom/google/gson/reflect/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/w;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v0, p0, Ln2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v1, p0, Ln2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 5
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln2/e$f;

    if-eqz v2, :cond_3

    return-object v2

    .line 6
    :cond_3
    :try_start_0
    new-instance v2, Ln2/e$f;

    invoke-direct {v2}, Ln2/e$f;-><init>()V

    .line 7
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Ln2/e;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln2/x;

    .line 9
    invoke-interface {v4, p0, p1}, Ln2/x;->a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    invoke-virtual {v2, v4}, Ln2/e$f;->e(Ln2/w;)V

    .line 11
    iget-object v2, p0, Ln2/e;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 13
    iget-object p0, p0, Ln2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 14
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.9.0) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 16
    iget-object p0, p0, Ln2/e;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    .line 17
    :cond_7
    throw v2
.end method

.method public l(Ljava/lang/Class;)Ln2/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/gson/reflect/a;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln2/e;->k(Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object p0

    return-object p0
.end method

.method public m(Ln2/x;Lcom/google/gson/reflect/a;)Ln2/w;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ln2/x;",
            "Lcom/google/gson/reflect/a<",
            "TT;>;)",
            "Ln2/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln2/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Ln2/e;->d:Lq2/e;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Ln2/e;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln2/x;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-interface {v2, p0, p2}, Ln2/x;->a(Ln2/e;Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 5
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GSON cannot serialize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public o(Ljava/io/Reader;)Lu2/a;
    .locals 1

    .line 1
    new-instance v0, Lu2/a;

    invoke-direct {v0, p1}, Lu2/a;-><init>(Ljava/io/Reader;)V

    .line 2
    iget-boolean p0, p0, Ln2/e;->n:Z

    invoke-virtual {v0, p0}, Lu2/a;->Q(Z)V

    return-object v0
.end method

.method public p(Ljava/io/Writer;)Lu2/c;
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln2/e;->k:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lu2/c;

    invoke-direct {v0, p1}, Lu2/c;-><init>(Ljava/io/Writer;)V

    .line 4
    iget-boolean p1, p0, Ln2/e;->m:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 5
    invoke-virtual {v0, p1}, Lu2/c;->G(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-boolean p1, p0, Ln2/e;->l:Z

    invoke-virtual {v0, p1}, Lu2/c;->F(Z)V

    .line 7
    iget-boolean p1, p0, Ln2/e;->n:Z

    invoke-virtual {v0, p1}, Lu2/c;->H(Z)V

    .line 8
    iget-boolean p0, p0, Ln2/e;->i:Z

    invoke-virtual {v0, p0}, Lu2/c;->I(Z)V

    return-object v0
.end method

.method public q(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ln2/m;->a:Ln2/m;

    invoke-virtual {p0, p1}, Ln2/e;->s(Ln2/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ln2/e;->r(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public r(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Ln2/e;->t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public s(Ln2/k;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Ln2/e;->v(Ln2/k;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public t(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3}, Lp2/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ln2/e;->p(Ljava/io/Writer;)Lu2/c;

    move-result-object p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ln2/e;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;Lu2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ln2/l;

    invoke-direct {p1, p0}, Ln2/l;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Ln2/e;->i:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln2/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ln2/e;->c:Lp2/c;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(Ljava/lang/Object;Ljava/lang/reflect/Type;Lu2/c;)V
    .locals 4

    .line 1
    invoke-static {p2}, Lcom/google/gson/reflect/a;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln2/e;->k(Lcom/google/gson/reflect/a;)Ln2/w;

    move-result-object p2

    .line 2
    invoke-virtual {p3}, Lu2/c;->t()Z

    move-result v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p3, v1}, Lu2/c;->H(Z)V

    .line 4
    invoke-virtual {p3}, Lu2/c;->r()Z

    move-result v1

    .line 5
    iget-boolean v2, p0, Ln2/e;->l:Z

    invoke-virtual {p3, v2}, Lu2/c;->F(Z)V

    .line 6
    invoke-virtual {p3}, Lu2/c;->p()Z

    move-result v2

    .line 7
    iget-boolean p0, p0, Ln2/e;->i:Z

    invoke-virtual {p3, p0}, Lu2/c;->I(Z)V

    .line 8
    :try_start_0
    invoke-virtual {p2, p3, p1}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p3, v0}, Lu2/c;->H(Z)V

    .line 10
    invoke-virtual {p3, v1}, Lu2/c;->F(Z)V

    .line 11
    invoke-virtual {p3, v2}, Lu2/c;->I(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.9.0): "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 14
    throw p1

    :catch_1
    move-exception p0

    .line 15
    new-instance p1, Ln2/l;

    invoke-direct {p1, p0}, Ln2/l;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    invoke-virtual {p3, v0}, Lu2/c;->H(Z)V

    .line 17
    invoke-virtual {p3, v1}, Lu2/c;->F(Z)V

    .line 18
    invoke-virtual {p3, v2}, Lu2/c;->I(Z)V

    .line 19
    throw p0
.end method

.method public v(Ln2/k;Ljava/lang/Appendable;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2}, Lp2/l;->c(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ln2/e;->p(Ljava/io/Writer;)Lu2/c;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2}, Ln2/e;->w(Ln2/k;Lu2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ln2/l;

    invoke-direct {p1, p0}, Ln2/l;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public w(Ln2/k;Lu2/c;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lu2/c;->t()Z

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p2, v1}, Lu2/c;->H(Z)V

    .line 3
    invoke-virtual {p2}, Lu2/c;->r()Z

    move-result v1

    .line 4
    iget-boolean v2, p0, Ln2/e;->l:Z

    invoke-virtual {p2, v2}, Lu2/c;->F(Z)V

    .line 5
    invoke-virtual {p2}, Lu2/c;->p()Z

    move-result v2

    .line 6
    iget-boolean p0, p0, Ln2/e;->i:Z

    invoke-virtual {p2, p0}, Lu2/c;->I(Z)V

    .line 7
    :try_start_0
    invoke-static {p1, p2}, Lp2/l;->b(Ln2/k;Lu2/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p2, v0}, Lu2/c;->H(Z)V

    .line 9
    invoke-virtual {p2, v1}, Lu2/c;->F(Z)V

    .line 10
    invoke-virtual {p2, v2}, Lu2/c;->I(Z)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 11
    :try_start_1
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.9.0): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 13
    throw p1

    :catch_1
    move-exception p0

    .line 14
    new-instance p1, Ln2/l;

    invoke-direct {p1, p0}, Ln2/l;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    invoke-virtual {p2, v0}, Lu2/c;->H(Z)V

    .line 16
    invoke-virtual {p2, v1}, Lu2/c;->F(Z)V

    .line 17
    invoke-virtual {p2, v2}, Lu2/c;->I(Z)V

    .line 18
    throw p0
.end method

.method public x(Ljava/lang/Object;)Ln2/k;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Ln2/m;->a:Ln2/m;

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ln2/e;->y(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ln2/k;

    move-result-object p0

    return-object p0
.end method

.method public y(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ln2/k;
    .locals 1

    .line 1
    new-instance v0, Lq2/g;

    invoke-direct {v0}, Lq2/g;-><init>()V

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Ln2/e;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;Lu2/c;)V

    .line 3
    invoke-virtual {v0}, Lq2/g;->Q()Ln2/k;

    move-result-object p0

    return-object p0
.end method
