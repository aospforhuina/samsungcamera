.class public Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SmartScan.java"


# static fields
.field private static final ALPHA_DURATION:I = 0x96

.field protected static final TAG:Ljava/lang/String; = "SmartScan"

.field public static final VERTEX_COUNT:I = 0x4


# instance fields
.field private final IMAGE_SIZE:F

.field private mOrientation:I

.field private mRect:Landroid/graphics/RectF;

.field private mVertex:[Landroid/widget/ImageView;

.field private mViewBinding:Lo5/k6;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707f6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707f6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 8
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    .line 9
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0707f6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 13
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    .line 14
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->init()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->lambda$updateSmartScanButton$2(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic c(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->lambda$updateSmartScanButton$1(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->lambda$updateSmartScanButton$3(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->lambda$update$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mOrientation:I

    return p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->updateSmartScanButton(I)V

    return-void
.end method

.method private getCenterPosition(Landroid/graphics/PointF;F)Landroid/graphics/PointF;
    .locals 1

    iget p0, p1, Landroid/graphics/PointF;->x:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p0, p2

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p1, p2

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private getPosition(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;
    .locals 5

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object p1

    .line 2
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    sub-float v3, v0, v3

    div-float v4, v1, v2

    add-float/2addr v0, v4

    .line 3
    iget p1, p1, Landroid/graphics/PointF;->y:F

    div-float v4, v1, v2

    sub-float v4, p1, v4

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    .line 4
    invoke-static {v3, v4, v0, p1}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v2

    add-float/2addr p2, p1

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    .line 9
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->getTransformedPositionTablet(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mRect:Landroid/graphics/RectF;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    div-float v1, p0, v2

    sub-float/2addr p2, v1

    iput p2, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr p0, v2

    sub-float/2addr v0, p0

    .line 12
    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 13
    invoke-static {p2, v0}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private getTransformedPositionTablet(FF)Landroid/graphics/PointF;
    .locals 4

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create()Landroid/graphics/PointF;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mOrientation:I

    const/16 v2, -0x5a

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_0

    .line 3
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    div-float v1, p0, v3

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr p0, v3

    sub-float/2addr p2, p0

    .line 4
    iput p2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    div-float/2addr p0, v3

    sub-float/2addr p1, p0

    iput p1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 7
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    div-float/2addr v1, v3

    sub-float/2addr p2, v1

    iput p2, v0, Landroid/graphics/PointF;->x:F

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p2, p1

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    div-float/2addr p0, v3

    sub-float/2addr p2, p0

    iput p2, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p2

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    div-float p2, p0, v3

    sub-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr p0, v3

    sub-float/2addr p1, p0

    .line 10
    iput p1, v0, Landroid/graphics/PointF;->y:F

    :goto_0
    return-object v0
.end method

.method private init()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/k6;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k6;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    .line 2
    iget-object v0, v0, Lo5/k6;->a:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object v1, v1, Lo5/k6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 5
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const v4, 0x7f080458

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$update$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p0, p0, Lo5/k6;->b:Lcom/sec/android/app/camera/widget/Quadrangle;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private static synthetic lambda$updateSmartScanButton$1(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    sget-object v0, Lu3/g;->b:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private synthetic lambda$updateSmartScanButton$2(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f090004

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private synthetic lambda$updateSmartScanButton$3(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f090004

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private updateSmartScanButton(I)V
    .locals 5

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/Constraints$LayoutParams;-><init>(II)V

    .line 2
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/16 v2, 0x5a

    const/16 v3, -0x5a

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mOrientation:I

    const v1, 0x7f0707e9

    if-eq p1, v3, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    const/16 v1, 0xb4

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p1, p1, Lo5/k6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/u0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/u0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 7
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p1, p1, Lo5/k6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/w0;->a:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/w0;

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0707e8

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0705d3

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p1, p1, Lo5/k6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/v0;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/v0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 13
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 15
    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p0, p0, Lo5/k6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_1

    :cond_3
    if-eq p1, v3, :cond_6

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 18
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    goto :goto_1

    .line 19
    :cond_5
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 20
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p0, p0, Lo5/k6;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto :goto_1

    .line 22
    :cond_6
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 23
    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    :goto_1
    return-void
.end method


# virtual methods
.method hide()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object v0, v0, Lo5/k6;->b:Lcom/sec/android/app/camera/widget/Quadrangle;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method update([FLandroid/graphics/Matrix;Z)V
    .locals 9

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x4

    new-array v2, v1, [Landroid/graphics/PointF;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    mul-int/lit8 v5, v4, 0x2

    .line 1
    aget v6, p1, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, p1, v7

    invoke-static {v6, v8}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create(FF)Landroid/graphics/PointF;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->getPosition(Landroid/graphics/PointF;Landroid/graphics/Matrix;)Landroid/graphics/PointF;

    move-result-object v6

    aput-object v6, v2, v4

    .line 2
    aget-object v6, v2, v4

    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    invoke-direct {p0, v6, v8}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->getCenterPosition(Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->x:F

    aput v6, v0, v5

    .line 3
    aget-object v5, v2, v4

    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->IMAGE_SIZE:F

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->getCenterPosition(Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    aput v5, v0, v7

    .line 4
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    aget-object v6, v2, v4

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 5
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mVertex:[Landroid/widget/ImageView;

    aget-object v5, v5, v4

    aget-object v6, v2, v4

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTranslationY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120263

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p1, p1, Lo5/k6;->b:Lcom/sec/android/app/camera/widget/Quadrangle;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/widget/Quadrangle;->setPoints([F)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mViewBinding:Lo5/k6;

    iget-object p1, p1, Lo5/k6;->b:Lcom/sec/android/app/camera/widget/Quadrangle;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p3, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 11
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x96

    .line 12
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/t0;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/t0;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method updateOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mOrientation:I

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan$1;-><init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method updatePreviewRect()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;->updateSmartScanButton(I)V

    return-void
.end method
