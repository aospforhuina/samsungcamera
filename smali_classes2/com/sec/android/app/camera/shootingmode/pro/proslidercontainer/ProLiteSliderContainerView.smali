.class public Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;
.super Landroid/widget/RelativeLayout;
.source "ProLiteSliderContainerView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$IsoSliderChangeListener;,
        Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$SliderScrollEventListener;
    }
.end annotation


# static fields
.field private static final NO_ACTIVE_SLIDER:I = -0x1

.field private static final NUM_OF_TICKS_ISO_400:I = 0x3

.field private static final NUM_OF_TICKS_ISO_800:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ProLiteSliderContainerView"


# instance fields
.field private final EXPOSURE_VALUE_OFFSET:I

.field private final ISO_VALUE_OFFSET:I

.field private final KELVIN_LEVEL_NUM_OF_STEP:I

.field private final KELVIN_LEVEL_START_STEP:I

.field private final SHUTTER_SPEED_VALUE_OFFSET:I

.field private mActiveSlider:I

.field private mBlackAreaBottomPosition:I

.field private mFactor:I

.field private mIsoFirstEntry:Z

.field private mIsoSliderIndexArray:[I

.field private mLabelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:I

.field private mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

.field private mPreviousSelectedTextView:Landroid/widget/TextView;

.field private mPreviousStep:I

.field private mProSliderButtonClickedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;

.field private mProSliderValueChangedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;

.field private final mSliderTitleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mViewBinding:Lo5/q7;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0157

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->EXPOSURE_VALUE_OFFSET:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b015a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->SHUTTER_SPEED_VALUE_OFFSET:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0158

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->ISO_VALUE_OFFSET:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0159

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->KELVIN_LEVEL_NUM_OF_STEP:I

    rsub-int/lit8 p1, p1, 0x64

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->KELVIN_LEVEL_START_STEP:I

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f030008

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoSliderIndexArray:[I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    .line 11
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousStep:I

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoFirstEntry:Z

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0157

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->EXPOSURE_VALUE_OFFSET:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b015a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->SHUTTER_SPEED_VALUE_OFFSET:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0158

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->ISO_VALUE_OFFSET:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0b0159

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->KELVIN_LEVEL_NUM_OF_STEP:I

    rsub-int/lit8 p1, p1, 0x64

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 21
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->KELVIN_LEVEL_START_STEP:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    .line 23
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoSliderIndexArray:[I

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    .line 25
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousStep:I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    .line 27
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoFirstEntry:Z

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$initialize$1(I)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$initializeLabelGroup$6(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$initialize$2(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic d(ILandroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$resetLabelGroup$8(ILandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onAutoButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$initializeLabelGroup$7(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$initialize$0(I)V

    return-void
.end method

.method private getActiveText(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f03000c

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f030001

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p2

    :goto_0
    return-object p0
.end method

.method private getIsoSliderValue(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoSliderIndexArray:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getOffset(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p0, 0x64

    return p0

    .line 2
    :cond_1
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->KELVIN_LEVEL_START_STEP:I

    return p0

    .line 3
    :cond_2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->EXPOSURE_VALUE_OFFSET:I

    neg-int p0, p0

    return p0

    .line 5
    :cond_3
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->EXPOSURE_VALUE_OFFSET:I

    return p0

    .line 6
    :cond_4
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->SHUTTER_SPEED_VALUE_OFFSET:I

    return p0

    .line 7
    :cond_5
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->ISO_VALUE_OFFSET:I

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$updateButtonBackground$3(ZI)V

    return-void
.end method

.method private hideContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    const/16 v1, 0x8

    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveLabelsVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lu4/e;

    invoke-direct {v0}, Lu4/e;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/g;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/g;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 11
    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveLabelsVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 14
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->SWITCH:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    if-ne p1, v0, :cond_2

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSliderHide()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$hideContainer$5()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/q7;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/q7;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    .line 2
    sget-object v0, Lu3/l;->m0:Lu3/l;

    invoke-static {v0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0154

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sub-int/2addr v0, v1

    div-int/2addr v2, v0

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    invoke-virtual {v3, v2}, Lo5/q7;->f(I)V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v2, v2, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    .line 6
    div-int/2addr v2, v0

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mFactor:I

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->initializeLabelGroup()V

    .line 8
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    :cond_1
    return-void
.end method

.method private initializeLabelGroup()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/c;->a:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/c;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    sget-object v0, Lu3/l;->m0:Lu3/l;

    invoke-static {v0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 6
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070546

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060053

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x1

    .line 11
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 12
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance v4, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/b;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/b;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    sget-object v4, Lu3/b;->b:Lu3/b;

    invoke-static {v4}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 15
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setRotation(F)V

    .line 16
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v4, v4, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Lcom/sec/android/app/camera/interfaces/AspectRatio;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->lambda$updateSliderBackground$4(Lcom/sec/android/app/camera/interfaces/AspectRatio;)V

    return-void
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mBlackAreaBottomPosition:I

    return p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mFactor:I

    return p0
.end method

.method private labelGroupClicked(Landroid/widget/TextView;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060053

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0602b9

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;->setAutoMode(Z)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    if-nez p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-eq p1, p2, :cond_2

    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousStep:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-ne p2, p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoSliderIndexArray:[I

    aget v0, v0, p2

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onSliderValueChanged(II)V

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mFactor:I

    mul-int/2addr p2, p0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private synthetic lambda$hideContainer$5()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    const/16 v0, 0x8

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveLabelsVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onSliderHide()V

    return-void
.end method

.method private synthetic lambda$initialize$0(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onSliderValueChanged(II)V

    return-void
.end method

.method private synthetic lambda$initialize$1(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onSliderValueChanged(II)V

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->updateLastValues(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onScrollStart(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$initializeLabelGroup$6(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initializeLabelGroup$7(ILandroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->labelGroupClicked(Landroid/widget/TextView;I)V

    return-void
.end method

.method private static synthetic lambda$resetLabelGroup$8(ILandroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method private synthetic lambda$updateButtonBackground$3(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;II)Z

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->isInTabletBlackArea(Landroid/view/View;I)Z

    move-result p1

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p2, p2, Lo5/q7;->g:Landroid/widget/Button;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f080747

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f080748

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 6
    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$updateSliderBackground$4(Lcom/sec/android/app/camera/interfaces/AspectRatio;)V
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08086a

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080869

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 5
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    int-to-float v2, v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x30

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    goto :goto_2

    :cond_2
    const/16 v2, 0x50

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 8
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;->setBackgroundForTablet(Z)V

    :cond_3
    return-void
.end method

.method private layoutLabelGroup()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07051c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07051a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 7
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    sub-int v4, v1, v4

    .line 8
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 9
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private layoutVerticalLabelGroup()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07051b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 6
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 7
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0xf

    .line 8
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sub-int v4, v1, v4

    .line 9
    iput v4, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 10
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/2addr v1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoSliderIndexArray:[I

    return-object p0
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousStep:I

    return p0
.end method

.method private onAutoButtonClicked(Landroid/view/View;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->updateLastValues(I)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onAutoButtonClicked(IZ)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mProSliderButtonClickedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;->onSliderAutoButtonClicked(IZ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoFirstEntry:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->updateLastValues(I)V

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onAutoButtonClicked(IZ)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mProSliderButtonClickedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;->onSliderAutoButtonClicked(IZ)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mIsoFirstEntry:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private onSliderValueChanged(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mProSliderValueChangedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;->onSliderValueChanged(II)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->getActiveText(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveTextViewText(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mProSliderValueChangedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;->onSliderValueChanged(II)V

    .line 4
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->getIsoSliderValue(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateLabelGroup(I)V

    :goto_0
    return-void
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousStep:I

    return-void
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->onSliderValueChanged(II)V

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Landroid/widget/SeekBar;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->slideToNearestTick(Landroid/widget/SeekBar;I)V

    return-void
.end method

.method private resetLabelGroup()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    new-instance v3, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/j;

    invoke-direct {v3, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/j;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    return-void
.end method

.method private rotateAutoButton(I)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const v2, 0x7f0704cd

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0704cf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2
    :goto_0
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0704cc

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 3
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private setActiveLabelsVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setActiveTextViewText(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private setupAutoMode(ILcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->a:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object v4, Lu3/b;->b:Lu3/b;

    invoke-static {v4}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 10
    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 11
    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->showAutoModeLayout()V

    .line 12
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    return-void
.end method

.method private setupManualMode(ILcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V
    .locals 5

    const-string v0, "ProLiteSliderContainerView"

    const-string/jumbo v1, "setupManualMode"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object v2, Lu3/b;->b:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 11
    invoke-virtual {p2, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 12
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->getOffset(I)I

    move-result v0

    sub-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->getOffset(I)I

    move-result v0

    sub-int/2addr p3, v0

    invoke-virtual {p2, p3}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    .line 15
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    return-void
.end method

.method private showContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    const v1, 0x7f0b007a

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 3
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07050c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    neg-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lu4/e;

    invoke-direct {v0}, Lu4/e;-><init>()V

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 11
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 13
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lu4/f;

    invoke-direct {v0}, Lu4/f;-><init>()V

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void
.end method

.method private slideToNearestTick(Landroid/widget/SeekBar;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    int-to-float p0, p0

    int-to-float v0, p2

    div-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    mul-int/2addr p0, p2

    .line 2
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private updateActiveMarkPosition()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->k:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v2, v2, Lo5/q7;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070535

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 5
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v4, v3, v4

    div-int/lit8 v4, v4, 0x2

    const/16 v5, 0xc

    .line 6
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v5, 0xe

    .line 7
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v6, 0xf

    .line 8
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v7, 0x0

    .line 9
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/4 v8, -0x2

    .line 10
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v8, 0x10

    .line 11
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 12
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 14
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 15
    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070532

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07050e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    neg-float v5, v5

    .line 18
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    int-to-float v6, v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v6

    const/16 v8, 0x14

    const/16 v9, 0x15

    if-eqz v6, :cond_0

    .line 19
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 20
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 21
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 22
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 23
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 24
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 26
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 27
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 28
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 30
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 32
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 33
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 34
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 35
    invoke-virtual {v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 36
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 38
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 39
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 40
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 41
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 42
    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v3, v3, Lo5/q7;->b:Landroid/widget/ImageView;

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 44
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v3, v3, Lo5/q7;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 46
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateButtonPosition()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0x15

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v2, 0xc

    .line 4
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 9
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x14

    if-eqz v3, :cond_0

    .line 10
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 15
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 18
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateLabelGroup(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060053

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoRegular()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0602b9

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPreviousSelectedTextView:Landroid/widget/TextView;

    return-void
.end method

.method private updateLablePosition()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070537

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v3

    const v4, 0x7f0704f4

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0x14

    const/16 v7, 0x15

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 6
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sub-int v3, v1, v2

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 9
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sub-int v3, v2, v1

    int-to-float v3, v3

    div-float/2addr v3, v5

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    :goto_0
    const/4 v4, 0x3

    .line 11
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v4, 0xf

    .line 12
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 13
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v4, v4, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 14
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 15
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v1, v1, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateProScrollViewPosition()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070537

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070534

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    .line 5
    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 6
    instance-of v7, v6, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    if-eqz v7, :cond_1

    .line 7
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iput v4, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 9
    iput v4, v7, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v8, 0x14

    const/16 v9, 0x15

    const/high16 v10, 0x40000000    # 2.0f

    if-eqz v3, :cond_0

    sub-int v11, v0, v1

    int-to-float v11, v11

    div-float/2addr v11, v10

    .line 10
    invoke-virtual {v6, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 12
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_0
    sub-int v11, v1, v0

    int-to-float v11, v11

    div-float/2addr v11, v10

    .line 13
    invoke-virtual {v6, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 14
    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 15
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    const/16 v8, 0xf

    .line 16
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    move-object v8, v6

    check-cast v8, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    iget v9, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->updateScrollOrientation(I)V

    .line 18
    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 19
    iput v1, v7, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 20
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateTickSliderPosition()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070537

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070535

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07051b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 5
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    int-to-float v4, v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    const/16 v6, 0x14

    const/16 v7, 0x15

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 7
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sub-int v4, v1, v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 9
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sub-int v4, v2, v1

    :goto_0
    int-to-float v4, v4

    div-float/2addr v4, v5

    const/4 v5, 0x3

    .line 10
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v5, 0xf

    .line 11
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v5, 0x0

    .line 12
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->semSetMarginsRelative(IIII)V

    .line 13
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v6, v6, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {v6, v3, v5, v3, v5}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 14
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v3, v3, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setTranslationX(F)V

    .line 15
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 16
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public changeWhiteBalanceIconImage(I)V
    .locals 2

    const/16 v0, 0x1c

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/16 v0, 0x28

    if-eq p1, v0, :cond_3

    const/16 v0, 0x37

    if-eq p1, v0, :cond_2

    const/16 v0, 0x41

    if-eq p1, v0, :cond_1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->k:Landroid/widget/ImageView;

    const v0, 0x7f08052b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->k:Landroid/widget/ImageView;

    const v0, 0x7f08052c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->k:Landroid/widget/ImageView;

    const v0, 0x7f08052d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->k:Landroid/widget/ImageView;

    const v0, 0x7f08052e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->k:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->clear()V

    return-void
.end method

.method public hide(ILcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->hideContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object p2, Lu3/b;->b:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x4

    :cond_1
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->hideContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->hideContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    :goto_0
    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    return-void
.end method

.method public initApertureValue(ZI)V
    .locals 0

    return-void
.end method

.method public initButtonBackground(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mBlackAreaBottomPosition:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLaidOut()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mBlackAreaBottomPosition:I

    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateButtonBackground(IZ)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public initSliderBackground(Lcom/sec/android/app/camera/interfaces/AspectRatio;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Lcom/sec/android/app/camera/interfaces/AspectRatio;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$IsoSliderChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$IsoSliderChangeListener;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/k;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/e;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/e;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/d;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setProScrollerChangeListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->semSetHoverScrollMode(Z)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->semSetHoverScrollMode(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/f;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/f;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;->setManualFocusSliderTouchListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider$ManualFocusSliderTouchListener;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$SliderScrollEventListener;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView$SliderScrollEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setScrollEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->g:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/a;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->updateLastValues(I)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->updateLastValues(I)V

    return-void
.end method

.method public isSliderVisible(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 2
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 3
    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result p0

    if-nez p0, :cond_5

    move v0, v1

    :cond_5
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->layoutVerticalLabelGroup()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->layoutLabelGroup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateActiveMarkPosition()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateButtonPosition()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateProScrollViewPosition()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateTickSliderPosition()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->updateLablePosition()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->rotateAutoButton(I)V

    :goto_0
    return-void
.end method

.method public onProControlPanelItemClicked(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onProControlPanelItemClicked(I)V

    return-void
.end method

.method public refreshIsoSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onRefreshIsoSliderRange()V

    return-void
.end method

.method public refreshShutterSpeedSliderRange()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;->onRefreshShutterSpeedSliderRange()V

    return-void
.end method

.method public setAutoButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p0, p0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setIsoSliderRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setPresenter(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$Presenter;

    return-void
.end method

.method public setProSliderButtonClickedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mProSliderButtonClickedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderButtonClickedListener;

    return-void
.end method

.method public setProSliderValueChangedListener(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mProSliderValueChangedListener:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;

    return-void
.end method

.method public setShutterSpeedSliderRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setSliderText(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveTextViewText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setVariableLensApertureValue(I)V
    .locals 0

    return-void
.end method

.method public showAutoMode(I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->hide(ILcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    :cond_0
    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->showContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object v3, Lu3/b;->b:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setupAutoMode(ILcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    goto :goto_2

    .line 8
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->showContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->resetLabelGroup()V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object v5, Lu3/b;->b:Lu3/b;

    invoke-static {v5}, Lu3/d;->e(Lu3/b;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveLabelsVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;->setAutoMode(Z)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 18
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->g:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public showManualMode(II)V
    .locals 7

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA_MOVE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    .line 2
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->NONE:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->hide(ILcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;->ALPHA:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->showContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setupManualMode(ILcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->changeWhiteBalanceIconImage(I)V

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->showContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveLabelsVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 14
    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->getOffset(I)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->getOffset(I)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->showManualModeLayout(I)V

    .line 17
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    goto/16 :goto_3

    .line 18
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v5, v5, Lo5/q7;->k:Landroid/widget/ImageView;

    sget-object v6, Lu3/b;->b:Lu3/b;

    invoke-static {v6}, Lu3/d;->e(Lu3/b;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->showContainer(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderContainerContract$SliderAnimationType;)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object v0, v0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 21
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->setActiveLabelsVisibility(I)V

    .line 22
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->ISO_VALUE_OFFSET:I

    sub-int/2addr p2, v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->getIsoSliderValue(I)I

    move-result p2

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mLabelList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->labelGroupClicked(Landroid/widget/TextView;I)V

    .line 24
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p2, p2, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    invoke-virtual {p2, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 25
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p2, p2, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 26
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p2, p2, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 27
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p2, p2, Lo5/q7;->g:Landroid/widget/Button;

    invoke-virtual {p2, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 28
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p2, p2, Lo5/q7;->g:Landroid/widget/Button;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mSliderTitleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 29
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mActiveSlider:I

    :goto_3
    return-void
.end method

.method public updateButtonBackground(IZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mBlackAreaBottomPosition:I

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;ZI)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p1, p1, Lo5/q7;->g:Landroid/widget/Button;

    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/sec/android/app/camera/util/Util;->getViewAbsolutePositionY(Landroid/view/View;II)I

    move-result p1

    .line 5
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mBlackAreaBottomPosition:I

    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->mViewBinding:Lo5/q7;

    iget-object p2, p2, Lo5/q7;->g:Landroid/widget/Button;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f080747

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f080748

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 9
    :goto_1
    invoke-virtual {p2, p0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateSliderBackground(Lcom/sec/android/app/camera/interfaces/AspectRatio;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/h;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/h;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Lcom/sec/android/app/camera/interfaces/AspectRatio;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
