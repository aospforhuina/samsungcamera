.class public Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;
.super Ljava/lang/Object;
.source "SpenOcrWordData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenOcrWordData"


# instance fields
.field private mAngle:F

.field private mCharDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mLegacyText:Ljava/lang/String;

.field private mRect:[Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mLegacyText:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharRects:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mAngle:F

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharDataList:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharDataList:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->clear()V

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mLegacyText:Ljava/lang/String;

    return-void
.end method

.method public final getAngle()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mAngle:F

    return p0
.end method

.method public getCharDataList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharDataList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getCharRects()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharRects:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLegacyText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mLegacyText:Ljava/lang/String;

    return-object p0
.end method

.method public final getRect()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharDataList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;

    .line 3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextRect()[Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    return-object p0
.end method

.method public scale(F)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    iget v3, v2, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 3
    iget v3, v2, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mAngle:F

    return-void
.end method

.method public setCharDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/ocr/SpenOcrCharData;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setCharRects([I)V
    .locals 7

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mCharRects:Ljava/util/ArrayList;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    aget v5, p1, v1

    add-int/lit8 v6, v1, 0x1

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v0

    new-instance v4, Landroid/graphics/Point;

    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    add-int/lit8 v6, v1, 0x3

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Landroid/graphics/Point;

    add-int/lit8 v5, v1, 0x4

    aget v5, p1, v5

    add-int/lit8 v6, v1, 0x5

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Landroid/graphics/Point;

    add-int/lit8 v5, v1, 0x6

    aget v5, p1, v5

    add-int/lit8 v6, v1, 0x7

    aget v6, p1, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    const-string p0, "SpenOcrWordData"

    const-string p1, "SpenOcrWordData::setCharRects array either null or has size not multiple of 8"

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRect([II)V
    .locals 12

    const-string v0, "SpenOcrWordData"

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SpenOcrWordData::setRect rect(int array)\'s length is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x4

    new-array v3, p2, [Landroid/graphics/Point;

    .line 6
    new-instance v4, Landroid/graphics/Point;

    aget v5, p1, v2

    const/4 v6, 0x1

    aget v7, p1, v6

    invoke-direct {v4, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/graphics/Point;

    const/4 v5, 0x2

    aget v7, p1, v5

    const/4 v8, 0x3

    aget v9, p1, v8

    invoke-direct {v4, v7, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v6

    new-instance v4, Landroid/graphics/Point;

    aget v7, p1, p2

    const/4 v9, 0x5

    aget v10, p1, v9

    invoke-direct {v4, v7, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v5

    new-instance v4, Landroid/graphics/Point;

    const/4 v7, 0x6

    aget v10, p1, v7

    const/4 v11, 0x7

    aget p1, p1, v11

    invoke-direct {v4, v10, p1}, Landroid/graphics/Point;-><init>(II)V

    aput-object v4, v3, v8

    .line 7
    iput-object v3, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    new-array p1, v1, [Ljava/lang/Object;

    aget-object v1, v3, v2

    .line 8
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v6

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v5

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v8

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, p2

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p2, p2, v5

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v9

    iget-object p2, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p2, p2, v8

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v7

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p0, p0, v8

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v11

    const-string p0, "SpenOcrWordData::setRect [LT(%d, %d), RT(%d, %d), RB(%d, %d), LB(%d, %d)]"

    .line 10
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRect([Landroid/graphics/Point;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x4

    aput-object p1, v0, v3

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x5

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x6

    aput-object p1, v0, v2

    iget-object p0, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mRect:[Landroid/graphics/Point;

    aget-object p0, p0, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x7

    aput-object p0, v0, p1

    const-string p0, "SpenOcrWordData::setRect [LT(%d, %d), RT(%d, %d), RB(%d, %d), LB(%d, %d)]"

    .line 4
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SpenOcrWordData"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/ocr/SpenOcrWordData;->mLegacyText:Ljava/lang/String;

    return-void
.end method
