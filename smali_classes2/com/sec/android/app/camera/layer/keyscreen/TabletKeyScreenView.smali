.class public Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;
.super Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;
.source "TabletKeyScreenView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private applyBottomAreaConstraint()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x6

    .line 2
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v1, 0x7

    .line 3
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07003d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v2, v2, Lo5/n0;->m:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v2, v2, Lo5/n0;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object p0, p0, Lo5/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyBurstCountTextConstraint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x6

    .line 2
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v1, 0x7

    .line 3
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v1, 0x4

    .line 5
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v1, v1, Lo5/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v1, v1, Lo5/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v1

    const v2, 0x7f07003b

    if-eqz v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v1, v1, Lo5/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v1, v1, Lo5/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object p0, p0, Lo5/n0;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyIndicatorViewConstraint()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->g:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x1

    .line 2
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    .line 4
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v2

    const v3, 0x7f0701b3

    const v4, 0x7f0701b5

    if-eqz v2, :cond_0

    .line 6
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    goto :goto_0

    .line 8
    :cond_0
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    .line 10
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object p0, p0, Lo5/n0;->g:Lcom/sec/android/app/camera/layer/keyscreen/indicator/IndicatorView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private applyKeyScreenConstraint()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->n:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/u;->a:Lcom/sec/android/app/camera/layer/keyscreen/u;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isPortrait(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/p;->a:Lcom/sec/android/app/camera/layer/keyscreen/p;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->s:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/s;->a:Lcom/sec/android/app/camera/layer/keyscreen/s;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->u:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/o;->a:Lcom/sec/android/app/camera/layer/keyscreen/o;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->s:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/q;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->m:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/t;->a:Lcom/sec/android/app/camera/layer/keyscreen/t;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/keyscreen/r;->a:Lcom/sec/android/app/camera/layer/keyscreen/r;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setShutterAreaCenterGuideline(Landroid/content/Context;Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setHorizontalTabletGuidelines(Landroid/view/View;F)V

    return-void
.end method

.method private applyMiddleAreaConstraint()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x6

    .line 3
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v1, 0x7

    .line 4
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v1

    const v2, 0x7f0a0211

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0708e0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v3, v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0708db

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0708d9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v3, v1

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0a020e

    .line 11
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 12
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 13
    :cond_1
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    .line 15
    :cond_2
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 17
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708e3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v2

    const v3, 0x7f0708e9

    const v4, 0x7f0708ea

    const v5, 0x7f0708ff

    if-eqz v2, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0708fe

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0708fd

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->updateLayout(F)V

    return-void
.end method

.method private static synthetic lambda$applyKeyScreenConstraint$1(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$applyKeyScreenConstraint$2(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    const v0, 0x3e3851ec    # 0.18f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$applyKeyScreenConstraint$3(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    const v0, 0x3f51eb85    # 0.82f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$applyKeyScreenConstraint$4(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$applyKeyScreenConstraint$5(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$applyKeyScreenConstraint$6(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$applyKeyScreenConstraint$7(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private synthetic lambda$initialize$0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->onPinEdgeModeChanged()V

    return-void
.end method

.method private onPinEdgeModeChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setHorizontalTabletGuidelines(Landroid/view/View;F)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->updateShootingModeListSize()V

    return-void
.end method

.method public static synthetic s(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$applyKeyScreenConstraint$4(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method private setCenterButtonMargin(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->IDLE:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-eq p1, v0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;->CAPTURING:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070058

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->changeLeftButtonMarginToCenter(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->changeRightButtonMarginToCenter(I)V

    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$initialize$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic u(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$applyKeyScreenConstraint$2(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method private updateShootingModeListSize()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v2, v2, Lo5/n0;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 5
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isPortrait(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07079a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0702c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0702c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07078d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getShootingModeListLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object p0, p0, Lo5/n0;->x:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic v(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$applyKeyScreenConstraint$5(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic w(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$applyKeyScreenConstraint$7(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic x(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$applyKeyScreenConstraint$3(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic y(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$applyKeyScreenConstraint$6(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic z(Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->lambda$applyKeyScreenConstraint$1(Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method


# virtual methods
.method protected changeLeftButtonMarginToCenter(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getLeftButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getLeftButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected changeRightButtonMarginToCenter(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getRightButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getRightButton()Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getTouchAeAfRestrictedLeftArea()Landroid/graphics/Rect;
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    const v1, 0x7f0a0532

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getTouchAeAfRestrictedRightArea()Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v2, v2, Lo5/n0;->b:Lo5/q;

    iget-object v2, v2, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v2, v2, Lo5/n0;->b:Lo5/q;

    iget-object v2, v2, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v2, v2, Lo5/n0;->b:Lo5/q;

    iget-object v2, v2, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v2, v2, Lo5/n0;->b:Lo5/q;

    iget-object v2, v2, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :cond_2
    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->initialize()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotatableLayout(Z)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyBottomAreaConstraint()V

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->invalidateItemDecorations()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyMiddleAreaConstraint()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->updateShootingModeListSize()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyIndicatorViewConstraint()V

    .line 8
    sget-object v0, Lu3/b;->r3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyBurstCountTextConstraint()V

    .line 10
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/n;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/n;-><init>(Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->observePinEdgeMode(Landroid/view/View;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onLastViewScrollChanged(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->y:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->showEditButton()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->hideEditButton()V

    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->isRotatableLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getCenterButton()Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->setKeyScreenLayerOrientation(I)V

    const/4 p1, 0x0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->onOrientationChanged(I)V

    return-void
.end method

.method public onRotate(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyKeyScreenConstraint()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyBottomAreaConstraint()V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getQuickSettingView()Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView;->invalidateItemDecorations()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyMiddleAreaConstraint()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyIndicatorViewConstraint()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->updateShootingModeListSize()V

    .line 7
    sget-object p1, Lu3/b;->r3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->applyBurstCountTextConstraint()V

    :cond_0
    return-void
.end method

.method public setCenterButtonAction(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->setCenterButtonAction(Ljava/util/List;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonAction;->SWIPE_RIGHT:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonAction;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->enableSwipeRightAction()V

    .line 4
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonAction;->SWIPE_LEFT:Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonAction;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object p0, p0, Lo5/n0;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->enableSwipeLeftAction()V

    :cond_2
    return-void
.end method

.method public setCenterButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->a:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;->updateButtonState(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/TabletKeyScreenView;->setCenterButtonMargin(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->b:Lo5/q;

    iget-object v0, v0, Lo5/q;->g:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;->updateButton(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object p0, p0, Lo5/n0;->b:Lo5/q;

    iget-object p0, p0, Lo5/q;->c:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;->updateButton(Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager$CenterButtonState;)V

    return-void
.end method

.method protected updateIndicatorOrientationPosition()V
    .locals 0

    return-void
.end method
