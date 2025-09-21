.class public Lcom/sec/android/app/camera/util/layout/LayoutUtil;
.super Ljava/lang/Object;
.source "LayoutUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->lambda$setShutterAreaCenterGuideline$0(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic b(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->lambda$setHorizontalTabletGuidelines$3(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static synthetic c(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->lambda$setHorizontalTabletGuidelines$1(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static clearAllConstraints(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v0, 0x7

    .line 2
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v0, 0x3

    .line 3
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    const/4 v0, 0x4

    .line 4
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    return-void
.end method

.method public static clearMargins(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->semSetMarginsRelative(IIII)V

    .line 2
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 3
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method public static synthetic d(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->lambda$setHorizontalTabletGuidelines$2(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method private static getScreenHeight(Landroid/view/View;I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/layout/PinEdgeUtil;->isPinEdgePanelRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/layout/PinEdgeUtil;->getPinEdgeArea(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object p0

    int-to-float p1, p1

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getVerticalPinEdgeOffset(Landroid/content/Context;)F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/sec/android/app/camera/util/layout/PinEdgeUtil;->isPinEdgePanelRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/util/layout/PinEdgeUtil;->getNavigationBarHeightPercent(Landroid/content/Context;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isInTabletBlackArea(Landroid/view/View;I)Z
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->getScreenHeight(Landroid/view/View;I)I

    move-result v2

    .line 4
    invoke-static {p0, v0, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    if-gt p0, p1, :cond_0

    sub-int/2addr v2, p1

    if-ge v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isInTabletBlackArea(Landroid/view/View;II)Z
    .locals 3

    .line 6
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    .line 8
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->getScreenHeight(Landroid/view/View;I)I

    move-result v2

    .line 9
    invoke-static {p0, v0, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    add-int/2addr v0, p2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    if-gt p0, p1, :cond_0

    sub-int/2addr v2, p1

    if-ge v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static synthetic lambda$setHorizontalTabletGuidelines$1(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lu3/g;->k:Lu3/g;

    invoke-static {p0}, Lu3/d;->a(Lu3/g;)F

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f090011

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    .line 3
    :goto_0
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$setHorizontalTabletGuidelines$2(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lu3/g;->b:Lu3/g;

    invoke-static {p0}, Lu3/d;->a(Lu3/g;)F

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->getVerticalPinEdgeOffset(Landroid/content/Context;)F

    move-result p1

    sub-float/2addr p0, p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f090004

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    .line 3
    :goto_0
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$setHorizontalTabletGuidelines$3(ZLandroid/view/View;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object p0, Lu3/g;->d:Lu3/g;

    invoke-static {p0}, Lu3/d;->a(Lu3/g;)F

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f09000d

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    .line 3
    :goto_0
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private static synthetic lambda$setShutterAreaCenterGuideline$0(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setShutterAreaCenterGuideline(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method public static setHorizontalTabletGuidelines(Landroid/view/View;F)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isPortrait(F)Z

    move-result p1

    const v0, 0x7f0a04df

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/layout/c;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/app/camera/util/layout/c;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const v0, 0x7f0a00c8

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/layout/d;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/app/camera/util/layout/d;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const v0, 0x7f0a0368

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/layout/b;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/app/camera/util/layout/b;-><init>(ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static setShutterAreaCenterGuideline(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0415

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/util/layout/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/util/layout/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static setShutterAreaCenterGuideline(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 3

    .line 2
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3
    sget-object v1, Lu3/b;->o:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b00ed

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0171

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 6
    :goto_0
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    .line 7
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method
