.class public final Lk3/e$d;
.super Ljava/lang/Object;
.source "OcrEntityExtractor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Ll3/a$f;ZLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/a$f;",
            "Z",
            "Ljava/util/List<",
            "Lk3/e$a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1
    invoke-virtual {p1}, Ll3/a$f;->f()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ll6/q;->h(Ljava/util/List;)I

    move-result v1

    .line 2
    invoke-virtual {p1}, Ll3/a$f;->f()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Ll6/q;->l()V

    :cond_0
    check-cast v5, Ll3/a$h;

    if-ne v4, v1, :cond_1

    const/4 v4, 0x1

    move-object v7, p0

    move-object v8, p1

    goto :goto_1

    :cond_1
    move-object v7, p0

    move-object v8, p1

    move v4, v3

    .line 4
    :goto_1
    invoke-direct {p0, v5, v4, v0, p1}, Lk3/e$d;->c(Ll3/a$h;ZLjava/util/List;Ll3/a$f;)V

    move v4, v6

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 5
    new-instance v1, Lk3/e$a;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    const/4 v12, 0x0

    const-string v5, "\n"

    const-string/jumbo v7, "whitespace line"

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lk3/e$a;-><init>(Ljava/lang/String;Ll3/a$h;Ljava/lang/String;Ljava/util/List;Ll3/a$f;Lk3/e$e;ILkotlin/jvm/internal/g;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private final c(Ll3/a$h;ZLjava/util/List;Ll3/a$f;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/a$h;",
            "Z",
            "Ljava/util/List<",
            "Lk3/e$a;",
            ">;",
            "Ll3/a$f;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1
    new-instance v8, Lk3/e$e;

    invoke-virtual/range {p1 .. p1}, Ll3/a$h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lk3/e$e;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ll3/a$h;->c()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/a$b;

    .line 4
    invoke-virtual {v1}, Ll3/a$b;->d()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v11, p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v10, Lk3/e$a;

    move-object/from16 v11, p0

    .line 6
    invoke-direct {v11, v1}, Lk3/e$d;->d(Ll3/a$b;)Ljava/util/List;

    move-result-object v5

    const-string v4, ""

    move-object v1, v10

    move-object/from16 v3, p1

    move-object/from16 v6, p4

    move-object v7, v8

    .line 7
    invoke-direct/range {v1 .. v7}, Lk3/e$a;-><init>(Ljava/lang/String;Ll3/a$h;Ljava/lang/String;Ljava/util/List;Ll3/a$f;Lk3/e$e;)V

    .line 8
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 9
    new-instance v1, Lk3/e$a;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x30

    const/16 v18, 0x0

    const-string v11, " "

    const-string/jumbo v13, "whitespace word"

    move-object v10, v1

    invoke-direct/range {v10 .. v18}, Lk3/e$a;-><init>(Ljava/lang/String;Ll3/a$h;Ljava/lang/String;Ljava/util/List;Ll3/a$f;Lk3/e$e;ILkotlin/jvm/internal/g;)V

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private final d(Ll3/a$b;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/a$b;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ll3/a$b;->c()[Landroid/graphics/Point;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/graphics/Point;

    :cond_0
    invoke-static {p0}, Ll6/h;->v([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ll3/a$a;ZLjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/a$a;",
            "Z",
            "Ljava/util/List<",
            "Lk3/e$a;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "blockInfo"

    move-object v2, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "seq"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ll3/a$a;->c()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ll6/q;->h(Ljava/util/List;)I

    move-result v1

    .line 2
    invoke-virtual {p1}, Ll3/a$a;->c()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Ll6/q;->l()V

    :cond_0
    check-cast v5, Ll3/a$f;

    if-ne v4, v1, :cond_1

    const/4 v4, 0x1

    move-object v7, p0

    goto :goto_1

    :cond_1
    move-object v7, p0

    move v4, v3

    .line 4
    :goto_1
    invoke-direct {p0, v5, v4, v0}, Lk3/e$d;->b(Ll3/a$f;ZLjava/util/List;)V

    move v4, v6

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 5
    new-instance v1, Lk3/e$a;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x30

    const/4 v12, 0x0

    const-string v5, "\n"

    const-string/jumbo v7, "whitespace block"

    move-object v4, v1

    invoke-direct/range {v4 .. v12}, Lk3/e$a;-><init>(Ljava/lang/String;Ll3/a$h;Ljava/lang/String;Ljava/util/List;Ll3/a$f;Lk3/e$e;ILkotlin/jvm/internal/g;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method
