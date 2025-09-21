.class Lm3/w$f;
.super Ljava/lang/Object;
.source "VisionTextDrawHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm3/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# static fields
.field static j:Landroid/graphics/Paint;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:[Landroid/graphics/Point;

.field f:Z

.field g:Z

.field h:Landroid/graphics/Path;

.field i:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lm3/w$f;->j:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    sget-object v0, Lm3/w$f;->j:Landroid/graphics/Paint;

    const/16 v1, 0x66

    const/16 v2, 0xcb

    const/16 v3, 0xff

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    .line 2
    iput-boolean p6, p0, Lm3/w$f;->g:Z

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lm3/w$f;->h:Landroid/graphics/Path;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm3/w$f;->i:Landroid/graphics/Rect;

    .line 5
    iput p1, p0, Lm3/w$f;->a:I

    .line 6
    iput p2, p0, Lm3/w$f;->b:I

    .line 7
    iput p3, p0, Lm3/w$f;->c:I

    .line 8
    iput-object p4, p0, Lm3/w$f;->d:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lm3/w$f;->e:[Landroid/graphics/Point;

    .line 10
    iput-boolean p7, p0, Lm3/w$f;->f:Z

    .line 11
    iget-object p1, p0, Lm3/w$f;->h:Landroid/graphics/Path;

    const/4 p2, 0x0

    aget-object p3, p5, p2

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    aget-object p4, p5, p2

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    iget-object p1, p0, Lm3/w$f;->h:Landroid/graphics/Path;

    aget-object p3, p5, p6

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float p3, p3

    aget-object p4, p5, p6

    iget p4, p4, Landroid/graphics/Point;->y:I

    int-to-float p4, p4

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object p1, p0, Lm3/w$f;->h:Landroid/graphics/Path;

    const/4 p3, 0x2

    aget-object p4, p5, p3

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    aget-object p3, p5, p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 14
    iget-object p1, p0, Lm3/w$f;->h:Landroid/graphics/Path;

    const/4 p3, 0x3

    aget-object p4, p5, p3

    iget p4, p4, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    aget-object p3, p5, p3

    iget p3, p3, Landroid/graphics/Point;->y:I

    int-to-float p3, p3

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 15
    array-length p1, p5

    const/4 p3, -0x1

    const p4, 0xc350

    move p6, p4

    move p7, p6

    move p4, p3

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p5, p2

    .line 16
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {p6, v1}, Ljava/lang/Math;->min(II)I

    move-result p6

    .line 17
    iget v1, v0, Landroid/graphics/Point;->x:I

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 18
    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p7, v1}, Ljava/lang/Math;->min(II)I

    move-result p7

    .line 19
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Lm3/w$f;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, p6, p7, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 21
    invoke-static {}, Lm3/w;->w()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lm3/w$f;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lm3/w;->x(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static a(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)Lm3/w$f;
    .locals 9

    new-instance v8, Lm3/w$f;

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lm3/w$f;-><init>(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)V

    return-object v8
.end method


# virtual methods
.method b(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm3/w$f;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lm3/w$f;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lm3/w$f;->h:Landroid/graphics/Path;

    sget-object v0, Lm3/w$f;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm3/w$f;->d:Ljava/lang/String;

    return-object p0
.end method

.method d()I
    .locals 0

    iget p0, p0, Lm3/w$f;->b:I

    return p0
.end method

.method e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm3/w$f;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p0, p0, Lm3/w$f;->f:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm3/w$f;->g:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lm3/w$f;->f:Z

    :cond_0
    return-void
.end method

.method g(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm3/w$f;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iput-boolean p1, p0, Lm3/w$f;->f:Z

    :cond_0
    return-void
.end method
