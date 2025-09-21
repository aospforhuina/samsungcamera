.class public Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "BeautyTabView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$View;


# static fields
.field private static final BEAUTY_TYPE_BUTTON_TEXT_AUTO:I = 0x2

.field private static final BEAUTY_TYPE_BUTTON_TEXT_OFF:I = 0x0

.field private static final BEAUTY_TYPE_BUTTON_TEXT_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BeautyTabView"


# instance fields
.field private final mHideManualBeautyListListener:Lcom/sec/android/app/camera/util/AnimationUtil$AnimationEndListener;

.field private mIsInitialized:Z

.field private mOrientation:I

.field private mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

.field private mScreenHeight:I

.field private mViewBinding:Lo5/e2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mIsInitialized:Z

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/c;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mHideManualBeautyListListener:Lcom/sec/android/app/camera/util/AnimationUtil$AnimationEndListener;

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mOrientation:I

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mIsInitialized:Z

    .line 8
    new-instance p2, Lcom/sec/android/app/camera/layer/menu/effects/beauty/c;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/c;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mHideManualBeautyListListener:Lcom/sec/android/app/camera/util/AnimationUtil$AnimationEndListener;

    .line 9
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mOrientation:I

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mIsInitialized:Z

    .line 13
    new-instance p2, Lcom/sec/android/app/camera/layer/menu/effects/beauty/c;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/c;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mHideManualBeautyListListener:Lcom/sec/android/app/camera/util/AnimationUtil$AnimationEndListener;

    .line 14
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mOrientation:I

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->initView()V

    return-void
.end method

.method private applyTabletConstraints(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setShutterAreaCenterGuideline(Landroid/content/Context;Landroid/view/View;)V

    int-to-float p1, p1

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070167

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07027b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result p1

    const v2, 0x7f07005e

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 7
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x6

    .line 10
    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 11
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 12
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 16
    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 18
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 19
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 22
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 23
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, 0x7

    .line 25
    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 26
    iput v3, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 31
    invoke-static {p1, v1}, Lcom/sec/android/app/camera/util/Util;->clearConstraint(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;I)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 33
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 34
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 35
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->lambda$initialize$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->lambda$initialize$2(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method private closeManualBeautyList(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 2
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-static {v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->clearAnimationIgnoringListener(Landroid/view/View;)V

    .line 3
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 4
    iget-object v4, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v4, v4, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 5
    sget-object v5, Lu3/b;->b:Lu3/b;

    invoke-static {v5}, Lu3/d;->e(Lu3/b;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v7, v7, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 6
    :cond_0
    new-instance v6, Landroid/view/animation/AnimationSet;

    invoke-direct {v6, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0011

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {v8, v9, v7}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 8
    invoke-static {v5}, Lu3/d;->e(Lu3/b;)Z

    move-result v5

    const v7, 0x7f0b0012

    const/high16 v10, 0x3e800000    # 0.25f

    if-eqz v5, :cond_1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sub-int v5, v1, v3

    .line 9
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v14

    mul-int/2addr v5, v14

    int-to-float v14, v5

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v10, v9, v9, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 11
    invoke-static/range {v11 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 12
    iget-object v11, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v11, v11, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v14, Landroid/view/animation/PathInterpolator;

    invoke-direct {v14, v10, v9, v9, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move v7, v5

    move v8, v11

    move v9, v12

    move v10, v13

    move-object v11, v14

    move v12, v15

    .line 14
    invoke-static/range {v7 .. v12}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    move-object/from16 v5, p1

    if-nez v3, :cond_2

    .line 15
    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 16
    :cond_2
    invoke-static {v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->clearAnimationIgnoringListener(Landroid/view/View;)V

    .line 17
    invoke-virtual {v4, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_3
    move-object/from16 v5, p1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->lambda$initialize$3(I)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;Landroid/view/animation/Animation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->lambda$new$0(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->lambda$refreshBeautyTypeButton$4()V

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->updateBeautyLayoutInternal(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->updateBeautyTypeButtonBackground(I)V

    return-void
.end method

.method private initView()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/e2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/e2;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    return-void
.end method

.method private isInBlackArea(Landroid/view/View;I)Z
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mOrientation:I

    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mScreenHeight:I

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result p0

    if-le p0, p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mIsInitialized:Z

    return p0
.end method

.method private synthetic lambda$initialize$1(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;->onTypeButtonClicked()V

    return-void
.end method

.method private synthetic lambda$initialize$2(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;->onManualBeautyListItemClicked(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method private synthetic lambda$initialize$3(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$Presenter;->onSliderProgressChanged(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$refreshBeautyTypeButton$4()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const v5, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0015

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private openManualBeautyList()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 3
    iget-object v4, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v4, v4, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v6, v6, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 5
    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8, v6}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaAnimation(FFI)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 7
    sget-object v6, Lu3/b;->b:Lu3/b;

    invoke-static {v6}, Lu3/d;->e(Lu3/b;)Z

    move-result v6

    const v9, 0x7f0b0012

    const/high16 v10, 0x3e800000    # 0.25f

    if-eqz v6, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    sub-int v6, v1, v3

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v13

    mul-int/2addr v6, v13

    int-to-float v13, v6

    const/4 v14, 0x0

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v10, v7, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 10
    invoke-static/range {v11 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 11
    :cond_0
    iget-object v6, v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v6, v6, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v11

    sub-int/2addr v6, v11

    int-to-float v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v15, Landroid/view/animation/PathInterpolator;

    invoke-direct {v15, v10, v7, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 13
    invoke-static/range {v11 .. v16}, Lcom/sec/android/app/camera/util/AnimationUtil;->getTranslationAnimation(FFFFLandroid/view/animation/Interpolator;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 14
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    mul-int/2addr v6, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 15
    invoke-static {v4}, Lcom/sec/android/app/camera/util/AnimationUtil;->clearAnimationIgnoringListener(Landroid/view/View;)V

    .line 16
    invoke-virtual {v4, v5}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private refreshBeautyTypeButton(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 5

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p2, p2, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x0

    const v4, 0x3fcccccd    # 1.6f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const v0, 0x3f666666    # 0.9f

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/e;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/e;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p2, p2, Lo5/e2;->b:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p2, p2, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lx5/e;->b(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lx5/e$b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p2, p2, Lo5/e2;->b:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 9
    sget-object p2, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$4;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->d:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 12
    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->d:Landroid/widget/ViewAnimator;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    goto :goto_0

    .line 14
    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setSelected(Z)V

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->d:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setInitialized()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mIsInitialized:Z

    return-void
.end method

.method private updateBeautyLayoutInternal(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->refreshBeautyTypeButton(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$4;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateBeautyLayout : not support beauty layout = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BeautyTabView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->openManualBeautyList()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->v()V

    goto :goto_0

    .line 8
    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->v()V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mHideManualBeautyListListener:Lcom/sec/android/app/camera/util/AnimationUtil$AnimationEndListener;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->closeManualBeautyList(Landroid/view/animation/Animation$AnimationListener;)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->r()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateBeautyTypeButtonBackground(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->c:Landroid/widget/Button;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->isInBlackArea(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08041f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080420

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;->clear()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->b:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/beauty/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/a;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v1, v1, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;->createManualBeautyPresenter(Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListContract$View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;->initialize()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/beauty/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/b;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;->setItemClickListener(Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListContract$ItemClickListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/beauty/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/d;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setProgressChangeListener(Lcom/sec/android/app/camera/widget/Slider$b;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/Slider;->setTrackingTouchListener(Lcom/sec/android/app/camera/widget/Slider$d;)V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->setInitialized()V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mOrientation:I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;->onOrientationChanged(I)V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->b:Landroid/widget/FrameLayout;

    int-to-float v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->applyTabletConstraints(I)V

    .line 7
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->g(I)V

    :cond_1
    return-void
.end method

.method public refreshSlider(IIIZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/sec/android/app/camera/widget/ExpandableSlider;->e(IIZI)V

    if-eq p1, p2, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/Slider;->setContentDescription(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->setPresenter(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabContract$Presenter;

    return-void
.end method

.method public setScreenHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mScreenHeight:I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;->setScreenHeight(I)V

    return-void
.end method

.method public showSlider()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p0, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public startAlphaAnimation(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const v1, 0x7f0b0035

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object v0, v0, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOnAnimation(I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->mViewBinding:Lo5/e2;

    iget-object p1, p1, Lo5/e2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/AnimationUtil;->getAlphaOffAnimation(I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateBeautyLayout(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->updateBeautyLayoutInternal(Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$2;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;Lcom/sec/android/app/camera/interfaces/CommandId;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public updateChildBackground(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;->updateBeautyTypeButtonBackground(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView$3;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
