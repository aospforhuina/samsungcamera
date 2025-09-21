.class public Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;
.super Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;
.source "ProTipsView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$View;"
    }
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mLensButtonVisibleRect:Landroid/graphics/Rect;

.field private mTitle:Ljava/lang/String;

.field private mTopGuidelinePercent:F

.field private mType:I

.field private mViewBinding:Lo5/v3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    return-void
.end method

.method private applyConstraintsForTablet()V
    .locals 7

    .line 1
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07051f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07051e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/4 v3, 0x4

    .line 6
    invoke-virtual {v6, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v6, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/4 v3, 0x7

    .line 8
    invoke-virtual {v6, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 9
    iget v3, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v3

    if-eqz v3, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, v6

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v6, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->lambda$hide$1()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method private hide()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lu5/b;

    invoke-direct {v1, p0}, Lu5/b;-><init>(Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private inflateLayout()V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/v3;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/v3;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    return-void
.end method

.method private isTipsNeedSmallSize()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mTopGuidelinePercent:F

    sget-object v0, Lu3/g;->k:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private isTouchInTheLensButtonVisibleRect(II)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mLensButtonVisibleRect:Landroid/graphics/Rect;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isTouchInTheManualOptionArea(II)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private isTouchInTheTips(II)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$hide$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;->onPopupHideRequested()V

    return-void
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p1, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$Presenter;

    invoke-interface {p1}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$Presenter;->onCloseButtonClick()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->hide()V

    return-void
.end method

.method private loadStyleFromResource()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mStyleResourceId:I

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->Popup:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mStyledAttributes:Landroid/content/res/TypedArray;

    const/16 v0, 0x13

    .line 2
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mTitle:Ljava/lang/String;

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mDescription:Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updateAreaLocation()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, -0x5a

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v3, v3, Lo5/v3;->n:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_2

    .line 4
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v3, v3, Lo5/v3;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    :goto_2
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v3, v3, Lo5/v3;->c:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v3, v3, Lo5/v3;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eqz v0, :cond_5

    goto :goto_4

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    :goto_4
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateGuideline()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    const/16 v1, -0x5a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    .line 2
    sget-object v2, Lu3/g;->b:Lu3/g;

    invoke-static {v2}, Lu3/d;->a(Lu3/g;)F

    move-result v2

    sub-float v2, v1, v2

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mTopGuidelinePercent:F

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mTopGuidelinePercent:F

    sub-float/2addr v1, v0

    goto :goto_2

    :cond_2
    sget-object v0, Lu3/g;->b:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    .line 4
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->n:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    return-void
.end method

.method private updateLandscapeTipsLocation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    const/4 v2, -0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->n:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->c:Landroid/view/View;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->b:Landroid/view/View;

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 4
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 6
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070520

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updatePortraitTipsLocation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->c:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->b:Landroid/view/View;

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070520

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateReverseLandscapeTipsLocation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->c:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->b:Landroid/view/View;

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    const/4 v2, -0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->a:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 5
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070520

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 7
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTipsContents()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->l:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTipsLocation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateLandscapeTipsLocation()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updatePortraitTipsLocation()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateReverseLandscapeTipsLocation()V

    :goto_0
    return-void
.end method

.method private updateTipsTitleAlign()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->m:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->m:Landroid/widget/TextView;

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :goto_1
    return-void
.end method

.method private updateTipsWidth()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->isTipsNeedSmallSize()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070521

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070522

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v1, v1, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    float-to-int v0, v0

    .line 3
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object p0, p0, Lo5/v3;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->inflateLayout()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->loadStyleFromResource()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateTipsContents()V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->applyConstraintsForTablet()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateGuideline()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateAreaLocation()V

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateTipsLocation()V

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateTipsWidth()V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->updateTipsTitleAlign()V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mViewBinding:Lo5/v3;

    iget-object v0, v0, Lo5/v3;->k:Landroid/widget/ImageButton;

    new-instance v1, Lu5/a;

    invoke-direct {v1, p0}, Lu5/a;-><init>(Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isTipsHideRequired(II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->isTouchInTheTips(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->isTouchInTheLensButtonVisibleRect(II)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    if-nez v0, :cond_2

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->isTouchInTheManualOptionArea(II)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_2
    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->isTouchInTheTips(II)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->isTipsHideRequired(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p2, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$Presenter;

    invoke-interface {p2}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$Presenter;->onTapOutside()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->hide()V

    .line 8
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->isTouchInTheTips(II)Z

    move-result p0

    return p0
.end method

.method public setLensButtonVisibleRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mLensButtonVisibleRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setTipsType(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mType:I

    return-void
.end method

.method public setTopGuidelinePercent(F)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->mTopGuidelinePercent:F

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsView;->initialize()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/protips/ProTipsContract$Presenter;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;->onPopupShown(Z)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->startShowAnimation(Ljava/lang/Runnable;)V

    return-void
.end method
