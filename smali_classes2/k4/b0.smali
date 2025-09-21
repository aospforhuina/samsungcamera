.class public Lk4/b0;
.super Ljava/lang/Object;
.source "SOCRConverter.java"


# direct methods
.method private static a(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)V
    .locals 15

    .line 1
    invoke-static {p0}, Lk4/b0;->h(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)Z

    move-result v0

    const-string v1, "SOCRConverter"

    if-nez v0, :cond_0

    const-string p0, "Word data is not legacy so it doesn\'t need to generate characters"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getLegacyText()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getCharRects()Ljava/util/ArrayList;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v2, :cond_2

    :goto_0
    if-ge v5, v2, :cond_1

    .line 7
    new-instance v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;-><init>()V

    add-int/lit8 v4, v5, 0x1

    .line 8
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setText(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/graphics/Point;

    invoke-virtual {v1, v5}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setRect([Landroid/graphics/Point;)V

    .line 10
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)V

    move v5, v4

    goto :goto_0

    :cond_1
    return-void

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getRect()[Landroid/graphics/Point;

    move-result-object v3

    .line 12
    aget-object v4, v3, v5

    const/4 v6, 0x1

    .line 13
    aget-object v7, v3, v6

    const/4 v8, 0x2

    .line 14
    aget-object v9, v3, v8

    const/4 v10, 0x3

    .line 15
    aget-object v3, v3, v10

    new-array v11, v6, [Ljava/lang/Object;

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    const-string v12, "Converting a word into %d character list"

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    :goto_1
    if-ge v1, v2, :cond_3

    .line 17
    new-instance v11, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    invoke-direct {v11}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;-><init>()V

    add-int/lit8 v12, v1, 0x1

    .line 18
    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setText(Ljava/lang/String;)V

    const/4 v13, 0x4

    new-array v13, v13, [Landroid/graphics/Point;

    .line 19
    invoke-static {v4, v7, v1, v2}, Lk4/b0;->g(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v14

    aput-object v14, v13, v5

    .line 20
    invoke-static {v4, v7, v12, v2}, Lk4/b0;->g(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v14

    aput-object v14, v13, v6

    .line 21
    invoke-static {v3, v9, v12, v2}, Lk4/b0;->g(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v14

    aput-object v14, v13, v8

    .line 22
    invoke-static {v3, v9, v1, v2}, Lk4/b0;->g(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;

    move-result-object v1

    aput-object v1, v13, v10

    .line 23
    invoke-virtual {v11, v13}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->setRect([Landroid/graphics/Point;)V

    .line 24
    invoke-virtual {p0, v11}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)V

    move v1, v12

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static b(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;Lk4/j$c;)Lk4/j$c;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lk4/j$c;

    invoke-direct {p1}, Lk4/j$c;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk4/j$c;->g()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->getLineDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lk4/b0;->d(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;Lk4/j$e;)Lk4/j$e;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Lk4/j$c;->f(Lk4/j$e;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk4/j$c;->e([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static c(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;Lk4/j$d;)Lk4/j$d;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lk4/j$d;

    invoke-direct {p1}, Lk4/j$d;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk4/j$d;->f()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk4/j$d;->i(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk4/j$d;->e([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static d(Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;Lk4/j$e;)Lk4/j$e;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lk4/j$e;

    invoke-direct {p1}, Lk4/j$e;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk4/j$e;->g()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getWordDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;

    const/4 v2, 0x0

    .line 4
    invoke-static {v1, v2}, Lk4/b0;->f(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;Lk4/j$g;)Lk4/j$g;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Lk4/j$e;->f(Lk4/j$g;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk4/j$e;->e([Landroid/graphics/Point;)V

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrLineData;->getAngle()F

    move-result p0

    invoke-virtual {p1, p0}, Lk4/j$e;->d(F)V

    return-object p1
.end method

.method public static e(Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;Lk4/j;)Lk4/j;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lk4/j;

    invoke-direct {p1}, Lk4/j;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk4/j;->d()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrPageData;->getTextBlockList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lk4/b0;->b(Lcom/samsung/android/sdk/pen/ocr/SpenOcrBlockData;Lk4/j$c;)Lk4/j$c;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Lk4/j;->c(Lk4/j$c;)V

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static f(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;Lk4/j$g;)Lk4/j$g;
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lk4/j$g;

    invoke-direct {p1}, Lk4/j$g;-><init>()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lk4/j$g;->g()V

    .line 3
    :goto_0
    invoke-static {p0}, Lk4/b0;->a(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getCharDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2}, Lk4/b0;->c(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;Lk4/j$d;)Lk4/j$d;

    move-result-object v1

    .line 6
    invoke-virtual {p1, v1}, Lk4/j$g;->f(Lk4/j$d;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    invoke-virtual {p1, p0}, Lk4/j$g;->e([Landroid/graphics/Point;)V

    return-object p1
.end method

.method private static g(Landroid/graphics/Point;Landroid/graphics/Point;II)Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int v2, p3, p2

    mul-int/2addr v1, v2

    iget v3, p1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, p2

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float p3, p3

    div-float/2addr v1, p3

    float-to-int v1, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    int-to-float p0, p0

    div-float/2addr p0, p3

    float-to-int p0, p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static h(Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getLegacyText()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SOCRConverter"

    if-eqz v0, :cond_0

    const-string p0, "No legacy conversion: legacy word text has not been assigned"

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getCharDataList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string p0, "No legacy conversion: charDataList is not empty"

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->getRect()[Landroid/graphics/Point;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 8
    array-length p0, p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "No legacy conversion: word Rect is not defined"

    .line 9
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
