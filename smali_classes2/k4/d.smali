.class public Lk4/d;
.super Ljava/lang/Object;
.source "MOCRConverter.java"


# direct methods
.method public static a(Lcom/samsung/android/ocr/MOCRResult$Block;Lk4/j$c;)Lk4/j$c;
    .locals 5

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
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 4
    invoke-static {v3, v4}, Lk4/d;->c(Lcom/samsung/android/ocr/MOCRResult$Line;Lk4/j$e;)Lk4/j$e;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v3}, Lk4/j$c;->f(Lk4/j$e;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Block;->bRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lk4/j$c;->e([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static b(Lcom/samsung/android/ocr/MOCRResult$Char;Lk4/j$d;)Lk4/j$d;
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
    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRResult$Char;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lk4/j$d;->i(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lk4/j$d;->e([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static c(Lcom/samsung/android/ocr/MOCRResult$Line;Lk4/j$e;)Lk4/j$e;
    .locals 5

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
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 4
    invoke-static {v3, v4}, Lk4/d;->e(Lcom/samsung/android/ocr/MOCRResult$Word;Lk4/j$g;)Lk4/j$g;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v3}, Lk4/j$e;->f(Lk4/j$g;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->lRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lk4/j$e;->e([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static d(Lcom/samsung/android/ocr/MOCRResult$Page;Lk4/j;)Lk4/j;
    .locals 4

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
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    const/4 v3, 0x0

    .line 4
    invoke-static {v2, v3}, Lk4/d;->a(Lcom/samsung/android/ocr/MOCRResult$Block;Lk4/j$c;)Lk4/j$c;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v2}, Lk4/j;->c(Lk4/j$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public static e(Lcom/samsung/android/ocr/MOCRResult$Word;Lk4/j$g;)Lk4/j$g;
    .locals 5

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
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    const/4 v4, 0x0

    .line 4
    invoke-static {v3, v4}, Lk4/d;->b(Lcom/samsung/android/ocr/MOCRResult$Char;Lk4/j$d;)Lk4/j$d;

    move-result-object v3

    .line 5
    invoke-virtual {p1, v3}, Lk4/j$g;->f(Lk4/j$d;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lk4/j$g;->e([Landroid/graphics/Point;)V

    return-object p1
.end method
