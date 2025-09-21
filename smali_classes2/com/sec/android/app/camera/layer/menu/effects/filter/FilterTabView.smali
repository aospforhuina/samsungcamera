.class public Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;
.super Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;
.source "FilterTabView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;
.implements Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ItemEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView<",
        "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;",
        "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ItemEventListener;"
    }
.end annotation


# static fields
.field private static final ADDING_FILTERS_OPEN_BUTTON:I


# instance fields
.field private mAddingFiltersMenuBinding:Lo5/a;

.field private mIsAddingFiltersMenuOpened:Z

.field private mOrientation:I

.field private mRotateAnimator:Landroid/animation/ValueAnimator;

.field private mScreenHeight:I

.field private mViewBinding:Lo5/c2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mOrientation:I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mOrientation:I

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->initView()V

    return-void
.end method

.method static bridge synthetic A(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->updateButtonBackground(I)V

    return-void
.end method

.method private applyTabletConstraints(I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setShutterAreaCenterGuideline(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    sget-object v0, Lu3/b;->o:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, p1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070162

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v3, v3, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 6
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v2, v2, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v2, p1

    .line 8
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v3

    const v4, 0x7f07015f

    const v5, 0x7f07005e

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v3, v3, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v6, 0x6

    .line 10
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 11
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 12
    iget-object v7, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v7, v7, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v3, v3, Lo5/c2;->s:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 14
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 15
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v6, v6, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 16
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 18
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v5, v5, Lo5/c2;->s:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 20
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 21
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v5, v5, Lo5/c2;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    .line 22
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_1

    .line 23
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v3, v3, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v6, 0x7

    .line 24
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 25
    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 26
    iget-object v7, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v7, v7, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v3, v3, Lo5/c2;->s:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 28
    invoke-static {v3, v6}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 29
    iget-object v6, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v6, v6, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 30
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 31
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 32
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v5, v5, Lo5/c2;->s:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 34
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 35
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v5, v5, Lo5/c2;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    .line 36
    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 37
    :goto_1
    sget-object v0, Lu3/b;->z2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->updateAddingFilterMenuLayout(I)V

    .line 39
    :cond_2
    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p1, p1, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x3

    .line 41
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 43
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 44
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p1, p1, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x4

    .line 46
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 49
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private closeAddingFiltersMenuInternal()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v1, v1, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getRotation()F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v1, v1, v2

    const v2, 0x7f070158

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v1, v1, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getRotation()F

    move-result v1

    const/high16 v4, -0x3d4c0000    # -90.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    move v5, v1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    move v5, v3

    move v3, v1

    .line 5
    :goto_1
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 6
    new-instance v6, Lu4/e;

    invoke-direct {v6}, Lu4/e;-><init>()V

    move v7, v0

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7
    new-instance v2, Lu4/e;

    invoke-direct {v2}, Lu4/e;-><init>()V

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 8
    invoke-virtual {v1}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    new-instance v2, Lcom/sec/android/app/camera/layer/menu/effects/filter/k;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/k;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f12018a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getAddingFiltersMenu()Landroid/view/View;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->isInflated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getViewStub()Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->g:Landroidx/databinding/ViewStubProxy;

    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lo5/a;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotatableLayout(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->updateAddingFilterMenuLayout(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->a:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$2;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v1, v1, Lo5/a;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->enablePartialBlur(Landroid/content/Context;Landroid/view/View;F)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/i;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/i;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/h;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/h;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private hideFilterTitle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lu4/e;

    invoke-direct {v1}, Lu4/e;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b003f

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/c2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/c2;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v1, v1, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$3;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$4;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Lcom/sec/android/app/camera/layer/menu/effects/filter/o;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public static synthetic l(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$openAddingFiltersMenu$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$closeAddingFiltersMenuInternal$2(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->showFilterTitle()V

    return-void
.end method

.method private synthetic lambda$getAddingFiltersMenu$3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;->onFilterDownloadButtonClick()V

    return-void
.end method

.method private synthetic lambda$getAddingFiltersMenu$4(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;->onCreateMyFilterButtonClick()V

    return-void
.end method

.method private static synthetic lambda$openAddingFiltersMenu$5(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private synthetic lambda$openAddingFiltersMenuInternal$6(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object p0, p0, Lo5/a;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->semRequestAccessibilityFocus()Z

    return-void
.end method

.method private synthetic lambda$refreshViewAttachedToWindow$7()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v1, v1, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mAdapter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v2, v2, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;->onViewAttachedToWindow(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showFilterItemThumbnailAnimation$8(Lo5/k;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo5/k;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 2
    iget-object p0, p0, Lo5/k;->d:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method private synthetic lambda$showFilterList$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showFilterList$1()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->showFilterListInternal()V

    return-void
.end method

.method private synthetic lambda$showFilterListInternal$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$getAddingFiltersMenu$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$openAddingFiltersMenuInternal$6(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic o(Lo5/k;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$showFilterItemThumbnailAnimation$8(Lo5/k;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private openAddingFiltersMenu(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    const v0, 0x7f0b00d2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :goto_0
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_1

    :cond_2
    move p1, v1

    .line 5
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->a:Landroid/widget/ImageView;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->c:Landroid/widget/ImageView;

    :goto_2
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v1, 0x1

    aput p1, v3, v1

    .line 6
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mRotateAnimator:Landroid/animation/ValueAnimator;

    .line 7
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b003a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;

    invoke-direct {v1, p0, v0, v2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$5;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mRotateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/e;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/e;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 12
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    if-eqz p1, :cond_4

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->openAddingFiltersMenuInternal()V

    goto :goto_3

    .line 14
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->closeAddingFiltersMenuInternal()V

    :goto_3
    return-void
.end method

.method private openAddingFiltersMenuInternal()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v2, v2, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getRotation()F

    move-result v2

    const/high16 v3, 0x42b40000    # 90.0f

    cmpl-float v2, v2, v3

    const v3, 0x7f070158

    const/4 v4, 0x0

    const/high16 v9, -0x3d4c0000    # -90.0f

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v2, v2, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getRotation()F

    move-result v2

    cmpl-float v2, v2, v9

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    move v5, v2

    move v3, v4

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    neg-float v2, v2

    move v3, v2

    move v5, v4

    .line 6
    :goto_1
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 7
    new-instance v7, Lu4/e;

    invoke-direct {v7}, Lu4/e;-><init>()V

    move v8, v0

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 8
    new-instance v3, Lu4/e;

    invoke-direct {v3}, Lu4/e;-><init>()V

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v9

    const v2, 0x7f070151

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 13
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 14
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 15
    new-instance v6, Lu4/e;

    invoke-direct {v6}, Lu4/e;-><init>()V

    move v4, v0

    move v7, v8

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 16
    new-instance v2, Lu4/e;

    invoke-direct {v2}, Lu4/e;-><init>()V

    invoke-static {v8, v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 18
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 19
    new-instance v6, Lu4/e;

    invoke-direct {v6}, Lu4/e;-><init>()V

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 20
    new-instance v0, Lu4/e;

    invoke-direct {v0}, Lu4/e;-><init>()V

    invoke-static {v8, v0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 21
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 22
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/j;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/j;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v9

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    iget-object v0, v0, Lo5/a;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 28
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->hideFilterTitle()V

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f12018b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$closeAddingFiltersMenuInternal$2(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$getAddingFiltersMenu$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$refreshViewAttachedToWindow$7()V

    return-void
.end method

.method private refreshViewAttachedToWindow()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/l;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/l;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$showFilterList$0()V

    return-void
.end method

.method private showFilterItemThumbnailAnimation(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mSnapHelper:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/FilterLinearSnapHelper;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/FilterLinearSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lo5/k;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070169

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 4
    iget-object v2, v0, Lo5/k;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 5
    iget-object v2, v0, Lo5/k;->d:Landroid/widget/ImageView;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v2, v1

    sub-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070166

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v2, v1

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v1, 0x0

    .line 7
    iget-object v3, v0, Lo5/k;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleX()F

    move-result v3

    aput v3, p1, v1

    const/4 v1, 0x1

    aput v2, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b003e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 9
    new-instance p0, Lu4/e;

    invoke-direct {p0}, Lu4/e;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    new-instance p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/g;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/g;-><init>(Lo5/k;)V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private showFilterListInternal()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    aput v2, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0041

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    new-instance v2, Lu4/e;

    invoke-direct {v2}, Lu4/e;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    new-instance v2, Lcom/sec/android/app/camera/layer/menu/effects/filter/f;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/f;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lu4/e;

    invoke-direct {v1}, Lu4/e;-><init>()V

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private showFilterTitle()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lu4/e;

    invoke-direct {v1}, Lu4/e;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0040

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$showFilterList$1()V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->lambda$showFilterListInternal$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private updateAddingFilterMenuLayout(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3
    sget-object v1, Lu3/b;->o:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070153

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_0
    int-to-float p1, p1

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p1, p1, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 7
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p1, p1, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 10
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 12
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateButtonBackground(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mOrientation:I

    iget v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mScreenHeight:I

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, p1, :cond_1

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->a:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p1, p1, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804d5

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ViewSwitcher;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p1, p1, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0804d4

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ViewSwitcher;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method static bridge synthetic v(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/a;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mAddingFiltersMenuBinding:Lo5/a;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)Lo5/c2;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->openAddingFiltersMenu(Z)V

    return-void
.end method

.method static bridge synthetic y(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->refreshViewAttachedToWindow()V

    return-void
.end method

.method static bridge synthetic z(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->showFilterItemThumbnailAnimation(Z)V

    return-void
.end method


# virtual methods
.method public closeAddingFiltersMenu()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->openAddingFiltersMenu(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method protected getAddingFiltersButton()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    return-object p0
.end method

.method protected getCenterRect()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->k:Lcom/sec/android/app/camera/widget/RoundedClipRect;

    return-object p0
.end method

.method protected getFilterTitleTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method protected getList()Lcom/sec/android/app/camera/widget/a;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    return-object p0
.end method

.method protected getSlider()Lcom/sec/android/app/camera/widget/ExpandableSlider;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->s:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    return-object p0
.end method

.method public handleTouchUpEvent()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->openAddingFiltersMenu(Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;->onTouchUpAddingFiltersMenuClosed()V

    return v1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public hideAddingFiltersMenu()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->getAddingFiltersMenu()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    :cond_0
    return-void
.end method

.method public hideFilterList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->initialize()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/c2;->f(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;->onInitialize()V

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->setInitialized()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->setReverseLayout(Z)V

    return-void
.end method

.method public isAddingFiltersMenuOpened()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mIsAddingFiltersMenuOpened:Z

    return p0
.end method

.method public onAddingFiltersButtonClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->openAddingFiltersMenu(Z)V

    return-void
.end method

.method public onAttached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;->onItemAttached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V

    return-void
.end method

.method public onDetached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;->onItemDetached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V

    return-void
.end method

.method public onDragEnd(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->onDragEnd(I)V

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->showFilterItemThumbnailAnimation(Z)V

    return-void
.end method

.method public onDragStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->onDragStart()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->showFilterItemThumbnailAnimation(Z)V

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->openAddingFiltersMenu(Z)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->onOrientationChanged(I)V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->applyTabletConstraints(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->setAdapter(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->mAdapter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;->setItemEventListener(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ItemEventListener;)V

    return-void
.end method

.method public setDownloadButtonDim(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setEnabled(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object p0, p0, Lo5/c2;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mScreenHeight:I

    return-void
.end method

.method public showFilterList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->mViewBinding:Lo5/c2;

    iget-object v0, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/m;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/m;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/n;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/n;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateChildBackground(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabView;->updateChildBackground(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->updateButtonBackground(I)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->refreshViewAttachedToWindow()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
