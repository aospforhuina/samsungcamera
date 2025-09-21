.class final Lk3/e$o;
.super Lkotlin/jvm/internal/m;
.source "OcrEntityExtractor.kt"

# interfaces
.implements Lu6/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk3/e;->j(Ll3/a;Ljava/util/List;Landroid/graphics/Rect;)Lk3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/l<",
        "Landroid/view/textclassifier/TextLinks$TextLink;",
        "Lk3/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lk3/e$b;

.field final synthetic b:Lk3/e;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic d:Lk3/c;

.field final synthetic f:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lk3/e$b;Lk3/e;Ljava/util/concurrent/atomic/AtomicInteger;Lk3/c;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lk3/e$o;->a:Lk3/e$b;

    iput-object p2, p0, Lk3/e$o;->b:Lk3/e;

    iput-object p3, p0, Lk3/e$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lk3/e$o;->d:Lk3/c;

    iput-object p5, p0, Lk3/e$o;->f:Landroid/graphics/Rect;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/textclassifier/TextLinks$TextLink;)Lk3/b;
    .locals 11

    .line 1
    sget-object v0, Lk3/d;->b:Lk3/d$a;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEntity(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "link.getEntity(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lk3/d$a;->a(Ljava/lang/String;)Lk3/d;

    move-result-object v4

    .line 2
    iget-object v0, p0, Lk3/e$o;->a:Lk3/e$b;

    invoke-virtual {v0}, Lk3/e$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v2

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk3/e$o;->b:Lk3/e;

    iget-object v1, p0, Lk3/e$o;->a:Lk3/e$b;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lk3/e;->e(Lk3/e;Lk3/e$b;II)Landroid/graphics/Rect;

    move-result-object v6

    const/4 v0, 0x0

    if-nez v6, :cond_0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lk3/e$o;->b:Lk3/e;

    iget-object v2, p0, Lk3/e$o;->a:Lk3/e$b;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v7

    invoke-static {v1, v2, v3, v7}, Lk3/e;->d(Lk3/e;Lk3/e$b;II)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Lk3/e$o;->b:Lk3/e;

    iget-object v2, p0, Lk3/e$o;->a:Lk3/e$b;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v8

    invoke-static {v1, v2, v3, v8}, Lk3/e;->f(Lk3/e;Lk3/e$b;II)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_2

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lk3/e$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    .line 7
    iget-object v0, p0, Lk3/e$o;->b:Lk3/e;

    iget-object v1, p0, Lk3/e$o;->a:Lk3/e$b;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result p1

    invoke-static {v0, v1, v2, p1, v9}, Lk3/e;->a(Lk3/e;Lk3/e$b;III)V

    .line 8
    iget-object p1, p0, Lk3/e$o;->d:Lk3/c;

    iget-object p0, p0, Lk3/e$o;->f:Landroid/graphics/Rect;

    invoke-virtual {p1, v5, v4, v6, p0}, Lk3/c;->d(Ljava/lang/String;Lk3/d;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v10

    .line 9
    new-instance p0, Lk3/b;

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lk3/b;-><init>(Lk3/d;Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/util/List;IF)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-virtual {p0, p1}, Lk3/e$o;->a(Landroid/view/textclassifier/TextLinks$TextLink;)Lk3/b;

    move-result-object p0

    return-object p0
.end method
