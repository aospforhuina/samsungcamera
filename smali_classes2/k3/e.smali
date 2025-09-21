.class public final Lk3/e;
.super Ljava/lang/Object;
.source "OcrEntityExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/e$b;,
        Lk3/e$e;,
        Lk3/e$a;,
        Lk3/e$d;,
        Lk3/e$c;
    }
.end annotation


# static fields
.field public static final b:Lk3/e$c;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk3/e$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk3/e$c;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lk3/e;->b:Lk3/e$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lk3/e;Lk3/e$b;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lk3/e;->g(Lk3/e$b;III)V

    return-void
.end method

.method public static final synthetic b(Lk3/e;Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lk3/e;->h(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lk3/e;Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk3/e;->i(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lk3/e;Lk3/e$b;II)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk3/e;->k(Lk3/e$b;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lk3/e;Lk3/e$b;II)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk3/e;->l(Lk3/e$b;II)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lk3/e;Lk3/e$b;II)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lk3/e;->r(Lk3/e$b;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final g(Lk3/e$b;III)V
    .locals 0

    .line 1
    :try_start_0
    sget-object p0, Lk6/k;->a:Lk6/k$a;

    .line 2
    invoke-virtual {p1}, Lk3/e$b;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk3/e$a;

    .line 4
    invoke-virtual {p1}, Lk3/e$a;->j()Ll3/a$h;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll3/a$h;->i(Ljava/lang/Integer;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p0, Lk6/q;->a:Lk6/q;

    .line 6
    invoke-static {p0}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    sget-object p1, Lk6/k;->a:Lk6/k$a;

    invoke-static {p0}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    :goto_1
    invoke-static {p0}, Lk6/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "OcrEntityExtractor"

    const-string p2, "assignLabelToWordInfo"

    invoke-static {p1, p2, p0}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private final h(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Ljava/util/List<",
            "+",
            "Lk3/d;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Ll6/q;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Lk3/d;

    .line 5
    invoke-virtual {v3}, Lk3/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ll6/q;->K(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 6
    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result p2

    invoke-static {v0, p2}, Ly6/e;->h(II)Ly6/d;

    move-result-object p2

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v2}, Ll6/q;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p2

    check-cast v2, Ll6/f0;

    invoke-virtual {v2}, Ll6/f0;->nextInt()I

    move-result v2

    .line 9
    invoke-virtual {p1, v2}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v0}, Ll6/q;->K(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 11
    invoke-static {p1, p0}, Ll6/q;->x(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method private final i(Landroid/view/textclassifier/TextLinks$TextLink;Ljava/util/List;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ll6/q;->s(Ljava/lang/Iterable;)La7/e;

    move-result-object p0

    .line 2
    new-instance p2, Lk3/e$f;

    invoke-direct {p2, p1}, Lk3/e$f;-><init>(Landroid/view/textclassifier/TextLinks$TextLink;)V

    invoke-static {p0, p2}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object p0

    .line 3
    new-instance p2, Lk3/e$g;

    invoke-direct {p2, p3}, Lk3/e$g;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object p0

    .line 4
    new-instance p2, Lk3/e$h;

    invoke-direct {p2, p1}, Lk3/e$h;-><init>(Landroid/view/textclassifier/TextLinks$TextLink;)V

    invoke-static {p0, p2}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object p0

    .line 5
    invoke-static {p0}, La7/h;->g(La7/e;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final k(Lk3/e$b;II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk3/e$b;",
            "II)",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lk6/k;->a:Lk6/k$a;

    .line 2
    invoke-virtual {p1}, Lk3/e$b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ll6/q;->u(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk3/e$a;

    .line 4
    invoke-static {p1}, Ll6/q;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk3/e$a;

    .line 5
    invoke-virtual {p2}, Lk3/e$a;->f()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lk3/e$a;->f()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-direct {p0, p2, p1}, Lk3/e;->p(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lk6/k;->a:Lk6/k$a;

    invoke-static {p0}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lk6/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "OcrEntityExtractor"

    const-string p3, "findPolyOrNull"

    invoke-static {p2, p3, p1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-static {p0}, Lk6/k;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final l(Lk3/e$b;II)Landroid/graphics/Rect;
    .locals 3

    const-string v0, "OcrEntityExtractor"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    sget-object v2, Lk6/k;->a:Lk6/k$a;

    .line 2
    invoke-virtual {p1}, Lk3/e$b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ll6/q;->u(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk3/e$a;

    .line 4
    invoke-static {p1}, Ll6/q;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk3/e$a;

    .line 5
    invoke-virtual {p2}, Lk3/e$a;->g()Landroid/graphics/Rect;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lk3/e$a;->g()Landroid/graphics/Rect;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 7
    :cond_1
    invoke-direct {p0, p2, p1}, Lk3/e;->o(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lk3/e;->m(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "findRectOrNull, invalid rect: "

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf3/a;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :cond_2
    return-object p1

    :catchall_0
    move-exception p0

    .line 10
    sget-object p1, Lk6/k;->a:Lk6/k$a;

    invoke-static {p0}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lk6/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "findRectOrNull"

    invoke-static {v0, p2, p1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-static {p0}, Lk6/k;->c(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    check-cast v1, Landroid/graphics/Rect;

    return-object v1
.end method

.method private final m(Landroid/graphics/Rect;)Z
    .locals 3

    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method private final n(Ll3/a;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ll3/a;->g()Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ll3/a$h;

    const/4 v0, -0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ll3/a$h;->i(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final o(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance p0, Landroid/graphics/Rect;

    .line 2
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 6
    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private final p(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroid/graphics/Point;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x4

    new-array p0, p0, [Landroid/graphics/Point;

    .line 1
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, p0, v1

    .line 2
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, p0, v1

    .line 3
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, p0, v1

    .line 4
    new-instance p2, Landroid/graphics/Point;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-direct {p2, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    aput-object p2, p0, v0

    .line 5
    invoke-static {p0}, Ll6/q;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final r(Lk3/e$b;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk3/e$b;",
            "II)",
            "Ljava/util/List<",
            "Lk3/f;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    .line 1
    :try_start_0
    sget-object v0, Lk6/k;->a:Lk6/k$a;

    .line 2
    invoke-virtual {p1}, Lk3/e$b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ll6/q;->u(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lk3/e$a;

    .line 4
    invoke-static {p1}, Ll6/q;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lk3/e$a;

    .line 5
    invoke-virtual {p2}, Lk3/e$a;->b()Landroid/graphics/Point;

    move-result-object p2

    if-nez p2, :cond_0

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lk3/e$a;->h()Landroid/graphics/Point;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 7
    :cond_1
    new-instance p3, Lk3/f;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p1}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    invoke-direct {p3, v0, p2}, Lk3/f;-><init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    .line 8
    invoke-static {p3}, Ll6/q;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    sget-object p2, Lk6/k;->a:Lk6/k$a;

    invoke-static {p1}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lk6/k;->b(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "OcrEntityExtractor"

    const-string/jumbo v0, "toUnderLineOrNull"

    invoke-static {p3, v0, p2}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-static {p1}, Lk6/k;->c(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, p1

    :goto_0
    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final j(Ll3/a;Ljava/util/List;Landroid/graphics/Rect;)Lk3/a;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/a;",
            "Ljava/util/List<",
            "+",
            "Lk3/d;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Lk3/a;"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v0, p2

    const-string v1, "ocrResult"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "entityTypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSS|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ","

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v11, 0x0

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v11}, Ll6/q;->A(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lu6/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2
    new-instance v1, Lk3/a;

    invoke-static {}, Ll6/q;->g()Ljava/util/List;

    move-result-object v3

    const-string v7, ""

    invoke-direct {v1, v6, v3, v7}, Lk3/a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Ll3/a;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lk3/e;->q(Ll3/a;)Lk3/e$b;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lk3/e$b;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v4}, Lb7/e;->U(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v8, 0x0

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v8

    :goto_0
    if-eqz v4, :cond_2

    return-object v1

    .line 6
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v0, v9}, Ll6/q;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 8
    check-cast v10, Lk3/d;

    .line 9
    invoke-virtual {v10}, Lk3/d;->b()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v4}, Ll6/q;->J(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v9, "url"

    .line 11
    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v10, "address"

    .line 12
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance v11, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-virtual {v3}, Lk3/e$b;->c()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v13, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    invoke-direct {v13}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;-><init>()V

    .line 15
    invoke-virtual {v13, v8}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->includeTypesFromTextClassifier(Z)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v13

    .line 16
    invoke-virtual {v13, v4}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->setIncludedTypes(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Landroid/view/textclassifier/TextClassifier$EntityConfig$Builder;->build()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v4

    .line 18
    invoke-virtual {v11, v4}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v4

    .line 19
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v13, "text_source_type_id"

    const-string v14, "image"

    .line 20
    invoke-virtual {v11, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    sget-object v13, Lk6/q;->a:Lk6/q;

    .line 22
    invoke-virtual {v4, v11}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v4

    .line 23
    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v4

    const-string v11, "Builder(sequence.text)\n \u2026  })\n            .build()"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v11, v2, Lk3/e;->a:Landroid/content/Context;

    const-class v13, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/textclassifier/TextClassificationManager;

    .line 25
    invoke-virtual {v11}, Landroid/view/textclassifier/TextClassificationManager;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v11

    const-string v4, "context.getSystemService\u2026er.generateLinks(request)"

    invoke-static {v11, v4}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v11}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const-string v13, "languageTag"

    const-string v14, "OcrEntityExtractor"

    const-string v15, "languageTags"

    if-eqz v4, :cond_4

    .line 27
    invoke-virtual {v11}, Landroid/view/textclassifier/TextLinks;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v15, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "extractEntity, links empty case. languageTag: "

    .line 28
    invoke-static {v0, v3}, Lkotlin/jvm/internal/l;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 29
    invoke-static {v3, v13}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move v4, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lk3/a;->b(Lk3/a;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lk3/a;

    move-result-object v0

    return-object v0

    .line 30
    :cond_4
    invoke-virtual {v3, v11}, Lk3/e$b;->a(Landroid/view/textclassifier/TextLinks;)V

    .line 31
    invoke-virtual {v11}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v1

    const-string/jumbo v4, "textLinks.links"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v17, v1

    move-object v1, v8

    check-cast v1, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 34
    invoke-virtual {v1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v18

    const/4 v12, 0x0

    if-lez v18, :cond_5

    const/16 v18, 0x1

    goto :goto_3

    :cond_5
    const/16 v18, 0x0

    :goto_3
    invoke-virtual {v1, v12}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    and-int v1, v18, v1

    if-eqz v1, :cond_6

    invoke-interface {v5, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v12, p1

    move-object/from16 v1, v17

    const/4 v8, 0x0

    goto :goto_2

    .line 35
    :cond_7
    invoke-static {v5}, Ll6/q;->G(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-virtual {v11}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/view/textclassifier/TextLinks$TextLink;

    .line 39
    invoke-virtual {v12}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntityCount()I

    move-result v17

    if-lez v17, :cond_8

    move-object/from16 v17, v5

    const/4 v5, 0x0

    const/16 v16, 0x1

    goto :goto_5

    :cond_8
    move-object/from16 v17, v5

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_5
    invoke-virtual {v12, v5}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    and-int v12, v16, v12

    if-eqz v12, :cond_9

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v5, v17

    goto :goto_4

    :cond_a
    const/4 v5, 0x0

    .line 40
    invoke-static {v8}, Ll6/q;->G(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v8

    .line 41
    invoke-direct/range {p0 .. p1}, Lk3/e;->n(Ll3/a;)V

    .line 42
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 43
    new-instance v5, Lk3/c;

    invoke-direct {v5}, Lk3/c;-><init>()V

    .line 44
    invoke-virtual {v11}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {v10}, Ll6/q;->s(Ljava/lang/Iterable;)La7/e;

    move-result-object v4

    .line 46
    sget-object v10, Lk3/e$i;->a:Lk3/e$i;

    invoke-static {v4, v10}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object v4

    .line 47
    new-instance v10, Lk3/e$j;

    invoke-direct {v10, v2, v0}, Lk3/e$j;-><init>(Lk3/e;Ljava/util/List;)V

    invoke-static {v4, v10}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object v0

    .line 48
    new-instance v4, Lk3/e$k;

    invoke-direct {v4, v2, v1}, Lk3/e$k;-><init>(Lk3/e;Ljava/util/List;)V

    invoke-static {v0, v4}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object v0

    .line 49
    new-instance v1, Lk3/e$l;

    invoke-direct {v1, v2, v8}, Lk3/e$l;-><init>(Lk3/e;Ljava/util/List;)V

    invoke-static {v0, v1}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object v0

    .line 50
    new-instance v1, Lk3/e$m;

    invoke-direct {v1, v3}, Lk3/e$m;-><init>(Lk3/e$b;)V

    invoke-static {v0, v1}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object v0

    .line 51
    new-instance v1, Lk3/e$n;

    invoke-direct {v1, v3}, Lk3/e$n;-><init>(Lk3/e$b;)V

    invoke-static {v0, v1}, La7/h;->h(La7/e;Lu6/l;)La7/e;

    move-result-object v8

    .line 52
    new-instance v10, Lk3/e$o;

    move-object v0, v10

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lk3/e$o;-><init>(Lk3/e$b;Lk3/e;Ljava/util/concurrent/atomic/AtomicInteger;Lk3/c;Landroid/graphics/Rect;)V

    invoke-static {v8, v10}, La7/h;->k(La7/e;Lu6/l;)La7/e;

    move-result-object v0

    .line 53
    invoke-static {v0}, La7/h;->m(La7/e;)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-virtual {v11}, Landroid/view/textclassifier/TextLinks;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1, v15, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractEntity, links.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", languageTag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-static {v14, v2}, Lf3/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v2, Lk3/a;

    invoke-static {v1, v13}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v6, v0, v1}, Lk3/a;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v2
.end method

.method public final q(Ll3/a;)Lk3/e$b;
    .locals 9

    const-string p0, "ocrResult"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Ll3/a;->c()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Ll6/q;->l()V

    :cond_0
    check-cast v3, Ll3/a$a;

    .line 4
    new-instance v5, Lk3/e$d;

    invoke-direct {v5}, Lk3/e$d;-><init>()V

    .line 5
    invoke-virtual {p1}, Ll3/a;->c()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ll6/q;->h(Ljava/util/List;)I

    move-result v6

    if-ne v2, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 6
    :goto_1
    invoke-virtual {v5, v3, v2, p0}, Lk3/e$d;->a(Ll3/a$a;ZLjava/util/List;)V

    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    sget-object v6, Lk3/e$p;->a:Lk3/e$p;

    const/16 v7, 0x1e

    const/4 v8, 0x0

    const-string v1, ""

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Ll6/q;->A(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lu6/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Lk3/e$b;

    invoke-direct {v0, p1, p0}, Lk3/e$b;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
