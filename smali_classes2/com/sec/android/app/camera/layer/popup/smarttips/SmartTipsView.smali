.class public Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;
.super Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;
.source "SmartTipsView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView<",
        "Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$View;"
    }
.end annotation


# static fields
.field private static final MODE_SUGGESTION_GUIDE_TIMEOUT:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "SmartTipsView"


# instance fields
.field private mDescriptionString:Ljava/lang/String;

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mIsNeedCloseButton:Z

.field private mIsNeedRadioButton:Z

.field private mIsNeedTextButton:Z

.field private mLinkString:Ljava/lang/String;

.field private mRadioButton1String:Ljava/lang/String;

.field private mRadioButton2String:Ljava/lang/String;

.field private mTitleString:Ljava/lang/String;

.field private mViewBinding:Lo5/b4;

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;-><init>(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedRadioButton:Z

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->initView()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->lambda$startModePopupClickAnimation$2()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->lambda$startModePopupClickAnimation$3()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->startHidePopupTimer()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->lambda$initView$1(Landroid/view/View;)V

    return-void
.end method

.method private getCustomBottomMargin()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V2_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V3_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-nez v1, :cond_1

    .line 3
    iget p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitBottomMargin:F

    :goto_0
    neg-float p0, p0

    return p0

    .line 4
    :cond_1
    sget-object v1, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView$1;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayerManager$PopupId:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 5
    sget-object v0, Lu3/b;->o:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041e

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07041d

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 6
    iget p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    const/4 v1, 0x0

    cmpl-float p0, p0, v1

    if-nez p0, :cond_3

    return v0

    :cond_3
    neg-float p0, v0

    return p0

    .line 7
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070816

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0

    .line 8
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0707ff

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/b4;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/b4;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    .line 2
    iget-object v0, v0, Lo5/b4;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/smarttips/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/a;-><init>(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v0, v0, Lo5/b4;->a:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/smarttips/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/b;-><init>(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->onPopupClick()V

    return-void
.end method

.method private synthetic lambda$initView$1(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->onCloseButtonClick()V

    return-void
.end method

.method private synthetic lambda$startModePopupClickAnimation$2()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;->onLinkClick()V

    return-void
.end method

.method private synthetic lambda$startModePopupClickAnimation$3()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x0

    const v5, 0x3fcccccd    # 1.6f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/smarttips/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/c;-><init>(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

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

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/16 v1, 0x14

    .line 3
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mWidth:F

    const/16 v1, 0x9

    .line 4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedRadioButton:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x11

    .line 5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mRadioButton1String:Ljava/lang/String;

    const/16 v1, 0x12

    .line 6
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    iget-object v1, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mRadioButton2String:Ljava/lang/String;

    :cond_0
    const/16 v1, 0xc

    .line 7
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitEndMargin:F

    const/16 v1, 0xf

    .line 8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    const/16 v1, 0xb

    .line 9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitBottomMargin:F

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mDescriptionString:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x13

    .line 12
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mTitleString:Ljava/lang/String;

    const/4 v0, 0x6

    .line 13
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    const/4 v0, 0x7

    .line 14
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedCloseButton:Z

    const/16 v0, 0xa

    .line 15
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedTextButton:Z

    const/4 v0, 0x5

    .line 16
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mImage:Landroid/graphics/drawable/Drawable;

    const/16 v0, 0x10

    .line 17
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    const/16 v0, 0xd

    .line 18
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitHorizontalBias:F

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->getAttributeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mStyledAttributes:Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onCloseButtonClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;->onCloseButtonClick()V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->startHideAnimation()V

    return-void
.end method

.method private onPopupClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v0, v0, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->BACK_NIGHT_MODE_SUGGESTION_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FRONT_NIGHT_MODE_SUGGESTION_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;->onLinkClick()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->startModePopupClickAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method private setContentDescriptionForTts()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v0, v0, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->semRequestAccessibilityFocus()Z

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedTextButton:Z

    const v1, 0x7f1201f8

    const-string v2, ", "

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v0, v0, Lo5/b4;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView$1;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayerManager$PopupId:[I

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v0, v0, Lo5/b4;->b:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120576

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120577

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private startHidePopupTimer()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->clearHideAnimation()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView$1;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayerManager$PopupId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupHideAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1b58

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private startModePopupClickAnimation()V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f7851ec    # 0.97f

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2, v2, v3, v4}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/layer/popup/smarttips/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/d;-><init>(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateConstraintChain()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView$1;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayerManager$PopupId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object p0, p0, Lo5/b4;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateLayout()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedCloseButton:Z

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mTitleString:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->m:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 7
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :goto_1
    iget-boolean v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedTextButton:Z

    if-eqz v1, :cond_3

    .line 10
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 11
    :cond_3
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    :goto_2
    iget-boolean v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mIsNeedRadioButton:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 13
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->f:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 14
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->c:Landroid/widget/RadioButton;

    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mRadioButton1String:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->d:Landroid/widget/RadioButton;

    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mRadioButton2String:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :cond_4
    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070826

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    .line 18
    :cond_5
    sget-object v3, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView$1;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayerManager$PopupId:[I

    iget-object v4, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    const/16 v5, -0x5a

    const/4 v6, 0x0

    const v7, 0x7f070876

    const v8, 0x7f070877

    const v9, 0x7f070823

    const v10, 0x7f070821

    const v11, 0x7f070822

    const/4 v12, -0x1

    const v14, 0x7f07081f

    const v15, 0x7f070416

    const/4 v13, 0x1

    packed-switch v3, :pswitch_data_0

    .line 19
    invoke-virtual {v0, v13}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->setTranslation(Z)V

    goto/16 :goto_9

    .line 20
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 22
    iget-object v7, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v7, v7, Lo5/b4;->m:Landroid/widget/TextView;

    invoke-virtual {v7, v3, v1, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    iget-object v7, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v7, v7, Lo5/b4;->m:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0701a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 24
    iget-object v7, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v7, v7, Lo5/b4;->m:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setJustificationMode(I)V

    .line 25
    iget-object v7, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v7, v7, Lo5/b4;->m:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 26
    iget-object v6, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v6, v6, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 27
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07019f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 28
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setJustificationMode(I)V

    .line 29
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 30
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 31
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setJustificationMode(I)V

    .line 32
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/util/Util;->setFunModeConsentHyperlink(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 34
    iget v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-nez v1, :cond_6

    .line 35
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->setTranslation(Z)V

    goto/16 :goto_9

    :cond_6
    if-ne v1, v5, :cond_7

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 37
    iget v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto/16 :goto_9

    .line 38
    :pswitch_1
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->DECO_PIC_MODE_NETWORK_POPUP:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    if-ne v1, v3, :cond_8

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0700da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0700d6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_4

    .line 41
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070196

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 42
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070192

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 43
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 45
    iget-object v8, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v8, v8, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v7, v6, v7, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 46
    iget-object v8, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v8, v8, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setJustificationMode(I)V

    .line 48
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v7, v6, v7, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 49
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 50
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setJustificationMode(I)V

    .line 51
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 52
    iget v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-nez v1, :cond_9

    .line 53
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->setTranslation(Z)V

    goto/16 :goto_9

    :cond_9
    if-ne v1, v5, :cond_a

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 55
    iget v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto/16 :goto_9

    .line 56
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 58
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 59
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070820

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 60
    iget-object v6, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v6, v6, Lo5/b4;->b:Landroid/widget/TextView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 61
    iget-object v6, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v6, v6, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v6, v2, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 62
    iget-object v6, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v6, v6, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v1, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 63
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    iget v2, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    iget v3, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    float-to-int v3, v3

    iget v4, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitBottomMargin:F

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;->onUpdateLayout(III)V

    goto/16 :goto_9

    .line 65
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 67
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 68
    iget-object v5, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v5, v5, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    iget v2, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    iget v3, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    float-to-int v3, v3

    iget v4, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitBottomMargin:F

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;->onUpdateLayout(III)V

    goto/16 :goto_9

    .line 71
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0707fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0707fc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 73
    iget-object v4, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v4, v4, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070814

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 74
    iget-object v4, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v4, v4, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 75
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 76
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070815

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 78
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mWidth:F

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->getCustomBottomMargin()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto/16 :goto_9

    .line 81
    :pswitch_5
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 82
    iput v12, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0705f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07080f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 86
    iget-object v4, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v4, v4, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 89
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    iget v2, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    iget v3, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    float-to-int v3, v3

    iget v4, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitBottomMargin:F

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;->onUpdateLayout(III)V

    goto/16 :goto_9

    .line 90
    :cond_b
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060463

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->a:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 93
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 94
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07080d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 97
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->a:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->getCustomBottomMargin()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto/16 :goto_9

    .line 99
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070832

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 100
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07082f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 101
    iget-object v5, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v5, v5, Lo5/b4;->b:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mLinkString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v5, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v5, v5, Lo5/b4;->b:Landroid/widget/TextView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 103
    iget-object v5, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v5, v5, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07082d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 104
    iget-object v5, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v5, v5, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v6

    goto :goto_6

    :cond_c
    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoMedium()Landroid/graphics/Typeface;

    move-result-object v6

    :goto_6
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 105
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isLocaleRTL()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 106
    iget-object v5, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v5, v5, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v3, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_7

    .line 107
    :cond_d
    iget-object v5, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v5, v5, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 108
    :goto_7
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070830

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 109
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070831

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 110
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 111
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/ImageView;->measure(II)V

    .line 112
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 113
    iput v12, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 114
    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 116
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    int-to-float v2, v2

    iput v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mWidth:F

    goto :goto_8

    .line 117
    :cond_e
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v3, v3, Lo5/b4;->g:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07082b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mWidth:F

    .line 118
    :goto_8
    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->getCustomBottomMargin()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_9

    .line 120
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070835

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070834

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 122
    iget-object v4, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v4, v4, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07082d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 124
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2}, Landroid/widget/TextView;->measure(II)V

    .line 125
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070839

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 127
    iget-object v2, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v2, v2, Lo5/b4;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    .line 128
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mWidth:F

    .line 129
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    iget v2, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    iget v3, v0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitTopMargin:F

    float-to-int v3, v3

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->getCustomBottomMargin()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;->onUpdateLayout(III)V

    .line 130
    :cond_f
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->updateConstraintChain()V

    .line 131
    iget-object v1, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, v1, Lo5/b4;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mWidth:F

    float-to-int v0, v0

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyBias()V
    .locals 6

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView$1;->$SwitchMap$com$sec$android$app$camera$interfaces$PopupLayerManager$PopupId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, -0x5a

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 2
    :pswitch_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    :cond_0
    iput v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    goto :goto_2

    .line 3
    :pswitch_1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    iput v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    .line 6
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    const/4 v4, 0x1

    const/16 v5, 0x5a

    if-eq v1, v2, :cond_2

    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_2

    const/16 v2, 0xb4

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0135

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 8
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitHorizontalBias:F

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0136

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 10
    iget v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    if-ne v1, v5, :cond_3

    goto :goto_0

    :cond_3
    sub-float v0, v3, v0

    :goto_0
    iput v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitHorizontalBias:F

    goto :goto_2

    .line 11
    :pswitch_2
    iget v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mOrientation:I

    if-ne v0, v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v3

    :goto_1
    iput v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPortraitVerticalBias:F

    .line 12
    :cond_5
    :goto_2
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->applyBias()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->clearHideAnimation()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    invoke-virtual {v0, v1}, Lo5/b4;->f(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->loadStyleFromResource()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPopupId:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V2_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    if-eq p0, p1, :cond_1

    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->SELFIE_TONE_V3_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setMargin(FFFF)V
    .locals 0

    const/4 p3, 0x0

    cmpl-float p4, p1, p3

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    cmpl-float p1, p2, p3

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelectedRadioButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object v0, v0, Lo5/b4;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->mViewBinding:Lo5/b4;

    iget-object p0, p0, Lo5/b4;->d:Landroid/widget/RadioButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method public showSmartTipsPopup()V
    .locals 2

    const-string v0, "SmartTipsView"

    const-string/jumbo v1, "showSmartTipsPopup"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->updateLayout()V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/layer/popup/smarttips/e;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/e;-><init>(Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->startShowAnimation(Ljava/lang/Runnable;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->setContentDescriptionForTts()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mPresenter:Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsContract$Presenter;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupView;->mIsRefreshByOrientation:Z

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/layer/popup/abstraction/AbstractPopupContract$Presenter;->onPopupShown(Z)V

    return-void
.end method

.method public updateSmartTipsLayout()V
    .locals 2

    const-string v0, "SmartTipsView"

    const-string/jumbo v1, "updateSmartTipsLayout"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/popup/smarttips/SmartTipsView;->updateLayout()V

    return-void
.end method
