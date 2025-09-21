.class Lm3/w$e;
.super Ljava/lang/Object;
.source "VisionTextDrawHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field a:Lm3/w;

.field b:Landroid/graphics/Rect;

.field c:Landroid/graphics/Rect;

.field d:Landroid/graphics/Rect;

.field e:Landroid/graphics/Rect;

.field f:Landroid/graphics/drawable/Drawable;

.field g:Landroid/graphics/drawable/Drawable;

.field h:Landroid/graphics/drawable/Drawable;

.field i:Landroid/graphics/drawable/Drawable;

.field j:Landroid/graphics/drawable/Drawable;

.field k:[Landroid/graphics/Point;

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field final s:Z

.field t:I

.field u:I

.field v:F

.field w:Landroid/view/View;


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm3/w$e;->c:Landroid/graphics/Rect;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm3/w$e;->d:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm3/w$e;->e:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lm3/w$e;->v:F

    .line 7
    iput-boolean p1, p0, Lm3/w$e;->s:Z

    return-void
.end method


# virtual methods
.method a([Landroid/graphics/Point;)V
    .locals 14

    if-eqz p1, :cond_c

    .line 1
    iget-object v0, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v0}, Lm3/w;->y(Lm3/w;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    .line 2
    iget v0, p0, Lm3/w$e;->l:I

    int-to-float v0, v0

    iget-object v1, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v1}, Lm3/w;->y(Lm3/w;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iget v1, p0, Lm3/w$e;->m:I

    int-to-float v1, v1

    iget-object v2, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v2}, Lm3/w;->y(Lm3/w;)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 4
    iget v2, p0, Lm3/w$e;->n:I

    int-to-float v2, v2

    iget-object v3, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v3}, Lm3/w;->y(Lm3/w;)F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 5
    iget v3, p0, Lm3/w$e;->o:I

    int-to-float v3, v3

    iget-object v4, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v4}, Lm3/w;->y(Lm3/w;)F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 6
    iget v4, p0, Lm3/w$e;->p:I

    int-to-float v4, v4

    iget-object v5, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v5}, Lm3/w;->y(Lm3/w;)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 7
    iget v5, p0, Lm3/w$e;->q:I

    int-to-float v5, v5

    iget-object v6, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v6}, Lm3/w;->y(Lm3/w;)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 8
    iget v6, p0, Lm3/w$e;->r:I

    int-to-float v6, v6

    iget-object v7, p0, Lm3/w$e;->a:Lm3/w;

    invoke-static {v7}, Lm3/w;->y(Lm3/w;)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    .line 9
    iget-boolean v7, p0, Lm3/w$e;->s:Z

    const/4 v8, 0x2

    const/4 v9, 0x3

    if-eqz v7, :cond_0

    .line 10
    iget-object v10, p0, Lm3/w$e;->c:Landroid/graphics/Rect;

    aget-object v11, p1, v9

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v0

    add-int/2addr v11, v2

    .line 11
    iput v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v0

    .line 12
    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 13
    aget-object v11, p1, v9

    iget v11, v11, Landroid/graphics/Point;->y:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 14
    aget-object v12, p1, v9

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v1

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 15
    iget-object v10, p0, Lm3/w$e;->d:Landroid/graphics/Rect;

    aget-object v13, p1, v9

    iget v13, v13, Landroid/graphics/Point;->x:I

    mul-int/lit8 v2, v2, -0x1

    add-int/2addr v13, v2

    .line 16
    iput v13, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v0

    .line 17
    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 18
    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 19
    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 20
    :cond_0
    iget-object v10, p0, Lm3/w$e;->d:Landroid/graphics/Rect;

    aget-object v11, p1, v8

    iget v11, v11, Landroid/graphics/Point;->x:I

    mul-int/lit8 v12, v2, -0x1

    add-int/2addr v11, v12

    .line 21
    iput v11, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v0

    .line 22
    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 23
    aget-object v11, p1, v8

    iget v11, v11, Landroid/graphics/Point;->y:I

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 24
    aget-object v12, p1, v8

    iget v12, v12, Landroid/graphics/Point;->y:I

    add-int/2addr v12, v1

    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    .line 25
    iget-object v10, p0, Lm3/w$e;->c:Landroid/graphics/Rect;

    aget-object v13, p1, v8

    iget v13, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v13, v0

    add-int/2addr v13, v2

    .line 26
    iput v13, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v0

    .line 27
    iput v13, v10, Landroid/graphics/Rect;->right:I

    .line 28
    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 29
    iput v12, v10, Landroid/graphics/Rect;->bottom:I

    :goto_0
    if-eqz v7, :cond_1

    .line 30
    iget-object v0, p0, Lm3/w$e;->c:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lm3/w$e;->d:Landroid/graphics/Rect;

    :goto_1
    iput-object v0, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    if-eqz v7, :cond_2

    .line 31
    iget-object v0, p0, Lm3/w$e;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lm3/w$e;->h:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v0, p0, Lm3/w$e;->f:Landroid/graphics/drawable/Drawable;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 33
    iget-object v2, p0, Lm3/w$e;->w:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 34
    invoke-static {}, Lm3/w;->E()Z

    move-result v2

    const-string v7, " rect.right:"

    const-string v10, "VisionTextDrawHelperImpl"

    if-eqz v2, :cond_3

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Handle.updateRect() isStartHandle:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lm3/w$e;->s:Z

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " rect.left:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rect.top:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " rect.bottom:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mImageWidth:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lm3/w$e;->t:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mImageHeight:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lm3/w$e;->u:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mImageRatio:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lm3/w$e;->v:F

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, " viewRect="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_3
    iget-object v2, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v0, Landroid/graphics/Rect;->left:I

    if-ge v11, v12, :cond_4

    iget-boolean v11, p0, Lm3/w$e;->s:Z

    if-nez v11, :cond_5

    :cond_4
    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    if-le v2, v11, :cond_8

    iget-boolean v2, p0, Lm3/w$e;->s:Z

    if-nez v2, :cond_8

    .line 37
    :cond_5
    iget-boolean v2, p0, Lm3/w$e;->s:Z

    if-nez v2, :cond_6

    iget-object v11, p0, Lm3/w$e;->c:Landroid/graphics/Rect;

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lm3/w$e;->d:Landroid/graphics/Rect;

    :goto_3
    iput-object v11, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    if-nez v2, :cond_7

    .line 38
    iget-object v2, p0, Lm3/w$e;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lm3/w$e;->h:Landroid/graphics/drawable/Drawable;

    :goto_4
    iput-object v2, p0, Lm3/w$e;->f:Landroid/graphics/drawable/Drawable;

    .line 39
    invoke-static {}, Lm3/w;->E()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "swapped left / right handle drawable rect.left:"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-array v2, v8, [I

    .line 41
    iget-object v7, p0, Lm3/w$e;->w:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 42
    iget-object v7, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x1

    aget v12, v2, v11

    add-int/2addr v8, v12

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v12, :cond_a

    .line 43
    aget-object v8, p1, v9

    iget v8, v8, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v1

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 44
    aget-object p1, p1, v9

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v7, Landroid/graphics/Rect;->bottom:I

    .line 45
    iget-boolean p1, p0, Lm3/w$e;->s:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lm3/w$e;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lm3/w$e;->i:Landroid/graphics/drawable/Drawable;

    :goto_5
    iput-object p1, p0, Lm3/w$e;->f:Landroid/graphics/drawable/Drawable;

    .line 46
    invoke-static {}, Lm3/w;->E()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "swapped top / bottom handle drawable rect.bottom:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " viewRect.bottom:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offsetX="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v0, v2, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " offsetY="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v2, v11

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_a
    iget-boolean p1, p0, Lm3/w$e;->s:Z

    if-eqz p1, :cond_b

    .line 49
    iget-object p1, p0, Lm3/w$e;->e:Landroid/graphics/Rect;

    iget-object p0, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v5

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v6

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_6

    .line 50
    :cond_b
    iget-object p1, p0, Lm3/w$e;->e:Landroid/graphics/Rect;

    iget-object p0, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v6

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v4

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_c
    :goto_6
    return-void
.end method

.method b(II)Z
    .locals 0

    iget-object p0, p0, Lm3/w$e;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method c(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/w$e;->k:[Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lm3/w$e;->a([Landroid/graphics/Point;)V

    .line 2
    iget-object v0, p0, Lm3/w$e;->f:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3
    iget-object v0, p0, Lm3/w$e;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-static {}, Lm3/w;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const v1, -0xff0100

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v1, p0, Lm3/w$e;->e:Landroid/graphics/Rect;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/high16 v1, -0x10000

    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p0, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method d(Landroid/content/Context;Lm3/w;)V
    .locals 2

    .line 1
    iput-object p2, p0, Lm3/w$e;->a:Lm3/w;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 3
    sget v0, Lb3/d;->a:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lm3/w$e;->g:Landroid/graphics/drawable/Drawable;

    .line 4
    sget v0, Lb3/d;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lm3/w$e;->h:Landroid/graphics/drawable/Drawable;

    .line 5
    sget v0, Lb3/d;->c:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lm3/w$e;->i:Landroid/graphics/drawable/Drawable;

    .line 6
    sget v0, Lb3/d;->d:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lm3/w$e;->j:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-boolean v0, p0, Lm3/w$e;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/w$e;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lm3/w$e;->h:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v0, p0, Lm3/w$e;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lm3/w$e;->l:I

    .line 9
    iget-object v0, p0, Lm3/w$e;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lm3/w$e;->m:I

    const/high16 v0, 0x41b00000    # 22.0f

    .line 10
    invoke-static {p1, v0}, Lm3/w;->N(Landroid/content/Context;F)I

    move-result p1

    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lm3/w$e;->n:I

    .line 11
    sget p1, Lb3/c;->g:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lm3/w$e;->o:I

    .line 12
    sget p1, Lb3/c;->d:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lm3/w$e;->p:I

    .line 13
    sget p1, Lb3/c;->f:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lm3/w$e;->q:I

    .line 14
    sget p1, Lb3/c;->e:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lm3/w$e;->r:I

    return-void
.end method

.method e()Z
    .locals 0

    iget-object p0, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/w$e;->b:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2
    iget-object p0, p0, Lm3/w$e;->e:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method g(FIILandroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Lm3/w$e;->v:F

    .line 2
    iput p2, p0, Lm3/w$e;->t:I

    .line 3
    iput p3, p0, Lm3/w$e;->u:I

    .line 4
    iput-object p4, p0, Lm3/w$e;->w:Landroid/view/View;

    return-void
.end method

.method h([Landroid/graphics/Point;)V
    .locals 1

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lm3/w$e;->k:[Landroid/graphics/Point;

    .line 2
    invoke-virtual {p0, p1}, Lm3/w$e;->a([Landroid/graphics/Point;)V

    return-void
.end method
