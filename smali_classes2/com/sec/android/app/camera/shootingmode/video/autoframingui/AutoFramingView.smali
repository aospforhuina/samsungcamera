.class public Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AutoFramingView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;


# static fields
.field private static final AUTO_FRAMING_TOAST_TIMEOUT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "AutoFramingView"


# instance fields
.field private mIsRecording:Z

.field private mOrientation:I

.field private mPresenter:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;

.field private mViewBinding:Lo5/q8;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mIsRecording:Z

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mIsRecording:Z

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->initView()V

    return-void
.end method

.method private applyAutoFramingButtonConstraintTablet()V
    .locals 8

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v1, v1, Lo5/q8;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v1, v1, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 7
    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07042c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 9
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eqz v4, :cond_0

    .line 10
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v4, v4, Lo5/q8;->g:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v7, 0x7

    invoke-virtual {v0, v1, v7, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 11
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v4, v4, Lo5/q8;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v6, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    invoke-virtual {v0, v1, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v4, v4, Lo5/q8;->k:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v7, 0x6

    invoke-virtual {v0, v1, v7, v4, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 14
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v4, v4, Lo5/q8;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v0, v1, v6, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 15
    invoke-virtual {v0, v1, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 16
    :goto_0
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isPortrait(F)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v1, v6, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 17
    invoke-virtual {v0, v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setTransformPivot(IFF)V

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->lambda$refreshToastGuidePosition$2()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->lambda$onOrientationChanged$1()V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->lambda$initialize$0(Z)V

    return-void
.end method

.method private getGuideTextViewLandscapeTranslateX()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    if-eqz v0, :cond_1

    const/16 v1, -0x5a

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mIsRecording:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideLandscapeDefaultTranslateX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070038

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideLandscapeDefaultTranslateX()F

    move-result p0

    return p0
.end method

.method private getToastGuideColor(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)I
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->TRACKING_ON:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    if-ne p1, p0, :cond_0

    const p0, 0x7f060013

    goto :goto_0

    :cond_0
    const p0, 0x7f060014

    :goto_0
    return p0
.end method

.method private getToastGuideLandscapeDefaultTranslateX()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr v0, p0

    int-to-float p0, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method private getToastGuideString(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView$1;->$SwitchMap$com$sec$android$app$camera$shootingmode$video$autoframingui$AutoFramingContract$ToastGuideType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205c2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205c4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getTrackingToastString(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 5
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getTrackingToastString(Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 6
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205de

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getToastGuideText()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method private getTrackingToastString(Z)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_0

    const p1, 0x7f1205e4

    goto :goto_0

    :cond_0
    const p1, 0x7f1205e3

    :goto_0
    const/4 v0, 0x1

    const v1, 0x7f1205c3

    invoke-static {p0, v0, v1, p1}, Lcom/sec/android/app/camera/util/TextUtil;->getStylizedText(Landroid/content/Context;III)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/q8;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/q8;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    .line 2
    iget-object v0, v0, Lo5/q8;->d:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->b:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->o:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->m:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->g:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 8
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    const/4 v2, -0x1

    .line 9
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v2, v2, Lo5/q8;->d:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setRotation(F)V

    :cond_0
    return-void
.end method

.method private initializeButtonBackground(I)V
    .locals 6

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const v1, 0x7f0805df

    const v2, 0x7f0805e0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p1, p1, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setBackgroundResource(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p1, p1, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setBackgroundResource(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result v0

    if-le v0, p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p1, p1, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setBackgroundResource(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p1, p1, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setBackgroundResource(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$initialize$0(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;->onButtonClicked(Z)V

    return-void
.end method

.method private synthetic lambda$onOrientationChanged$1()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->applyAutoFramingButtonConstraintTablet()V

    return-void
.end method

.method private synthetic lambda$refreshToastGuidePosition$2()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private refreshToastGuidePosition()V
    .locals 6

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v3, v3, Lo5/q8;->o:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 5
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    const v4, 0x7f0701af

    const/4 v5, -0x1

    if-nez v3, :cond_1

    .line 6
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 7
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 10
    :cond_1
    iput v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v1, v1, Lo5/q8;->m:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 12
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getGuideTextViewLandscapeTranslateX()F

    move-result v1

    .line 15
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setRotation(F)V

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideText()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 18
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/f;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/f;-><init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setButtonClickable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setAutoFramingButtonClickable(Z)V

    return-void
.end method

.method private showAnimation(Landroid/view/View;)V
    .locals 2

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    .line 2
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public enableAutoFramingRectView(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->resetAutoFramingRect()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->enableAutoFramingRectView(Z)V

    return-void
.end method

.method public getToastSize()Landroid/util/Size;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TextView;->measure(II)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public hideAutoFramingRect()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->resetAutoFramingRect()V

    return-void
.end method

.method public hideRecordingGuide()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->setButtonClickable(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;->onRecordingGuideHideRequested()V

    return-void
.end method

.method public hideToastGuide()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mIsRecording:Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->n:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public initialize()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/e;-><init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setAutoFramingButtonClickListener(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$AutoFramingButtonClickListener;)V

    return-void
.end method

.method public initializeButton(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setButtonIcon(Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->initializeButtonBackground(I)V

    return-void
.end method

.method public isAutoFramingRectSelected()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result p0

    return p0
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mOrientation:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->updateOrientation(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->cancelAnimation()V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/g;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/g;-><init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    int-to-float p1, p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->refreshToastGuidePosition()V

    :goto_0
    return-void
.end method

.method public setButtonSelected(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->setBackgroundButtonSelected(Z)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->setPresenter(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;

    return-void
.end method

.method public showRecordingGuide()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->setButtonClickable(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;->onRecordingGuideShowRequested()V

    return-void
.end method

.method public showToastGuide(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;Z)V
    .locals 3

    .line 1
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mIsRecording:Z

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p2, p2, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p2, p2, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideColor(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p2, p2, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->getToastGuideString(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->refreshToastGuidePosition()V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p1, p1, Lo5/q8;->n:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->showAnimation(Landroid/view/View;)V

    return-void
.end method

.method public startButtonClickAnimation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->startButtonClickAnimation(Z)V

    return-void
.end method

.method public updateAutoFramingDrawingArea(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->updateAutoFramingDrawingArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateAutoFramingRect(Z[Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object v0, v0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->startManualTracking([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->stopManualTracking([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->b:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingRectView;->updateAutoFramingRect([Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateButtonBackground(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;->mViewBinding:Lo5/q8;

    iget-object p0, p0, Lo5/q8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->updateButtonBackground(Z)V

    return-void
.end method
