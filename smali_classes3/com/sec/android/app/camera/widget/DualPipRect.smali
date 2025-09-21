.class public Lcom/sec/android/app/camera/widget/DualPipRect;
.super Landroid/widget/FrameLayout;
.source "DualPipRect.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/DualPipRect$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Landroid/graphics/Point;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private f:I

.field private g:I

.field private k:I

.field private l:Lcom/sec/android/app/camera/widget/DualPipRect$a;

.field private m:I

.field private n:I

.field private o:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->c:Landroid/graphics/Point;

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create()Landroid/graphics/Point;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->f:I

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->m:I

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->n:I

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/widget/b;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/widget/b;-><init>(Lcom/sec/android/app/camera/widget/DualPipRect;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->o:Ljava/lang/Runnable;

    .line 9
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/DualPipRect;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->d()V

    return-void
.end method

.method private b(Landroid/graphics/Point;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->o:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->c()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->o:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    const-string v0, "DualPipRect"

    const-string v1, "handleDoubleClick"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->l:Lcom/sec/android/app/camera/widget/DualPipRect$a;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/widget/DualPipRect$a;->onPipRectDoubleClick()V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    const-string v0, "DualPipRect"

    const-string v1, "handleSingleClick"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->n:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->l:Lcom/sec/android/app/camera/widget/DualPipRect$a;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/widget/DualPipRect$a;->onPipRectSingleClick()V

    :cond_0
    return-void
.end method

.method private e(Landroid/view/MotionEvent;Landroid/graphics/Point;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/DualPipRect;->h(Landroid/graphics/Point;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->o:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->c:Landroid/graphics/Point;

    .line 7
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/DualPipRect;->b(Landroid/graphics/Point;)V

    goto :goto_1

    .line 8
    :cond_4
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->b:Landroid/graphics/Point;

    .line 9
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->l:Lcom/sec/android/app/camera/widget/DualPipRect$a;

    if-eqz p0, :cond_5

    .line 10
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/widget/DualPipRect$a;->onPipRectTouch(Landroid/view/MotionEvent;)V

    :cond_5
    return-void
.end method

.method private f(Landroid/view/MotionEvent;Landroid/graphics/Point;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_1

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/DualPipRect;->h(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->c:Landroid/graphics/Point;

    goto :goto_0

    .line 4
    :cond_2
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->b:Landroid/graphics/Point;

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->l:Lcom/sec/android/app/camera/widget/DualPipRect$a;

    if-eqz p0, :cond_3

    .line 6
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/widget/DualPipRect$a;->onPipRectTouch(Landroid/view/MotionEvent;)V

    :cond_3
    return-void
.end method

.method private getPipRectQuadrantPosition()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 2
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    div-int/2addr v3, v2

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    if-lt v0, v1, :cond_0

    iget v4, p0, Landroid/graphics/Point;->y:I

    if-gt v4, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gt v0, v1, :cond_1

    .line 4
    iget v4, p0, Landroid/graphics/Point;->y:I

    if-gt v4, v3, :cond_1

    return v2

    :cond_1
    if-gt v0, v1, :cond_2

    .line 5
    iget p0, p0, Landroid/graphics/Point;->y:I

    if-lt p0, v3, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private h(Landroid/graphics/Point;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->c:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->b:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 5
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 6
    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->c:Landroid/graphics/Point;

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_1

    .line 8
    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 9
    :cond_1
    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_3

    .line 12
    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 13
    :cond_3
    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p1, v0, :cond_4

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private k(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->f:I

    const/16 v2, -0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->g:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iget p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->k:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private l()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private m()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipRectQuadrantPosition()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x7f0703c5

    const v4, 0x7f0703c7

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private q()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->getPipRectQuadrantPosition()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    .line 8
    sget-object v2, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public g(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 2
    iput p2, v0, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public getPipRect()Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float v3, p0

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr p0, v0

    int-to-float p0, p0

    invoke-static {v2, v3, v1, p0}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public getPipState()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->n:I

    return p0
.end method

.method public getPipType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->m:I

    return p0
.end method

.method public i(IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 2
    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 3
    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 4
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public j(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->g:I

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->k:I

    return-void
.end method

.method public n(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->f:I

    return-void
.end method

.method public o()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iget v2, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703c7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/2addr v5, v1

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->a:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    .line 9
    sget-object v2, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getRatio()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->n:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/DualPipRect;->k(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object p1

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->m:I

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->f(Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/widget/DualPipRect;->e(Landroid/view/MotionEvent;Landroid/graphics/Point;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public p()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->m:I

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->q()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->m()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/DualPipRect;->l()V

    :goto_0
    return-void
.end method

.method public setDualPipRectEventListener(Lcom/sec/android/app/camera/widget/DualPipRect$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->l:Lcom/sec/android/app/camera/widget/DualPipRect$a;

    return-void
.end method

.method public setPipState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->n:I

    return-void
.end method

.method public setPipType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/DualPipRect;->m:I

    return-void
.end method
