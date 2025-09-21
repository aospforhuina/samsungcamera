.class abstract Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;
.super Landroid/widget/FrameLayout;
.source "AbstractAeAfGroup.java"


# static fields
.field private static final EDGE_BOTTOM:I = 0x8

.field private static final EDGE_LEFT:I = 0x1

.field private static final EDGE_LEFT_BOTTOM:I = 0x10

.field private static final EDGE_REVERSE_LEFT_BOTTOM:I = 0x11

.field private static final EDGE_REVERSE_RIGHT_BOTTOM:I = 0x1c

.field private static final EDGE_RIGHT:I = 0x2

.field private static final EDGE_RIGHT_BOTTOM:I = 0x18

.field private static final EDGE_TOP:I = 0x4


# instance fields
.field private mEdgePosition:I

.field protected mIsRotateAnimationRunning:Z

.field protected mOrientation:I

.field protected mRotateAnimation:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mOrientation:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mOrientation:I

    return-void
.end method

.method private getAeAfTextLeftEdgeRotation(IZ)I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result p0

    const/16 v0, 0xb4

    const/16 v1, -0xb4

    if-eqz p0, :cond_1

    const/16 p0, 0x5a

    if-eqz p2, :cond_0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_1
    const/16 p0, -0x5a

    if-eqz p2, :cond_2

    if-eq p1, p0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getAeAfTextRightEdgeRotation(IZ)I
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result p0

    const/16 v0, -0xb4

    const/16 v1, 0xb4

    if-eqz p0, :cond_1

    const/16 p0, -0x5a

    if-eqz p2, :cond_0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_1
    const/16 p0, 0x5a

    if-eqz p2, :cond_2

    if-eq p1, p0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getEdgePosition(IILandroid/graphics/Rect;II)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    int-to-float v2, p1

    .line 3
    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v3, v1

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget v3, p3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 5
    :goto_0
    sget-object v4, Lu3/b;->b:Lu3/b;

    invoke-static {v4}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_7

    .line 6
    iget v4, p3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    cmpg-float v4, v2, v4

    if-gez v4, :cond_2

    int-to-float v4, p2

    int-to-float v6, p4

    sub-float/2addr v6, v0

    div-float v7, v1, v5

    sub-float v7, v6, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_2

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    or-int/lit8 v3, v3, 0x10

    .line 7
    :cond_2
    iget v4, p3, Landroid/graphics/Rect;->right:I

    int-to-float v6, v4

    sub-float/2addr v6, v1

    sub-float/2addr v6, v0

    cmpl-float v6, v2, v6

    if-lez v6, :cond_3

    if-ge p1, v4, :cond_3

    int-to-float p1, p2

    int-to-float v6, p5

    sub-float/2addr v6, v0

    div-float v7, v1, v5

    sub-float v7, v6, v7

    cmpl-float v7, p1, v7

    if-lez v7, :cond_3

    cmpg-float p1, p1, v6

    if-gez p1, :cond_3

    or-int/lit8 v3, v3, 0x18

    .line 8
    :cond_3
    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mOrientation:I

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_4

    int-to-float p1, p4

    sub-float/2addr p1, v1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_4

    int-to-float p1, p2

    div-float v6, v1, v5

    div-float v7, v0, v5

    sub-float/2addr v6, v7

    cmpl-float v6, p1, v6

    if-lez v6, :cond_4

    add-float v6, v1, v0

    cmpg-float p1, p1, v6

    if-gez p1, :cond_4

    or-int/lit8 v3, v3, 0x1

    :cond_4
    const/16 p1, -0x5a

    if-ne p0, p1, :cond_5

    int-to-float p1, p4

    sub-float/2addr p1, v1

    cmpl-float p1, v2, p1

    if-lez p1, :cond_5

    int-to-float p1, p2

    div-float v6, v1, v5

    div-float v7, v0, v5

    sub-float/2addr v6, v7

    cmpl-float v6, p1, v6

    if-lez v6, :cond_5

    add-float v6, v1, v0

    cmpg-float p1, p1, v6

    if-gez p1, :cond_5

    or-int/lit8 p1, v3, 0x2

    move v3, p1

    :cond_5
    const/16 p1, 0xb4

    if-ne p0, p1, :cond_7

    int-to-float p0, p5

    div-float p1, v1, v5

    add-float/2addr p0, p1

    add-float/2addr p0, v0

    int-to-float p5, p2

    cmpl-float p0, p0, p5

    if-lez p0, :cond_6

    int-to-float p0, v4

    sub-float/2addr p0, v1

    sub-float/2addr p0, v0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_6

    or-int/lit8 p0, v3, 0x11

    move v3, p0

    :cond_6
    int-to-float p0, p4

    add-float/2addr p0, p1

    cmpg-float p0, p5, p0

    if-gez p0, :cond_7

    add-float p0, v1, v0

    cmpg-float p0, v2, p0

    if-gez p0, :cond_7

    or-int/lit8 v3, v3, 0x1c

    :cond_7
    int-to-float p0, p2

    .line 9
    iget p1, p3, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr p1, v0

    div-float/2addr v1, v5

    add-float/2addr p1, v1

    cmpg-float p1, p0, p1

    if-gez p1, :cond_8

    or-int/lit8 v3, v3, 0x4

    goto :goto_1

    .line 10
    :cond_8
    iget p1, p3, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    sub-float/2addr p1, v0

    sub-float/2addr p1, v1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_9

    or-int/lit8 v3, v3, 0x8

    :cond_9
    :goto_1
    return v3
.end method

.method private getEvSliderLeftEdgeRotation(IZ)I
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result p0

    const/16 v0, 0xb4

    const/16 v1, -0xb4

    if-eqz p0, :cond_1

    const/16 p0, -0x5a

    if-eqz p2, :cond_0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_1
    const/16 p0, 0x5a

    if-eqz p2, :cond_2

    if-ne p1, p0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private getEvSliderRightEdgeRotation(IZ)I
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result p0

    const/16 v0, -0xb4

    const/16 v1, 0xb4

    if-eqz p0, :cond_1

    const/16 p0, 0x5a

    if-eqz p2, :cond_0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_3

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_1
    const/16 p0, -0x5a

    if-eqz p2, :cond_2

    if-ne p1, p0, :cond_2

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    if-eq p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method private isEdgePosition(I)Z
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mEdgePosition:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setEvSliderPosition(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getEvSlider()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070030

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p0, p1

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setTranslationY(F)V

    return-void
.end method

.method private setTextPosition(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getAeAfText()Landroid/widget/TextView;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f07002d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070029

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    add-float/2addr p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method cancelRotateAnimation()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mRotateAnimation:Landroid/animation/AnimatorSet;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/b;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/b;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/a;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method abstract getAeAfSubViewGroup()Landroid/view/View;
.end method

.method abstract getAeAfText()Landroid/widget/TextView;
.end method

.method getAeAfTextRotation(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getAeAfText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getAeAfTextLeftEdgeRotation(IZ)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getAeAfTextRightEdgeRotation(IZ)I

    move-result v2

    :cond_2
    :goto_1
    return v2
.end method

.method abstract getEvSlider()Landroid/widget/SeekBar;
.end method

.method getEvSliderRotation(I)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getEvSlider()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getEvSliderLeftEdgeRotation(IZ)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 4
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getEvSliderRightEdgeRotation(IZ)I

    move-result v2

    :cond_2
    :goto_1
    return v2
.end method

.method onOrientationChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v0

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Lu4/e;

    invoke-direct {v2}, Lu4/e;-><init>()V

    invoke-static {p0, v0, p1, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getRotationAnimator(Landroid/view/View;FFILandroid/view/animation/Interpolator;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method abstract startSubViewRotateAnimation(I)V
.end method

.method updateAeAfPosition(IILandroid/graphics/Rect;II)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->getEdgePosition(IILandroid/graphics/Rect;II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mEdgePosition:I

    return-void
.end method

.method updateAeAfTextPosition()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mOrientation:I

    const/16 v1, -0x5a

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setTextPosition(Z)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x5

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setTextPosition(Z)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x2

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :cond_3
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setTextPosition(Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x6

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setTextPosition(Z)V

    goto :goto_2

    .line 8
    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v4

    :cond_7
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setTextPosition(Z)V

    :goto_2
    return-void
.end method

.method updateEvSliderPosition()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->mOrientation:I

    const/16 v1, -0x5a

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v0, v1, :cond_e

    if-eqz v0, :cond_a

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    .line 3
    :cond_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x11

    .line 4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x1c

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x4

    .line 8
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    .line 9
    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    :cond_4
    const/16 v0, 0xa

    .line 10
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    .line 12
    :cond_5
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 13
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    .line 15
    :cond_6
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    .line 16
    :cond_7
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    move v2, v3

    :cond_9
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    .line 17
    :cond_a
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x10

    .line 18
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 19
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto/16 :goto_3

    :cond_b
    const/16 v0, 0x18

    .line 20
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 21
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto :goto_3

    .line 22
    :cond_c
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto :goto_3

    .line 23
    :cond_d
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto :goto_3

    :cond_e
    const/16 v0, 0x9

    .line 24
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 25
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto :goto_3

    .line 26
    :cond_f
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_13

    .line 27
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 28
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto :goto_3

    .line 29
    :cond_10
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1

    :cond_11
    move v2, v3

    :cond_12
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    goto :goto_3

    .line 30
    :cond_13
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->isEdgePosition(I)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2

    :cond_14
    move v2, v3

    :cond_15
    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AbstractAeAfGroup;->setEvSliderPosition(Z)V

    :goto_3
    return-void
.end method
