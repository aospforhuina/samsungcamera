.class public final Ll3/f;
.super Ljava/lang/Object;
.source "OcrResultConverter.kt"


# static fields
.field public static final a:Ll3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/f;

    invoke-direct {v0}, Ll3/f;-><init>()V

    sput-object v0, Ll3/f;->a:Ll3/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Rect;Lk4/j$c;)Ll3/a$a;
    .locals 0

    invoke-static {p0, p1}, Ll3/f;->l(Landroid/graphics/Rect;Lk4/j$c;)Ll3/a$a;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/graphics/Rect;Lk4/j$g;)Ll3/a$h;
    .locals 0

    invoke-static {p0, p1}, Ll3/f;->u(Landroid/graphics/Rect;Lk4/j$g;)Ll3/a$h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/graphics/Rect;Lk4/j$d;)Ll3/a$b;
    .locals 0

    invoke-static {p0, p1}, Ll3/f;->n(Landroid/graphics/Rect;Lk4/j$d;)Ll3/a$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/graphics/Rect;Lk4/j$e;)Ll3/a$f;
    .locals 0

    invoke-static {p0, p1}, Ll3/f;->q(Landroid/graphics/Rect;Lk4/j$e;)Ll3/a$f;

    move-result-object p0

    return-object p0
.end method

.method private final f(Ljava/util/List;Lk4/j$c;Landroid/graphics/Rect;)Ll3/a$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll3/a$f;",
            ">;",
            "Lk4/j$c;",
            "Landroid/graphics/Rect;",
            ")",
            "Ll3/a$a;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll3/a$a;

    .line 2
    invoke-virtual {p2}, Lk4/j$c;->c()[Landroid/graphics/Point;

    move-result-object v1

    const-string v2, "blockData.rect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Ll3/f;->s([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lk4/j$c;->c()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Ll3/f;->r([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p0

    .line 4
    invoke-direct {v0, p1, v1, p0}, Ll3/a$a;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final g(Lk4/j$d;Landroid/graphics/Rect;)Ll3/a$b;
    .locals 4

    .line 1
    new-instance v0, Ll3/a$b;

    .line 2
    invoke-virtual {p1}, Lk4/j$d;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charData.text"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lk4/j$d;->c()[Landroid/graphics/Point;

    move-result-object v2

    const-string v3, "charData.rect"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Ll3/f;->s([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lk4/j$d;->c()[Landroid/graphics/Point;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ll3/f;->r([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p0

    .line 5
    invoke-direct {v0, v1, v2, p0}, Ll3/a$b;-><init>(Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final h(Ljava/util/List;Lk4/j$e;Landroid/graphics/Rect;)Ll3/a$f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ll3/a$h;",
            ">;",
            "Lk4/j$e;",
            "Landroid/graphics/Rect;",
            ")",
            "Ll3/a$f;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll3/a$f;

    .line 2
    invoke-virtual {p2}, Lk4/j$e;->c()[Landroid/graphics/Point;

    move-result-object v1

    const-string v2, "lineData.rect"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p3}, Ll3/f;->s([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lk4/j$e;->c()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Ll3/f;->r([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object p0

    .line 4
    invoke-direct {v0, p1, v1, p0}, Ll3/a$f;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;)V

    return-object v0
.end method

.method private final j(Ljava/util/List;Lk4/j$g;Landroid/graphics/Rect;)Ll3/a$h;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ll3/a$b;",
            ">;",
            "Lk4/j$g;",
            "Landroid/graphics/Rect;",
            ")",
            "Ll3/a$h;"
        }
    .end annotation

    .line 1
    new-instance v7, Ll3/a$h;

    .line 2
    invoke-virtual {p2}, Lk4/j$g;->c()[Landroid/graphics/Point;

    move-result-object v0

    const-string/jumbo v1, "wordData.rect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3}, Ll3/f;->s([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 3
    invoke-virtual {p2}, Lk4/j$g;->c()[Landroid/graphics/Point;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Ll3/f;->r([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    .line 4
    invoke-direct/range {v0 .. v6}, Ll3/a$h;-><init>(Ljava/util/List;Landroid/graphics/Rect;[Landroid/graphics/Point;Ljava/lang/Integer;ILkotlin/jvm/internal/g;)V

    return-object v7
.end method

.method private final k(Lk4/j;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk4/j;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Ll3/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lk4/j;->e()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Ll3/b;

    invoke-direct {p1, p2}, Ll3/b;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "resultFromOcr.blockDataL\u2026lect(Collectors.toList())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final l(Landroid/graphics/Rect;Lk4/j$c;)Ll3/a$a;
    .locals 3

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ll3/f;->a:Ll3/f;

    invoke-virtual {p1}, Lk4/j$c;->i()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "it.lineDataList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ll3/f;->p(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    const-string v2, "it"

    .line 2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p0}, Ll3/f;->f(Ljava/util/List;Lk4/j$c;Landroid/graphics/Rect;)Ll3/a$a;

    move-result-object p0

    return-object p0
.end method

.method private final m(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lk4/j$d;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Ll3/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Ll3/c;

    invoke-direct {p1, p2}, Ll3/c;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "characters.stream().map \u2026lect(Collectors.toList())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final n(Landroid/graphics/Rect;Lk4/j$d;)Ll3/a$b;
    .locals 2

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ll3/f;->a:Ll3/f;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, p0}, Ll3/f;->g(Lk4/j$d;Landroid/graphics/Rect;)Ll3/a$b;

    move-result-object p0

    return-object p0
.end method

.method private final p(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lk4/j$e;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Ll3/a$f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Ll3/d;

    invoke-direct {p1, p2}, Ll3/d;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "lines.stream().map {\n   \u2026lect(Collectors.toList())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final q(Landroid/graphics/Rect;Lk4/j$e;)Ll3/a$f;
    .locals 3

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ll3/f;->a:Ll3/f;

    invoke-virtual {p1}, Lk4/j$e;->j()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "it.wordDataList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ll3/f;->t(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    const-string v2, "it"

    .line 2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p0}, Ll3/f;->h(Ljava/util/List;Lk4/j$e;Landroid/graphics/Rect;)Ll3/a$f;

    move-result-object p0

    return-object p0
.end method

.method private final r([Landroid/graphics/Point;Landroid/graphics/Rect;)[Landroid/graphics/Point;
    .locals 3

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/b;->a([Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 3
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private final s([Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ll3/f;->o()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->left:I

    .line 3
    aget-object v0, p1, v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x2

    .line 4
    aget-object v1, p1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/graphics/Rect;->right:I

    .line 5
    aget-object p1, p1, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method private final t(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lk4/j$g;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List<",
            "Ll3/a$h;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Ll3/e;

    invoke-direct {p1, p2}, Ll3/e;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 2
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "words.stream().map {\n   \u2026lect(Collectors.toList())"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final u(Landroid/graphics/Rect;Lk4/j$g;)Ll3/a$h;
    .locals 3

    const-string v0, "$validRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ll3/f;->a:Ll3/f;

    invoke-virtual {p1}, Lk4/j$g;->i()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "it.charDataList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Ll3/f;->m(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v1

    const-string v2, "it"

    .line 2
    invoke-static {p1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p0}, Ll3/f;->j(Ljava/util/List;Lk4/j$g;Landroid/graphics/Rect;)Ll3/a$h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final e(Landroid/content/Context;Lk4/j;Landroid/graphics/Rect;)Ll3/a;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultFromOcr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "validRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ll3/a;

    invoke-direct {p0, p2, p3}, Ll3/f;->k(Lk4/j;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ll3/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/g;)V

    const/4 p2, 0x2

    new-array p2, p2, [Lk3/d;

    .line 2
    sget-object v1, Lk3/d;->f:Lk3/d;

    const/4 v2, 0x0

    aput-object v1, p2, v2

    sget-object v1, Lk3/d;->d:Lk3/d;

    const/4 v2, 0x1

    aput-object v1, p2, v2

    invoke-static {p2}, Ll6/q;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, v0, p2, p3}, Ll3/f;->i(Landroid/content/Context;Ll3/a;Ljava/util/List;Landroid/graphics/Rect;)Ll3/a;

    move-result-object p0

    return-object p0
.end method

.method public final i(Landroid/content/Context;Ll3/a;Ljava/util/List;Landroid/graphics/Rect;)Ll3/a;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ll3/a;",
            "Ljava/util/List<",
            "+",
            "Lk3/d;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ll3/a;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "context"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ocrResult"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "entityTypes"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Lk3/e;

    invoke-direct {v3, v0}, Lk3/e;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    .line 2
    invoke-virtual {v3, v1, v2, v0}, Lk3/e;->j(Ll3/a;Ljava/util/List;Landroid/graphics/Rect;)Lk3/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lk3/a;->c()Ljava/util/List;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Ll6/q;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 6
    check-cast v5, Lk3/b;

    .line 7
    invoke-virtual {v5}, Lk3/b;->e()Ljava/lang/String;

    move-result-object v7

    .line 8
    invoke-virtual {v5}, Lk3/b;->f()Lk3/d;

    move-result-object v6

    invoke-virtual {v6}, Lk3/d;->b()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {v5}, Lk3/b;->c()Landroid/graphics/Rect;

    move-result-object v9

    .line 10
    invoke-virtual {v5}, Lk3/b;->b()Ljava/util/List;

    move-result-object v6

    const/4 v10, 0x0

    new-array v11, v10, [Landroid/graphics/Point;

    .line 11
    invoke-interface {v6, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    const-string v11, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v6, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v12, v6

    check-cast v12, [Landroid/graphics/Point;

    .line 12
    invoke-virtual {v5}, Lk3/b;->g()Ljava/util/List;

    move-result-object v6

    .line 13
    new-instance v13, Ljava/util/ArrayList;

    invoke-static {v6, v4}, Ll6/q;->m(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 15
    check-cast v14, Lk3/f;

    .line 16
    new-instance v15, Ll3/a$g;

    invoke-virtual {v14}, Lk3/f;->a()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v14}, Lk3/f;->b()Landroid/graphics/PointF;

    move-result-object v14

    invoke-direct {v15, v4, v14}, Ll3/a$g;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto :goto_1

    :cond_0
    new-array v4, v10, [Ll3/a$g;

    .line 17
    invoke-interface {v13, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, [Ll3/a$g;

    .line 18
    invoke-virtual {v5}, Lk3/b;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 19
    invoke-virtual {v5}, Lk3/b;->d()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    .line 20
    new-instance v5, Ll3/a$e;

    move-object v6, v5

    move-object v10, v12

    move-object v12, v4

    invoke-direct/range {v6 .. v13}, Ll3/a$e;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;[Landroid/graphics/Point;[Ll3/a$g;Ljava/lang/Integer;Ljava/lang/Float;)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xa

    goto/16 :goto_0

    .line 21
    :cond_1
    invoke-static {v3}, Ll6/q;->G(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 22
    new-instance v3, Ll3/a;

    .line 23
    invoke-virtual/range {p2 .. p2}, Ll3/a;->c()Ljava/util/List;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lk3/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {v3, v1, v2, v0}, Ll3/a;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v3
.end method

.method public final o()Landroid/graphics/Rect;
    .locals 0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method
