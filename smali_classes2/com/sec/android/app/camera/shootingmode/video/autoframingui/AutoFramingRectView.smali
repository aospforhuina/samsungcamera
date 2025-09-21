.class public Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;
.super Landroid/widget/RelativeLayout;
.source "AutoFramingRectView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoFramingRectView"


# instance fields
.field private mAutoFramingRectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/widget/y;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mOrientation:I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mOrientation:I

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mOrientation:I

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/widget/y;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->lambda$startManualTrackingAnimation$0(Lcom/sec/android/app/camera/widget/y;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private init()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 4
    new-instance v3, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/camera/widget/y;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x4

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$startManualTrackingAnimation$0(Lcom/sec/android/app/camera/widget/y;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/y;->setEdgeRatio(F)V

    return-void
.end method

.method private resetAutoFramingRectView(Lcom/sec/android/app/camera/widget/y;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/widget/y;->setEdgeRatio(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private startManualTrackingAnimation(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/widget/y;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/y;->setEdgeRatio(F)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    new-instance p0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3, v0, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    new-instance p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/d;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/d;-><init>(Lcom/sec/android/app/camera/widget/y;)V

    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private transformCoordinate(Landroid/graphics/RectF;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mOrientation:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 3
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mOrientation:I

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq p0, v1, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, v1

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1, p0, v1, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v1

    .line 6
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    .line 7
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float v1, p0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float v2, v0, v2

    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 8
    :cond_2
    iget p0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :goto_0
    return-void
.end method

.method private updateRectLayout(IFFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int p3, p4

    float-to-int p4, p5

    invoke-direct {p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 4
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {p3, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method enableAutoFramingRectView(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAutoFramingRectView : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoFramingRectView"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method resetAutoFramingRect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/y;

    .line 4
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->resetAutoFramingRectView(Lcom/sec/android/app/camera/widget/y;)V

    const/4 v2, 0x4

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method startManualTracking([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->startManualTrackingAnimation(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->updateAutoFramingRect([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    return-void
.end method

.method stopManualTracking([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/y;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/y;->setEdgeRatio(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->updateAutoFramingRect([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    return-void
.end method

.method updateAutoFramingDrawingArea(Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mOrientation:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    const/16 v1, -0x5a

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method updateAutoFramingRect([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 10

    const/4 v0, 0x0

    move v7, v0

    .line 1
    :goto_0
    array-length v1, p1

    const/4 v8, 0x4

    if-ge v7, v1, :cond_2

    .line 2
    aget-object v1, p1, v7

    invoke-static {v1}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v9

    .line 3
    invoke-virtual {p2, v9}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 5
    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v2

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v4, v2

    div-float/2addr v4, v3

    .line 6
    iget v2, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v1

    iget v3, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget v5, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v5, v1

    iget v1, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v4

    invoke-virtual {v9, v2, v3, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->transformCoordinate(Landroid/graphics/RectF;)V

    .line 9
    :cond_0
    iget v3, v9, Landroid/graphics/RectF;->left:F

    iget v4, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object v1, p0

    move v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->updateRectLayout(IFFFF)V

    .line 10
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/y;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->resetAutoFramingRectView(Lcom/sec/android/app/camera/widget/y;)V

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 14
    :cond_2
    array-length p1, p1

    :goto_2
    const/16 p2, 0xa

    if-ge p1, p2, :cond_4

    .line 15
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-ne p2, v8, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/widget/y;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->resetAutoFramingRectView(Lcom/sec/android/app/camera/widget/y;)V

    .line 17
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mAutoFramingRectList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/widget/y;

    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method updateOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->mOrientation:I

    return-void
.end method
