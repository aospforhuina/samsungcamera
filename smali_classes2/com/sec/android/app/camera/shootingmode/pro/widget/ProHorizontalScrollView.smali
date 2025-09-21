.class public Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "ProHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollViewTouchListener;,
        Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;,
        Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;,
        Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;,
        Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;
    }
.end annotation


# static fields
.field private static final INVALID_STEP:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ProHorizontalScrollView"

.field private static final TEXT_HIDE_ANIMATION_DURATION:I = 0x190

.field private static final TEXT_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final TIME_TO_WAIT:I = 0x64


# instance fields
.field private final FADING_EDGE_LENGTH:F

.field private final MAX_FLING_VELOCITY:I

.field private final SIDE_MARGIN:I

.field private mAllLabels:[Ljava/lang/CharSequence;

.field private mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mBarRangeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClosestImageViewIndex:I

.field private mCurrentHapticIndex:I

.field private mCurrentX:I

.field private mDisplayedStepCount:I

.field private mHideDisplayedStepInterval:I

.field private mHideOffset:F

.field private mHideStepInterval:I

.field private mImageViewList:[Landroid/widget/ImageView;

.field private mIsAutoMode:Z

.field private mIsNeedToSkipAutoScrollChanged:Z

.field private mIsScrolling:Z

.field private mIsSliderPressed:Z

.field private mItemWidth:I

.field private mKeyboardEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;

.field private mLabels:[Ljava/lang/CharSequence;

.field private mMinDisplayedStepDistance:I

.field private mMinDistanceFromCenter:F

.field private mPreviousStep:I

.field private mProScrollerChangeListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

.field private mProScrollerReachListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;

.field private mRangeBasedDisplayedStepCount:Z

.field private mScrollEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

.field private final mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

.field private final mScrollToNearestTickRunnable:Ljava/lang/Runnable;

.field private mScrollTop:I

.field private final mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

.field private mSliderRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextDisplayMaxCount:I

.field private mTextSkipInterval:I

.field private mTextViewIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mViewBinding:Lo5/o7;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu4/h;

    invoke-direct {v0}, Lu4/h;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->TEXT_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mBarRangeArray:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->MAX_FLING_VELOCITY:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    const/high16 v0, -0x80000000

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentHapticIndex:I

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsSliderPressed:Z

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsNeedToSkipAutoScrollChanged:Z

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    .line 12
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    .line 13
    new-instance v0, Lcom/sec/android/app/camera/widget/l0;

    invoke-direct {v0}, Lcom/sec/android/app/camera/widget/l0;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    .line 14
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mBarRangeArray:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0179

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->MAX_FLING_VELOCITY:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    const/4 v0, -0x1

    .line 22
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    const/high16 v0, -0x80000000

    .line 23
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentHapticIndex:I

    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 25
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsSliderPressed:Z

    .line 26
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsNeedToSkipAutoScrollChanged:Z

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    .line 28
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    .line 29
    new-instance v0, Lcom/sec/android/app/camera/widget/l0;

    invoke-direct {v0}, Lcom/sec/android/app/camera/widget/l0;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    .line 30
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$1;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    .line 31
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$2;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->lambda$showManualModeLayout$2(I)V

    return-void
.end method

.method private addItem()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v1, v1

    :goto_0
    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v3, v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v0, v3

    move v3, v1

    .line 5
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 6
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    int-to-float v5, v3

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v3, v0

    .line 7
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v5, v4

    sub-int/2addr v5, v2

    if-ge v0, v5, :cond_2

    .line 8
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextSkipInterval:I

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 10
    :cond_2
    array-length v4, v4

    sub-int/2addr v4, v2

    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextSkipInterval:I

    sub-int/2addr v0, v5

    sub-int/2addr v4, v0

    if-ne v4, v2, :cond_3

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move v0, v1

    move v3, v0

    .line 13
    :goto_3
    iget-boolean v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v4, v4

    :goto_4
    if-ge v0, v4, :cond_8

    .line 14
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 15
    new-instance v4, Lcom/sec/android/app/camera/widget/StrokedTextView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sec/android/app/camera/widget/StrokedTextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v4, v2}, Lcom/sec/android/app/camera/widget/StrokedTextView;->setStroke(Z)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/StrokedTextView;->setStrokeWidth(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602b2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/widget/StrokedTextView;->setStrokeColor(I)V

    .line 19
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    iget-boolean v6, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v6, :cond_6

    move v6, v3

    goto :goto_5

    :cond_6
    move v6, v0

    :goto_5
    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    .line 20
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070500

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v4, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    const/4 v5, 0x2

    .line 22
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 23
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v5, v5, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    .line 25
    :cond_7
    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080519

    .line 26
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v5, v5, Lo5/o7;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 28
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    aput-object v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_8
    return-void
.end method

.method public static synthetic b(FLandroid/widget/TextView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->lambda$setRotation$0(FLandroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->lambda$getAlphaAnimator$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->lambda$showAutoModeLayout$1()V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->lambda$onLayout$3(II)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mClosestImageViewIndex:I

    return p0
.end method

.method private getAlphaAnimator(Landroid/view/View;F)Landroid/animation/Animator;
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    int-to-long v0, p2

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/pro/widget/b;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/b;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentX:I

    return p0
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)[Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 1
    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->ProHorizontalScrollView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x7

    .line 2
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextSkipInterval:I

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideStepInterval:I

    const/4 v2, 0x6

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mAllLabels:[Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideDisplayedStepInterval:I

    const/4 v2, 0x4

    .line 8
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    const/4 v2, 0x3

    .line 9
    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDisplayedStepDistance:I

    const/4 p2, 0x5

    const/4 v2, -0x1

    .line 10
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextDisplayMaxCount:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1, p0, v1}, Lo5/o7;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/o7;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->addItem()V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private initScrollViewProperties()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDisplayedStepDistance:I

    if-lez v0, :cond_1

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    .line 5
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideStepInterval:I

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideOffset:F

    return-void
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    return p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsSliderPressed:Z

    return p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    return p0
.end method

.method private static synthetic lambda$getAlphaAnimator$4(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$onLayout$3(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setTextLabelAlphaWithoutAnimation(I)V

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setTickAlpha(I)V

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$setRotation$0(FLandroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setRotation(F)V

    return-void
.end method

.method private synthetic lambda$showAutoModeLayout$1()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->translateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$showManualModeLayout$2(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->translateTo(IZ)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollTop:I

    return p0
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)Lo5/o7;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentX:I

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    return-void
.end method

.method static bridge synthetic s(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setTextLabelAlpha(I)V

    return-void
.end method

.method private setTextLabelAlpha(I)V
    .locals 12

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    int-to-float v8, p1

    sub-float/2addr v7, v8

    .line 4
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 5
    iget v8, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideOffset:F

    cmpg-float v9, v7, v8

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-gtz v9, :cond_0

    .line 6
    sget-object v9, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->TEXT_HIDE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    div-float/2addr v7, v8

    sub-float v7, v11, v7

    invoke-interface {v9, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    sub-float/2addr v11, v7

    .line 7
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setAlpha(F)V

    .line 8
    invoke-direct {p0, v5, v11}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->getAlphaAnimator(Landroid/view/View;F)Landroid/animation/Animator;

    move-result-object v7

    .line 9
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v7, v6, v1

    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 11
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    cmpl-float v8, v6, v7

    if-lez v8, :cond_1

    .line 12
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    div-float/2addr v6, v7

    .line 13
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 14
    :goto_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getRotation()F

    move-result v6

    cmpl-float v6, v6, v10

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    :goto_2
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 15
    invoke-virtual {v5}, Landroid/widget/TextView;->getLeft()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 16
    invoke-virtual {v5}, Landroid/widget/TextView;->getRight()I

    move-result v4

    goto/16 :goto_0

    .line 17
    :cond_3
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextDisplayMaxCount:I

    if-lez v0, :cond_4

    mul-int/2addr v2, v0

    sub-int/2addr v0, v6

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object p0, p0, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p1, v2

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_4
    return-void
.end method

.method private setTextLabelAlphaWithoutAnimation(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v3, p1

    sub-float/2addr v2, v3

    .line 3
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideOffset:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setTickAlpha(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 2
    aget-object v1, v1, v0

    .line 3
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v3, p1

    sub-float/2addr v2, v3

    .line 4
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 5
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 6
    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mClosestImageViewIndex:I

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->SIDE_MARGIN:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 9
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->FADING_EDGE_LENGTH:F

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    :cond_1
    div-float/2addr v2, v3

    .line 11
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static bridge synthetic t(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->updateLayoutChildViews()V

    return-void
.end method

.method private translateTo(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    mul-int/2addr v0, p1

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method static bridge synthetic u(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->updateScrollPosition()V

    return-void
.end method

.method private updateHorizontalView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v0, v0, Lo5/o7;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v0, v0, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->addItem()V

    return-void
.end method

.method private updateLayoutChildViews()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v1, v0, :cond_8

    .line 2
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewIndexList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v6, v0, -0x1

    if-ne v1, v6, :cond_1

    .line 6
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 7
    :cond_1
    sget-object v6, Lu3/b;->b:Lu3/b;

    invoke-static {v6}, Lu3/d;->e(Lu3/b;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v6}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    if-eqz v6, :cond_2

    .line 9
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 10
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 11
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 13
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 14
    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTranslationY(F)V

    :cond_3
    :goto_2
    int-to-float v6, v3

    .line 15
    iget v7, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideOffset:F

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    const/4 v6, 0x0

    .line 16
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_3

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    .line 17
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 18
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    .line 19
    :cond_5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    .line 20
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 21
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v3, v6

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v6, v0, -0x1

    if-ne v1, v6, :cond_6

    .line 22
    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 23
    :cond_6
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mHideDisplayedStepInterval:I

    if-eqz v5, :cond_7

    rem-int v5, v1, v5

    if-eqz v5, :cond_7

    if-eq v1, v6, :cond_7

    const/4 v5, 0x4

    .line 25
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    :cond_7
    iget v4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private updateScrollPosition()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    if-gez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 3
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    .line 4
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    aget-object v0, v1, v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method


# virtual methods
.method public addSliderViewRange()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070442

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mBarRangeArray:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Range;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mImageViewList:[Landroid/widget/ImageView;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 6
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mBarRangeArray:Ljava/util/ArrayList;

    new-instance v4, Landroid/util/Range;

    mul-int v5, v2, v1

    sub-int v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fling(I)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->MAX_FLING_VELOCITY:I

    if-ge v0, v1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    neg-int v1, v1

    .line 3
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/HorizontalScrollView;->fling(I)V

    :goto_1
    return-void
.end method

.method public getHapticList(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mBarRangeArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentHapticIndex:I

    if-eq v1, p1, :cond_0

    .line 5
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentHapticIndex:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/high16 p1, -0x80000000

    .line 7
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentHapticIndex:I

    return-object v0
.end method

.method public isAutoMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mKeyboardEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mKeyboardEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;->onKeyboardLeftKey()V

    return v1

    :cond_0
    const/16 v0, 0x16

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mKeyboardEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;->onKeyboardRightKey()V

    return v1

    .line 4
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/HorizontalScrollView;->onLayout(ZIIII)V

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    invoke-virtual {p0, p3, p2, p4, p2}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->initScrollViewProperties()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->updateLayoutChildViews()V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->addSliderViewRange()V

    .line 6
    :cond_0
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsNeedToSkipAutoScrollChanged:Z

    if-eqz p1, :cond_1

    .line 7
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getVisibility()I

    move-result p1

    const/4 p2, 0x4

    .line 9
    invoke-virtual {p0, p2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 10
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    mul-int/2addr p2, p3

    .line 11
    new-instance p3, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;

    invoke-direct {p3, p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/e;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;II)V

    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 2
    iget-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsNeedToSkipAutoScrollChanged:Z

    if-eqz p3, :cond_0

    sget-object p3, Lu3/b;->b:Lu3/b;

    invoke-static {p3}, Lu3/d;->e(Lu3/b;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 3
    :cond_0
    iget-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    const-wide/16 v0, 0x64

    if-nez p3, :cond_1

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mCurrentX:I

    .line 5
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollStoppedCheckerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3, v0, v1}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    .line 8
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollTop:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mMinDistanceFromCenter:F

    const/4 p2, 0x0

    .line 10
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mClosestImageViewIndex:I

    .line 11
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerChangeListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    if-nez p2, :cond_3

    int-to-float p2, p1

    .line 12
    iget p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mItemWidth:I

    int-to-float p4, p4

    div-float/2addr p2, p4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-boolean p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz p4, :cond_2

    iget p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_2
    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length p4, p4

    :goto_0
    sub-int/2addr p4, p3

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 13
    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    if-eq p3, p2, :cond_3

    .line 14
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerChangeListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    invoke-virtual {p4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    add-int/2addr p4, p2

    invoke-interface {p3, p4}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;->onScrollChanged(I)V

    .line 15
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    .line 16
    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerReachListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    if-nez p2, :cond_4

    .line 17
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->getHapticList(I)Ljava/util/List;

    move-result-object p2

    .line 18
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 19
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerReachListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;

    invoke-interface {p2}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;->onScrollReached()V

    .line 20
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setTextLabelAlpha(I)V

    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setTickAlpha(I)V

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/HorizontalScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 23
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsNeedToSkipAutoScrollChanged:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    if-eqz v0, :cond_5

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;->onScrollMove()V

    goto :goto_0

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsScrolling:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->isTtsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    invoke-virtual {p0, v0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    .line 7
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsSliderPressed:Z

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollToNearestTickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_4
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsSliderPressed:Z

    .line 10
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    if-eqz v0, :cond_5

    .line 11
    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;->onScrollStart()V

    .line 12
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public resetSlider()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mRangeBasedDisplayedStepCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mDisplayedStepCount:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    array-length v0, v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->translateTo(IZ)V

    return-void
.end method

.method public setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/l0;->setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V

    return-void
.end method

.method public setKeyboardEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mKeyboardEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$KeyboardEventListener;

    return-void
.end method

.method public setProScrollReachListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerReachListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollReachListener;

    return-void
.end method

.method public setProScrollerChangeListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mProScrollerChangeListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollChangedListener;

    return-void
.end method

.method public setRotation(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setRotation(F)V

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x42b40000    # 90.0f

    cmpl-float v1, p1, v0

    const/high16 v2, -0x3d4c0000    # -90.0f

    if-nez v1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/high16 v1, 0x43870000    # 270.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v2

    if-nez v1, :cond_2

    :cond_1
    move p1, v0

    .line 3
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mTextViewList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/f;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/f;-><init>(F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public setScrollEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mScrollEventListener:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$ScrollEventListener;

    return-void
.end method

.method public showAutoModeLayout()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mPreviousStep:I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v0, v0, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/c;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showManualModeLayout(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mIsAutoMode:Z

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v1, v1, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/d;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/d;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLabelViews(Landroid/util/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    invoke-virtual {v0, p1}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mSliderRange:Landroid/util/Range;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mAllLabels:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mLabels:[Ljava/lang/CharSequence;

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->updateHorizontalView()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->initScrollViewProperties()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->updateLayoutChildViews()V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object p1, p1, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$3;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object p1, p1, Lo5/o7;->b:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView$4;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public updateScrollOrientation(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v0, v0, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object v1, v1, Lo5/o7;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080869

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 4
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070535

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070532

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 5
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070504

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float p1, p1

    .line 6
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result p1

    const/16 v5, 0xa

    const/16 v6, 0xc

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 8
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 9
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 10
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 11
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 12
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 13
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 p1, 0x30

    .line 14
    invoke-virtual {v2, v7, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 16
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 17
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 18
    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 19
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 21
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    const/16 p1, 0x50

    .line 22
    invoke-virtual {v2, v7, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    :goto_0
    const/4 p1, -0x2

    .line 23
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 24
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f07050f

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 25
    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x42b40000    # 90.0f

    .line 26
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->setRotation(F)V

    .line 27
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object p1, p1, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 28
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object p1, p1, Lo5/o7;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;->mViewBinding:Lo5/o7;

    iget-object p0, p0, Lo5/o7;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
