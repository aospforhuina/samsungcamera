.class public Li2/g;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialShapeDrawable.java"

# interfaces
.implements Landroidx/core/graphics/drawable/TintAwareDrawable;
.implements Li2/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/g$c;
    }
.end annotation


# static fields
.field private static final B:Ljava/lang/String;

.field private static final C:Landroid/graphics/Paint;


# instance fields
.field private A:Z

.field private a:Li2/g$c;

.field private final b:[Li2/m$g;

.field private final c:[Li2/m$g;

.field private final d:Ljava/util/BitSet;

.field private f:Z

.field private final g:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Path;

.field private final l:Landroid/graphics/Path;

.field private final m:Landroid/graphics/RectF;

.field private final n:Landroid/graphics/RectF;

.field private final o:Landroid/graphics/Region;

.field private final p:Landroid/graphics/Region;

.field private q:Li2/k;

.field private final r:Landroid/graphics/Paint;

.field private final s:Landroid/graphics/Paint;

.field private final t:Lh2/a;

.field private final u:Li2/l$b;

.field private final v:Li2/l;

.field private w:Landroid/graphics/PorterDuffColorFilter;

.field private x:Landroid/graphics/PorterDuffColorFilter;

.field private y:I

.field private final z:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Li2/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li2/g;->B:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Li2/g;->C:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Li2/k;

    invoke-direct {v0}, Li2/k;-><init>()V

    invoke-direct {p0, v0}, Li2/g;-><init>(Li2/k;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 3
    invoke-static {p1, p2, p3, p4}, Li2/k;->e(Landroid/content/Context;Landroid/util/AttributeSet;II)Li2/k$b;

    move-result-object p1

    invoke-virtual {p1}, Li2/k$b;->m()Li2/k;

    move-result-object p1

    invoke-direct {p0, p1}, Li2/g;-><init>(Li2/k;)V

    return-void
.end method

.method private constructor <init>(Li2/g$c;)V
    .locals 5

    .line 5
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Li2/m$g;

    .line 6
    iput-object v1, p0, Li2/g;->b:[Li2/m$g;

    new-array v0, v0, [Li2/m$g;

    .line 7
    iput-object v0, p0, Li2/g;->c:[Li2/m$g;

    .line 8
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Li2/g;->d:Ljava/util/BitSet;

    .line 9
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Li2/g;->g:Landroid/graphics/Matrix;

    .line 10
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Li2/g;->k:Landroid/graphics/Path;

    .line 11
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Li2/g;->l:Landroid/graphics/Path;

    .line 12
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Li2/g;->m:Landroid/graphics/RectF;

    .line 13
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Li2/g;->n:Landroid/graphics/RectF;

    .line 14
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Li2/g;->o:Landroid/graphics/Region;

    .line 15
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Li2/g;->p:Landroid/graphics/Region;

    .line 16
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Li2/g;->r:Landroid/graphics/Paint;

    .line 17
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Li2/g;->s:Landroid/graphics/Paint;

    .line 18
    new-instance v3, Lh2/a;

    invoke-direct {v3}, Lh2/a;-><init>()V

    iput-object v3, p0, Li2/g;->t:Lh2/a;

    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 20
    invoke-static {}, Li2/l;->k()Li2/l;

    move-result-object v3

    goto :goto_0

    .line 21
    :cond_0
    new-instance v3, Li2/l;

    invoke-direct {v3}, Li2/l;-><init>()V

    :goto_0
    iput-object v3, p0, Li2/g;->v:Li2/l;

    .line 22
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Li2/g;->z:Landroid/graphics/RectF;

    .line 23
    iput-boolean v1, p0, Li2/g;->A:Z

    .line 24
    iput-object p1, p0, Li2/g;->a:Li2/g$c;

    .line 25
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    invoke-direct {p0}, Li2/g;->h0()Z

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Li2/g;->g0([I)Z

    .line 29
    new-instance p1, Li2/g$a;

    invoke-direct {p1, p0}, Li2/g$a;-><init>(Li2/g;)V

    iput-object p1, p0, Li2/g;->u:Li2/l$b;

    return-void
.end method

.method synthetic constructor <init>(Li2/g$c;Li2/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li2/g;-><init>(Li2/g$c;)V

    return-void
.end method

.method public constructor <init>(Li2/k;)V
    .locals 2

    .line 4
    new-instance v0, Li2/g$c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Li2/g$c;-><init>(Li2/k;La2/a;)V

    invoke-direct {p0, v0}, Li2/g;-><init>(Li2/g$c;)V

    return-void
.end method

.method private E()F
    .locals 1

    .line 1
    invoke-direct {p0}, Li2/g;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Li2/g;->s:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private K()Z
    .locals 3

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v1, v0, Li2/g$c;->q:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v0, v0, Li2/g$c;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Li2/g;->U()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method private L()Z
    .locals 1

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget-object p0, p0, Li2/g$c;->v:Landroid/graphics/Paint$Style;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private M()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Li2/g;->s:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private O()V
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private R(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Li2/g;->K()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-direct {p0, p1}, Li2/g;->T(Landroid/graphics/Canvas;)V

    .line 4
    iget-boolean v0, p0, Li2/g;->A:Z

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Li2/g;->n(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Li2/g;->z:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 8
    iget-object v1, p0, Li2/g;->z:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    .line 9
    iget-object v2, p0, Li2/g;->z:Landroid/graphics/RectF;

    .line 10
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Li2/g;->a:Li2/g$c;

    iget v3, v3, Li2/g$c;->r:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Li2/g;->z:Landroid/graphics/RectF;

    .line 11
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Li2/g;->a:Li2/g$c;

    iget v4, v4, Li2/g$c;->r:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 12
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 13
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Li2/g;->a:Li2/g$c;

    iget v5, v5, Li2/g$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Li2/g;->a:Li2/g$c;

    iget v5, v5, Li2/g$c;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    .line 16
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 17
    invoke-direct {p0, v3}, Li2/g;->n(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 18
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 19
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 21
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static S(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private T(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Li2/g;->A()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Li2/g;->B()I

    move-result p0

    int-to-float v0, v0

    int-to-float p0, p0

    .line 3
    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method static synthetic b(Li2/g;)Ljava/util/BitSet;
    .locals 0

    iget-object p0, p0, Li2/g;->d:Ljava/util/BitSet;

    return-object p0
.end method

.method static synthetic c(Li2/g;)[Li2/m$g;
    .locals 0

    iget-object p0, p0, Li2/g;->b:[Li2/m$g;

    return-object p0
.end method

.method static synthetic d(Li2/g;)[Li2/m$g;
    .locals 0

    iget-object p0, p0, Li2/g;->c:[Li2/m$g;

    return-object p0
.end method

.method static synthetic e(Li2/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Li2/g;->f:Z

    return p1
.end method

.method private f(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Li2/g;->l(I)I

    move-result p2

    .line 3
    iput p2, p0, Li2/g;->y:I

    if-eq p2, p1, :cond_0

    .line 4
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private g(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Li2/g;->h(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 2
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v0, v0, Li2/g$c;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Li2/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 4
    iget-object v0, p0, Li2/g;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Li2/g;->a:Li2/g$c;

    iget v1, v1, Li2/g$c;->j:F

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    .line 6
    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 7
    iget-object p1, p0, Li2/g;->g:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 8
    :cond_0
    iget-object p0, p0, Li2/g;->z:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private g0([I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li2/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 3
    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget-object v2, v2, Li2/g$c;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Li2/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget-object v2, v2, Li2/g$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, p0, Li2/g;->s:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 7
    iget-object v3, p0, Li2/g;->a:Li2/g$c;

    iget-object v3, v3, Li2/g$c;->e:Landroid/content/res/ColorStateList;

    .line 8
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 9
    iget-object p0, p0, Li2/g;->s:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method private h0()Z
    .locals 7

    .line 1
    iget-object v0, p0, Li2/g;->w:Landroid/graphics/PorterDuffColorFilter;

    .line 2
    iget-object v1, p0, Li2/g;->x:Landroid/graphics/PorterDuffColorFilter;

    .line 3
    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget-object v3, v2, Li2/g$c;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Li2/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Li2/g;->r:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 4
    invoke-direct {p0, v3, v2, v4, v5}, Li2/g;->k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Li2/g;->w:Landroid/graphics/PorterDuffColorFilter;

    .line 5
    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget-object v3, v2, Li2/g$c;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Li2/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Li2/g;->s:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 6
    invoke-direct {p0, v3, v2, v4, v6}, Li2/g;->k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Li2/g;->x:Landroid/graphics/PorterDuffColorFilter;

    .line 7
    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget-boolean v3, v2, Li2/g$c;->u:Z

    if-eqz v3, :cond_0

    .line 8
    iget-object v3, p0, Li2/g;->t:Lh2/a;

    iget-object v2, v2, Li2/g$c;->g:Landroid/content/res/ColorStateList;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    .line 10
    invoke-virtual {v3, v2}, Lh2/a;->d(I)V

    .line 11
    :cond_0
    iget-object v2, p0, Li2/g;->w:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Li2/g;->x:Landroid/graphics/PorterDuffColorFilter;

    .line 12
    invoke-static {v1, p0}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method private i()V
    .locals 4

    .line 1
    invoke-direct {p0}, Li2/g;->E()F

    move-result v0

    neg-float v0, v0

    .line 2
    invoke-virtual {p0}, Li2/g;->D()Li2/k;

    move-result-object v1

    new-instance v2, Li2/g$b;

    invoke-direct {v2, p0, v0}, Li2/g$b;-><init>(Li2/g;F)V

    .line 3
    invoke-virtual {v1, v2}, Li2/k;->y(Li2/k$c;)Li2/k;

    move-result-object v0

    iput-object v0, p0, Li2/g;->q:Li2/k;

    .line 4
    iget-object v1, p0, Li2/g;->v:Li2/l;

    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget v2, v2, Li2/g$c;->k:F

    .line 5
    invoke-direct {p0}, Li2/g;->v()Landroid/graphics/RectF;

    move-result-object v3

    iget-object p0, p0, Li2/g;->l:Landroid/graphics/Path;

    .line 6
    invoke-virtual {v1, v0, v2, v3, p0}, Li2/l;->d(Li2/k;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method private i0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Li2/g;->J()F

    move-result v0

    .line 2
    iget-object v1, p0, Li2/g;->a:Li2/g$c;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Li2/g$c;->r:I

    .line 3
    iget-object v1, p0, Li2/g;->a:Li2/g$c;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Li2/g$c;->s:I

    .line 4
    invoke-direct {p0}, Li2/g;->h0()Z

    .line 5
    invoke-direct {p0}, Li2/g;->O()V

    return-void
.end method

.method private j(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Li2/g;->l(I)I

    move-result p1

    .line 3
    :cond_0
    iput p1, p0, Li2/g;->y:I

    .line 4
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private k(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Li2/g;->j(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Li2/g;->f(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static m(Landroid/content/Context;F)Li2/g;
    .locals 2

    .line 1
    sget v0, Lq1/b;->q:I

    const-class v1, Li2/g;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {p0, v0, v1}, Lx1/a;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 4
    new-instance v1, Li2/g;

    invoke-direct {v1}, Li2/g;-><init>()V

    .line 5
    invoke-virtual {v1, p0}, Li2/g;->N(Landroid/content/Context;)V

    .line 6
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Li2/g;->Y(Landroid/content/res/ColorStateList;)V

    .line 7
    invoke-virtual {v1, p1}, Li2/g;->X(F)V

    return-object v1
.end method

.method private n(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li2/g;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget-object v0, Li2/g;->B:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v0, v0, Li2/g$c;->s:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Li2/g;->k:Landroid/graphics/Path;

    iget-object v1, p0, Li2/g;->t:Lh2/a;

    invoke-virtual {v1}, Lh2/a;->c()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 5
    iget-object v1, p0, Li2/g;->b:[Li2/m$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Li2/g;->t:Lh2/a;

    iget-object v3, p0, Li2/g;->a:Li2/g$c;

    iget v3, v3, Li2/g$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Li2/m$g;->b(Lh2/a;ILandroid/graphics/Canvas;)V

    .line 6
    iget-object v1, p0, Li2/g;->c:[Li2/m$g;

    aget-object v1, v1, v0

    iget-object v2, p0, Li2/g;->t:Lh2/a;

    iget-object v3, p0, Li2/g;->a:Li2/g$c;

    iget v3, v3, Li2/g$c;->r:I

    invoke-virtual {v1, v2, v3, p1}, Li2/m$g;->b(Lh2/a;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Li2/g;->A:Z

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Li2/g;->A()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Li2/g;->B()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 10
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 11
    iget-object p0, p0, Li2/g;->k:Landroid/graphics/Path;

    sget-object v2, Li2/g;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float p0, v0

    int-to-float v0, v1

    .line 12
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private o(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v2, p0, Li2/g;->r:Landroid/graphics/Paint;

    iget-object v3, p0, Li2/g;->k:Landroid/graphics/Path;

    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v4, v0, Li2/g$c;->a:Li2/k;

    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li2/g;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Li2/k;Landroid/graphics/RectF;)V

    return-void
.end method

.method private q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Li2/k;Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    invoke-virtual {p4, p5}, Li2/k;->u(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p4}, Li2/k;->t()Li2/c;

    move-result-object p3

    invoke-interface {p3, p5}, Li2/c;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget p0, p0, Li2/g$c;->k:F

    mul-float/2addr p3, p0

    .line 3
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private v()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->n:Landroid/graphics/RectF;

    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2
    invoke-direct {p0}, Li2/g;->E()F

    move-result v0

    .line 3
    iget-object v1, p0, Li2/g;->n:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 4
    iget-object p0, p0, Li2/g;->n:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 4

    .line 1
    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget v0, p0, Li2/g$c;->s:I

    int-to-double v0, v0

    iget p0, p0, Li2/g$c;->t:I

    int-to-double v2, p0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public B()I
    .locals 4

    .line 1
    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget v0, p0, Li2/g$c;->s:I

    int-to-double v0, v0

    iget p0, p0, Li2/g$c;->t:I

    int-to-double v2, p0

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public C()I
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget p0, p0, Li2/g$c;->r:I

    return p0
.end method

.method public D()Li2/k;
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget-object p0, p0, Li2/g$c;->a:Li2/k;

    return-object p0
.end method

.method public F()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget-object p0, p0, Li2/g$c;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public G()F
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->a:Li2/k;

    .line 2
    invoke-virtual {v0}, Li2/k;->r()Li2/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Li2/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public H()F
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->a:Li2/k;

    .line 2
    invoke-virtual {v0}, Li2/k;->t()Li2/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Li2/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public I()F
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget p0, p0, Li2/g$c;->p:F

    return p0
.end method

.method public J()F
    .locals 1

    invoke-virtual {p0}, Li2/g;->w()F

    move-result v0

    invoke-virtual {p0}, Li2/g;->I()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public N(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    new-instance v1, La2/a;

    invoke-direct {v1, p1}, La2/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Li2/g$c;->b:La2/a;

    .line 2
    invoke-direct {p0}, Li2/g;->i0()V

    return-void
.end method

.method public P()Z
    .locals 0

    .line 1
    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget-object p0, p0, Li2/g$c;->b:La2/a;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, La2/a;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Q()Z
    .locals 1

    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->a:Li2/k;

    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Li2/k;->u(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public U()Z
    .locals 1

    invoke-virtual {p0}, Li2/g;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Li2/g;->k:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->isConvex()Z

    move-result p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public V(F)V
    .locals 1

    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->a:Li2/k;

    invoke-virtual {v0, p1}, Li2/k;->w(F)Li2/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/g;->setShapeAppearanceModel(Li2/k;)V

    return-void
.end method

.method public W(Li2/c;)V
    .locals 1

    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->a:Li2/k;

    invoke-virtual {v0, p1}, Li2/k;->x(Li2/c;)Li2/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/g;->setShapeAppearanceModel(Li2/k;)V

    return-void
.end method

.method public X(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v1, v0, Li2/g$c;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Li2/g$c;->o:F

    .line 3
    invoke-direct {p0}, Li2/g;->i0()V

    :cond_0
    return-void
.end method

.method public Y(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v1, v0, Li2/g$c;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Li2/g$c;->d:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/g;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public Z(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v1, v0, Li2/g$c;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Li2/g$c;->k:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Li2/g;->f:Z

    .line 4
    invoke-virtual {p0}, Li2/g;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a0(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v1, v0, Li2/g$c;->i:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Li2/g$c;->i:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    invoke-virtual {p0}, Li2/g;->invalidateSelf()V

    return-void
.end method

.method public b0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v1, v0, Li2/g$c;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    .line 2
    iput p1, v0, Li2/g$c;->n:F

    .line 3
    invoke-direct {p0}, Li2/g;->i0()V

    :cond_0
    return-void
.end method

.method public c0(FI)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li2/g;->f0(F)V

    .line 2
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/g;->e0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public d0(FLandroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li2/g;->f0(F)V

    .line 2
    invoke-virtual {p0, p2}, Li2/g;->e0(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Li2/g;->r:Landroid/graphics/Paint;

    iget-object v1, p0, Li2/g;->w:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 2
    iget-object v0, p0, Li2/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 3
    iget-object v1, p0, Li2/g;->r:Landroid/graphics/Paint;

    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget v2, v2, Li2/g$c;->m:I

    invoke-static {v0, v2}, Li2/g;->S(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object v1, p0, Li2/g;->s:Landroid/graphics/Paint;

    iget-object v2, p0, Li2/g;->x:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 5
    iget-object v1, p0, Li2/g;->s:Landroid/graphics/Paint;

    iget-object v2, p0, Li2/g;->a:Li2/g$c;

    iget v2, v2, Li2/g$c;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v1, p0, Li2/g;->s:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 7
    iget-object v2, p0, Li2/g;->s:Landroid/graphics/Paint;

    iget-object v3, p0, Li2/g;->a:Li2/g$c;

    iget v3, v3, Li2/g$c;->m:I

    invoke-static {v1, v3}, Li2/g;->S(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 8
    iget-boolean v2, p0, Li2/g;->f:Z

    if-eqz v2, :cond_0

    .line 9
    invoke-direct {p0}, Li2/g;->i()V

    .line 10
    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Li2/g;->k:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Li2/g;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    .line 11
    iput-boolean v2, p0, Li2/g;->f:Z

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Li2/g;->R(Landroid/graphics/Canvas;)V

    .line 13
    invoke-direct {p0}, Li2/g;->L()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-direct {p0, p1}, Li2/g;->o(Landroid/graphics/Canvas;)V

    .line 15
    :cond_1
    invoke-direct {p0}, Li2/g;->M()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {p0, p1}, Li2/g;->r(Landroid/graphics/Canvas;)V

    .line 17
    :cond_2
    iget-object p1, p0, Li2/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 18
    iget-object p0, p0, Li2/g;->s:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public e0(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v1, v0, Li2/g$c;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Li2/g$c;->e:Landroid/content/res/ColorStateList;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/g;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public f0(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iput p1, v0, Li2/g$c;->l:F

    .line 2
    invoke-virtual {p0}, Li2/g;->invalidateSelf()V

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v0, v0, Li2/g$c;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Li2/g;->Q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Li2/g;->G()F

    move-result v0

    iget-object v1, p0, Li2/g;->a:Li2/g$c;

    iget v1, v1, Li2/g$c;->k:F

    mul-float/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Li2/g;->k:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Li2/g;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 6
    iget-object v0, p0, Li2/g;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    .line 7
    :try_start_0
    iget-object p0, p0, Li2/g;->k:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Li2/g;->o:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Li2/g;->k:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Li2/g;->g(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 4
    iget-object v0, p0, Li2/g;->p:Landroid/graphics/Region;

    iget-object v1, p0, Li2/g;->k:Landroid/graphics/Path;

    iget-object v2, p0, Li2/g;->o:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 5
    iget-object v0, p0, Li2/g;->o:Landroid/graphics/Region;

    iget-object v1, p0, Li2/g;->p:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 6
    iget-object p0, p0, Li2/g;->o:Landroid/graphics/Region;

    return-object p0
.end method

.method protected final h(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Li2/g;->v:Li2/l;

    iget-object v1, p0, Li2/g;->a:Li2/g$c;

    iget-object v2, v1, Li2/g$c;->a:Li2/k;

    iget v3, v1, Li2/g$c;->k:F

    iget-object v4, p0, Li2/g;->u:Li2/l$b;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Li2/l;->e(Li2/k;FLandroid/graphics/RectF;Li2/l$b;Landroid/graphics/Path;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li2/g;->f:Z

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget-object p0, p0, Li2/g$c;->d:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_3

    .line 5
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected l(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Li2/g;->J()F

    move-result v0

    invoke-virtual {p0}, Li2/g;->y()F

    move-result v1

    add-float/2addr v0, v1

    .line 2
    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget-object p0, p0, Li2/g$c;->b:La2/a;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1, v0}, La2/a;->c(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Li2/g$c;

    iget-object v1, p0, Li2/g;->a:Li2/g$c;

    invoke-direct {v0, v1}, Li2/g$c;-><init>(Li2/g$c;)V

    .line 2
    iput-object v0, p0, Li2/g;->a:Li2/g$c;

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li2/g;->f:Z

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Li2/g;->g0([I)Z

    move-result p1

    .line 2
    invoke-direct {p0}, Li2/g;->h0()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Li2/g;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method protected p(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7

    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v5, v0, Li2/g$c;->a:Li2/k;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Li2/g;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Li2/k;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected r(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v2, p0, Li2/g;->s:Landroid/graphics/Paint;

    iget-object v3, p0, Li2/g;->l:Landroid/graphics/Path;

    iget-object v4, p0, Li2/g;->q:Li2/k;

    .line 2
    invoke-direct {p0}, Li2/g;->v()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 3
    invoke-direct/range {v0 .. v5}, Li2/g;->q(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Li2/k;Landroid/graphics/RectF;)V

    return-void
.end method

.method public s()F
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->a:Li2/k;

    .line 2
    invoke-virtual {v0}, Li2/k;->j()Li2/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Li2/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget v1, v0, Li2/g$c;->m:I

    if-eq v1, p1, :cond_0

    .line 2
    iput p1, v0, Li2/g$c;->m:I

    .line 3
    invoke-direct {p0}, Li2/g;->O()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iput-object p1, v0, Li2/g$c;->c:Landroid/graphics/ColorFilter;

    .line 2
    invoke-direct {p0}, Li2/g;->O()V

    return-void
.end method

.method public setShapeAppearanceModel(Li2/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iput-object p1, v0, Li2/g$c;->a:Li2/k;

    .line 2
    invoke-virtual {p0}, Li2/g;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Li2/g;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iput-object p1, v0, Li2/g$c;->g:Landroid/content/res/ColorStateList;

    .line 2
    invoke-direct {p0}, Li2/g;->h0()Z

    .line 3
    invoke-direct {p0}, Li2/g;->O()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v1, v0, Li2/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 2
    iput-object p1, v0, Li2/g$c;->h:Landroid/graphics/PorterDuff$Mode;

    .line 3
    invoke-direct {p0}, Li2/g;->h0()Z

    .line 4
    invoke-direct {p0}, Li2/g;->O()V

    :cond_0
    return-void
.end method

.method public t()F
    .locals 1

    .line 1
    iget-object v0, p0, Li2/g;->a:Li2/g$c;

    iget-object v0, v0, Li2/g$c;->a:Li2/k;

    .line 2
    invoke-virtual {v0}, Li2/k;->l()Li2/c;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Li2/g;->u()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Li2/c;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method protected u()Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Li2/g;->m:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Li2/g;->m:Landroid/graphics/RectF;

    return-object p0
.end method

.method public w()F
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget p0, p0, Li2/g$c;->o:F

    return p0
.end method

.method public x()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget-object p0, p0, Li2/g$c;->d:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public y()F
    .locals 0

    iget-object p0, p0, Li2/g;->a:Li2/g$c;

    iget p0, p0, Li2/g$c;->n:F

    return p0
.end method

.method public z()I
    .locals 0

    iget p0, p0, Li2/g;->y:I

    return p0
.end method
