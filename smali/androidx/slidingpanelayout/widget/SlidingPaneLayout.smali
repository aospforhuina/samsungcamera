.class public Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.super Landroid/view/ViewGroup;
.source "SlidingPaneLayout.java"

# interfaces
.implements Landroidx/customview/widget/Openable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SimplePanelSlideListener;,
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.slidingpanelayout.widget.SlidingPaneLayout"

.field private static final DEFAULT_FADE_COLOR:I = -0x33333334

.field private static final DEFAULT_OVERHANG_SIZE:I = 0x20

.field public static final LOCK_MODE_LOCKED:I = 0x3

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field static final PENDING_ACTION_COLLAPSED:I = 0x2

.field static final PENDING_ACTION_COLLAPSED_LOCK:I = 0x102

.field static final PENDING_ACTION_EXPANDED:I = 0x1

.field static final PENDING_ACTION_EXPANDED_LOCK:I = 0x101

.field static final PENDING_ACTION_NONE:I = 0x0

.field private static final SESL_EXTRA_AREA_SENSITIVITY:F = 0.1f

.field public static final SESL_PENDING_COLLAPSED:I = 0x2

.field public static final SESL_PENDING_COLLAPSED_LOCK:I = 0x102

.field public static final SESL_PENDING_EXPANDED:I = 0x1

.field public static final SESL_PENDING_EXPANDED_LOCK:I = 0x101

.field public static final SESL_PENDING_NONE:I = 0x0

.field public static final SESL_STATE_CLOSE:I = 0x0

.field public static final SESL_STATE_IDLE:I = 0x2

.field public static final SESL_STATE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SeslSlidingPaneLayout"


# instance fields
.field private mCanSlide:Z

.field private mCoveredFadeColor:I

.field private mDisplayListReflectionLoaded:Z

.field private mDoubleCheckState:I

.field final mDragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private mDrawRoundedCorner:Z

.field private mDrawerPanel:Landroid/view/View;

.field private mFirstLayout:Z

.field private mFixedPaneStartX:I

.field private mGetDisplayList:Ljava/lang/reflect/Method;

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIsAnimate:Z

.field private mIsLock:Z

.field private mIsNeedBlockDim:Z

.field private mIsNeedClose:Z

.field private mIsNeedOpen:Z

.field private mIsSinglePanel:Z

.field private mIsSlideableViewTouched:Z

.field mIsUnableToDrag:Z

.field private mLastValidVelocity:I

.field private mLockMode:I

.field private mMarginBottom:I

.field private mMarginTop:I

.field private final mOverhangSize:I

.field private mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

.field private mParallaxBy:I

.field private mParallaxOffset:F

.field private mPendingAction:I

.field final mPostedRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefContentWidth:Landroid/util/TypedValue;

.field private mPrefDrawerWidth:Landroid/util/TypedValue;

.field mPreservedOpenState:Z

.field private mPrevMotionX:F

.field private mPrevOrientation:I

.field private mPrevWindowVisibility:I

.field private mRecreateDisplayList:Ljava/lang/reflect/Field;

.field private mResizeChild:Landroid/view/View;

.field private mResizeChildList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mResizeOff:Z

.field private mRoundedColor:I

.field private mSetCustomPendingAction:Z

.field private mSetResizeChild:Z

.field private mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

.field mSlideOffset:F

.field mSlideRange:I

.field mSlideableView:Landroid/view/View;

.field private mSliderFadeColor:I

.field private mSlidingPaneDragArea:I

.field private mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

.field private mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

.field private mSmoothWidth:I

.field private mStartMargin:I

.field private mStartOffset:F

.field private mStartSlideX:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mUserPreferredContentSize:I

.field private mUserPreferredDrawerSize:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0x33333334

    .line 4
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 6
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedBlockDim:Z

    .line 10
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 11
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 12
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    const/4 v3, 0x0

    .line 13
    iput v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 14
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    const/4 v3, 0x0

    .line 15
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 16
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 17
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRoundedColor:I

    .line 18
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetCustomPendingAction:Z

    .line 19
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    .line 20
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    .line 21
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    .line 22
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartSlideX:I

    .line 23
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 24
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    .line 25
    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChildList:Ljava/util/ArrayList;

    .line 26
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetResizeChild:Z

    .line 27
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 28
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    .line 29
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    .line 30
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredContentSize:I

    .line 31
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredDrawerSize:I

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x42000000    # 32.0f

    mul-float/2addr v4, v1

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 33
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    .line 34
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 35
    new-instance v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;

    invoke-direct {v4, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v4}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 36
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 37
    sget-object v4, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout:[I

    invoke-virtual {p1, p2, v4, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 38
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslIsSinglePanel:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSinglePanel:Z

    .line 39
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslDrawRoundedCorner:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawRoundedCorner:Z

    .line 40
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslDrawRoundedCornerColor:I

    .line 41
    invoke-static {p1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Landroidx/slidingpanelayout/R$color;->sesl_sliding_pane_background_light:I

    invoke-virtual {v4, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Landroidx/slidingpanelayout/R$color;->sesl_sliding_pane_background_dark:I

    invoke-virtual {v4, v6, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 44
    :goto_0
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRoundedColor:I

    .line 45
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslResizeOff:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 46
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslDrawerMarginTop:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    .line 47
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslDrawerMarginBottom:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    .line 48
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslPrefDrawerWidthSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefDrawerWidth:Landroid/util/TypedValue;

    .line 50
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 51
    :cond_1
    sget p3, Landroidx/slidingpanelayout/R$styleable;->SlidingPaneLayout_seslPrefContentWidthSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 52
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefContentWidth:Landroid/util/TypedValue;

    .line 53
    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 54
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;

    invoke-direct {p2, p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DragHelperCallback;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    invoke-static {p0, v5, p2}, Landroidx/customview/widget/ViewDragHelper;->seslCreate(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/high16 p3, 0x43c80000    # 400.0f

    mul-float/2addr v1, p3

    .line 56
    invoke-virtual {p2, v1}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 57
    iget-boolean p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    invoke-virtual {p2, p3}, Landroidx/customview/widget/ViewDragHelper;->seslSetUpdateOffsetLR(Z)V

    .line 58
    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawRoundedCorner:Z

    if-eqz p2, :cond_3

    .line 59
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    invoke-direct {p2, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    .line 60
    invoke-virtual {p2, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->setRoundedCorners(I)V

    .line 61
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    iget p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->setMarginTop(I)V

    .line 62
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    iget p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->setMarginBottom(I)V

    .line 63
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 64
    sget p2, Landroidx/slidingpanelayout/R$dimen;->sesl_sliding_layout_default_open:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 65
    sget p3, Landroidx/slidingpanelayout/R$dimen;->sesl_sliding_pane_contents_drag_width_default:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    .line 66
    :goto_1
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 67
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    .line 68
    new-instance p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    invoke-direct {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;-><init>()V

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    return-void
.end method

.method static synthetic access$002(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    return p1
.end method

.method static synthetic access$100(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)F
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    return p0
.end method

.method static synthetic access$200(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    return p0
.end method

.method static synthetic access$300(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    return p0
.end method

.method static synthetic access$400(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    return-object p0
.end method

.method private closePane(IZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 3
    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez p2, :cond_3

    invoke-virtual {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 4
    :cond_3
    :goto_0
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return v1

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    goto :goto_1

    :cond_5
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    :goto_1
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 6
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz p1, :cond_8

    .line 7
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 8
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result p2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    .line 10
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    add-int/2addr p2, v0

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    goto :goto_3

    .line 13
    :cond_6
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    goto :goto_2

    :cond_7
    iget p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setLeft(I)V

    goto :goto_3

    .line 14
    :cond_8
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 15
    :goto_3
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return v1

    :cond_9
    :goto_4
    return v2
.end method

.method private dimChildView(Landroid/view/View;FI)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedBlockDim:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    if-eqz p3, :cond_3

    const/high16 v1, -0x1000000

    and-int/2addr v1, p3

    ushr-int/lit8 v1, v1, 0x18

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    shl-int/lit8 p2, p2, 0x18

    const v1, 0xffffff

    and-int/2addr p3, v1

    or-int/2addr p2, p3

    .line 3
    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-nez p3, :cond_1

    .line 4
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    .line 5
    :cond_1
    iget-object p3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    .line 7
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidateChildRegion(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p2

    if-eqz p2, :cond_5

    .line 10
    iget-object p2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    if-eqz p2, :cond_4

    const/4 p3, 0x0

    .line 11
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 12
    :cond_4
    new-instance p2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    invoke-direct {p2, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;-><init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 13
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-static {p0, p2}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private findResizeChild(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetResizeChild:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private getWindowWidth()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method private isToolbar(Landroid/view/View;)Z
    .locals 0

    instance-of p0, p1, Landroidx/appcompat/widget/Toolbar;

    if-nez p0, :cond_1

    instance-of p0, p1, Landroid/widget/Toolbar;

    if-nez p0, :cond_1

    instance-of p0, p1, Landroidx/slidingpanelayout/widget/SPLToolbarContainer;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private openPane(IZ)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    .line 3
    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-nez p2, :cond_3

    invoke-virtual {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->smoothSlideTo(FI)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    .line 4
    :cond_3
    :goto_0
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return v1

    .line 5
    :cond_4
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    neg-int p2, p2

    goto :goto_1

    :cond_5
    iget p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    :goto_1
    add-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    .line 7
    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 9
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 10
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result p2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr p2, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    .line 11
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result p2

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr p2, v0

    sub-int/2addr p1, p2

    .line 12
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLeft(I)V

    goto :goto_2

    .line 13
    :cond_6
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLeft(I)V

    .line 14
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/view/View;->setRight(I)V

    goto :goto_2

    .line 15
    :cond_7
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 16
    :goto_2
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method private parallaxOtherViews(F)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3
    iget-boolean v2, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    .line 4
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    if-gtz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 5
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_2
    if-ge v3, v2, :cond_6

    .line 6
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne v4, v5, :cond_2

    goto :goto_4

    .line 8
    :cond_2
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    int-to-float v8, v7

    mul-float/2addr v5, v8

    float-to-int v5, v5

    .line 9
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v8, v6, p1

    int-to-float v7, v7

    mul-float/2addr v8, v7

    float-to-int v7, v8

    sub-int/2addr v5, v7

    if-eqz v0, :cond_3

    neg-int v5, v5

    .line 10
    :cond_3
    invoke-virtual {v4, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    .line 11
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float/2addr v5, v6

    goto :goto_3

    .line 12
    :cond_4
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxOffset:F

    sub-float v5, v6, v5

    :goto_3
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    .line 13
    invoke-direct {p0, v4, v5, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method private seslSetDrawerPaneWidth()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    if-nez v0, :cond_0

    const-string p0, "SeslSlidingPaneLayout"

    const-string v0, "mDrawerPanel is null"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/slidingpanelayout/R$dimen;->sesl_sliding_pane_drawer_width:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 5
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    const/4 v3, -0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    if-eq v0, v3, :cond_3

    .line 8
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 9
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private setVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 4
    :goto_0
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private shouldSkipScroll()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "remove_animations"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x21

    if-ge v0, v4, :cond_1

    .line 3
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 4
    :cond_1
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private updateSlidingState()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->getState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->onStateChanged(I)V

    .line 5
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->onStateChanged(I)V

    .line 8
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    .line 10
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;->onStateChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0

    const-string p0, "SeslSlidingPaneLayout"

    const-string p1, "addPanelSlideListener not work on SESL5"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    .line 1
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 5
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-ltz v5, :cond_1

    .line 6
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    .line 7
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_0

    add-int v8, p5, v4

    .line 8
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_0

    const/4 v9, 0x1

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    .line 11
    invoke-virtual/range {v6 .. v11}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->canScroll(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_0

    return v2

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 12
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, p3

    goto :goto_1

    :cond_2
    move v1, p3

    neg-int v1, v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public canSlide()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 2
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public closePane()Z
    .locals 3

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    const/4 v1, 0x1

    .line 17
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 18
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->shouldSkipScroll()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(IZ)Z

    move-result p0

    return p0
.end method

.method public computeScroll()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawRoundedCorner:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRoundedColor:I

    invoke-virtual {v0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->setRoundedCornerColor(II)V

    .line 4
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->drawRoundedCorner(Landroid/view/View;Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 2
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 2
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    :cond_0
    const/16 p1, 0x20

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .line 3
    :cond_0
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-nez p1, :cond_1

    .line 4
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    :cond_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 9
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result p0

    add-int/2addr v4, p0

    goto :goto_2

    .line 11
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result p0

    sub-int v1, p0, v4

    move v4, p0

    move p0, v1

    .line 12
    :goto_2
    invoke-virtual {v0, p0, v2, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_3
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v2, :cond_1

    iget-boolean v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 5
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 8
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 9
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    .line 10
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>()V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_0

    .line 2
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object p0
.end method

.method public getCoveredFadeColor()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return p0
.end method

.method public final getLockMode()I
    .locals 2

    const-string v0, "SeslSlidingPaneLayout"

    const-string v1, "getLockMode not work on SESL5"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLockMode:I

    return p0
.end method

.method public getParallaxDistance()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    return p0
.end method

.method public getSliderFadeColor()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return p0
.end method

.method invalidateChildRegion(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimPaint:Landroid/graphics/Paint;

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V

    return-void
.end method

.method isDimmed(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 2
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_1

    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz p1, :cond_1

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method isLayoutRtlSupport()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSlideable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetCustomPendingAction:Z

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 6
    :cond_2
    :goto_1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    goto :goto_2

    .line 9
    :cond_3
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 10
    :cond_4
    :goto_2
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevOrientation:I

    .line 11
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->seslSetDrawerPaneWidth()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;

    .line 5
    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DisableLayerRunnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPostedRunnables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v1, :cond_5

    goto/16 :goto_4

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 5
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 6
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 7
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 8
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    sub-float v8, v4, v7

    cmpl-float v7, v7, v4

    if-eqz v7, :cond_2

    .line 9
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 10
    :cond_2
    iget-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-nez v4, :cond_e

    int-to-float v4, v5

    cmpl-float v4, v6, v4

    if-lez v4, :cond_e

    .line 11
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    add-int/2addr p1, v0

    int-to-float v8, p1

    goto :goto_0

    .line 15
    :cond_3
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v8

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    :cond_4
    :goto_0
    float-to-int p1, v8

    .line 16
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    return v3

    .line 17
    :cond_5
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3dcccccd    # 0.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_6

    return v2

    .line 18
    :cond_6
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    const/4 v4, -0x1

    .line 19
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 20
    iget-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    if-nez v4, :cond_e

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_e

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_e

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, v4, p1

    if-ltz p1, :cond_7

    .line 21
    iput v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 22
    invoke-virtual {p0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->seslOpenPane(Z)V

    goto :goto_1

    .line 23
    :cond_7
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 24
    invoke-virtual {p0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->seslClosePane(Z)V

    :goto_1
    return v3

    .line 25
    :cond_8
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 26
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 27
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 28
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 31
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 32
    iput v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 33
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    .line 34
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 35
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 36
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    goto :goto_2

    :cond_9
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 37
    :goto_2
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 38
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_a

    iget-boolean v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v6, :cond_d

    .line 39
    :cond_a
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 40
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    goto :goto_3

    .line 41
    :cond_b
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v6, v4, v6

    if-gtz v6, :cond_c

    iget-boolean v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v6, :cond_d

    .line 42
    :cond_c
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 43
    iput-boolean v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    .line 44
    :cond_d
    :goto_3
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v4, v4

    float-to-int v5, v5

    invoke-virtual {v6, v7, v4, v5}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSlideableViewTouched:Z

    if-eqz v4, :cond_e

    .line 45
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v3

    goto :goto_5

    :cond_e
    :goto_4
    move v4, v2

    .line 46
    :goto_5
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v5, :cond_f

    if-nez v0, :cond_f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-le v5, v3, :cond_f

    .line 47
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 48
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    .line 50
    invoke-virtual {v6, v5, v7, v8}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v5

    xor-int/2addr v5, v3

    iput-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_f
    if-eq v0, v1, :cond_13

    if-ne v0, v3, :cond_10

    goto :goto_6

    .line 51
    :cond_10
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move v2, v3

    :cond_12
    return v2

    .line 52
    :cond_13
    :goto_6
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    return v2

    .line 53
    :cond_14
    :goto_7
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 54
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4, v2}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4, v3}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    :goto_0
    sub-int v4, p4, p2

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    :goto_1
    if-eqz v1, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    goto :goto_2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    .line 6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 8
    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v9, :cond_5

    .line 9
    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v9, :cond_4

    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    if-nez v9, :cond_3

    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    if-ne v9, v3, :cond_4

    :cond_3
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 10
    :goto_3
    iput v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    :cond_5
    move v12, v5

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v8, :cond_12

    .line 11
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 12
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v2, 0x8

    if-ne v15, v2, :cond_6

    goto/16 :goto_e

    .line 13
    :cond_6
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 14
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 15
    iget-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v3, :cond_9

    .line 16
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v11

    sub-int v11, v4, v6

    .line 17
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v9, v11, v9

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int/2addr v9, v12

    sub-int/2addr v9, v3

    if-eqz v1, :cond_7

    .line 18
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    :cond_7
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 19
    :goto_5
    iput v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    .line 20
    iput v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int v16, v12, v3

    add-int v16, v16, v9

    .line 21
    div-int/lit8 v17, v15, 0x2

    add-int v10, v16, v17

    if-le v10, v11, :cond_8

    const/4 v10, 0x1

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    :goto_6
    iput-boolean v10, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    int-to-float v10, v9

    .line 22
    iget v11, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v3, v10

    add-int/2addr v12, v3

    int-to-float v3, v10

    int-to-float v9, v9

    div-float/2addr v3, v9

    .line 23
    iput v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    goto :goto_7

    .line 24
    :cond_9
    iget-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_a

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v3, :cond_a

    .line 25
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    int-to-float v3, v3

    mul-float/2addr v9, v3

    float-to-int v3, v9

    move v12, v5

    goto :goto_8

    :cond_a
    move v12, v5

    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-eqz v1, :cond_d

    sub-int v9, v4, v12

    add-int/2addr v9, v3

    .line 26
    iget-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz v3, :cond_b

    .line 27
    iget-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v3, :cond_c

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int v3, v4, v3

    sub-int v3, v9, v3

    goto :goto_9

    .line 28
    :cond_b
    iget-boolean v3, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    neg-int v3, v3

    goto :goto_9

    :cond_c
    sub-int v3, v9, v15

    :goto_9
    const/4 v10, 0x0

    .line 29
    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    goto :goto_b

    :cond_d
    sub-int v3, v12, v3

    .line 30
    iget-boolean v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz v9, :cond_f

    .line 31
    iget-boolean v9, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v9, :cond_e

    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int v9, v4, v9

    add-int/2addr v9, v3

    goto :goto_a

    :cond_e
    add-int v9, v3, v15

    goto :goto_a

    .line 32
    :cond_f
    iget-boolean v9, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v9

    .line 33
    :goto_a
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFixedPaneStartX:I

    :goto_b
    if-eqz v1, :cond_10

    .line 34
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_c

    :cond_10
    iget v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_c
    iput v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartSlideX:I

    .line 35
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v7

    .line 36
    iget-boolean v2, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v2, :cond_11

    .line 37
    invoke-virtual {v14, v3, v7, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    .line 38
    :cond_11
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    add-int v11, v7, v2

    add-int/2addr v10, v2

    invoke-virtual {v14, v3, v11, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 39
    :goto_d
    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v5, v2

    :goto_e
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    goto/16 :goto_4

    .line 40
    :cond_12
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    if-eqz v1, :cond_16

    .line 41
    iget-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v1, :cond_14

    .line 42
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz v1, :cond_13

    .line 43
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 44
    :cond_13
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    iget-boolean v1, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz v1, :cond_15

    .line 45
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {v0, v1, v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    goto :goto_10

    :cond_14
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v8, :cond_15

    .line 46
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    .line 47
    :cond_15
    :goto_10
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    :cond_16
    const/4 v1, 0x0

    .line 48
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    .line 49
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    .line 50
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v2, :cond_17

    const/high16 v2, 0x3f800000    # 1.0f

    .line 51
    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 52
    :cond_17
    invoke-direct {v0, v1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(IZ)Z

    .line 53
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    :goto_11
    const/4 v3, 0x1

    goto :goto_12

    :cond_18
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    .line 54
    iget-boolean v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v2, :cond_19

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    .line 56
    :cond_19
    invoke-direct {v0, v1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(IZ)Z

    .line 57
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    goto :goto_11

    :cond_1a
    const/16 v3, 0x101

    if-ne v2, v3, :cond_1b

    .line 58
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 59
    invoke-direct {v0, v1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(IZ)Z

    const/4 v3, 0x1

    .line 60
    iput-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 61
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    goto :goto_12

    :cond_1b
    const/4 v3, 0x1

    const/16 v4, 0x102

    if-ne v2, v4, :cond_1c

    .line 62
    iput-boolean v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 63
    invoke-direct {v0, v1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(IZ)Z

    .line 64
    iput-boolean v3, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    .line 65
    iput v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 66
    :cond_1c
    :goto_12
    invoke-direct/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateSlidingState()V

    .line 67
    iget v2, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    if-ne v2, v3, :cond_1d

    .line 68
    invoke-direct {v0, v1, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(IZ)Z

    goto :goto_13

    :cond_1d
    if-nez v2, :cond_1e

    .line 69
    invoke-direct {v0, v1, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(IZ)Z

    .line 70
    :cond_1e
    :goto_13
    iput v4, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    :cond_1f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    const/16 v5, 0x12c

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v7, :cond_2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne v1, v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_4

    move v2, v5

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Width must have an exact value or MATCH_PARENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez v3, :cond_4

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    move v4, v5

    move v3, v6

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Height must not be UNSPECIFIED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    const/4 v1, 0x0

    if-eq v3, v6, :cond_6

    if-eq v3, v7, :cond_5

    move v4, v1

    :goto_1
    move v5, v4

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_1

    .line 10
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    move v5, v4

    move v4, v1

    .line 11
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_7

    const-string v10, "SeslSlidingPaneLayout"

    const-string v11, "onMeasure: More than two child views are not supported."

    .line 13
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v10, 0x0

    .line 14
    iput-object v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 15
    iput-object v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    move v11, v1

    move v12, v11

    move v14, v8

    const/4 v13, 0x0

    :goto_3
    const/16 v15, 0x8

    if-ge v11, v9, :cond_19

    .line 16
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 17
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_8

    .line 19
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    :goto_4
    move/from16 v18, v9

    goto/16 :goto_c

    .line 20
    :cond_8
    iget v10, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v17, v10, v15

    if-lez v17, :cond_9

    add-float/2addr v13, v10

    .line 21
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v10, :cond_9

    goto :goto_4

    .line 22
    :cond_9
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v15

    .line 23
    iget v15, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v15, v1, :cond_10

    .line 24
    iget-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v1, :cond_a

    sub-int v1, v8, v10

    const/high16 v10, -0x80000000

    .line 25
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v18, v9

    goto :goto_7

    .line 26
    :cond_a
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredDrawerSize:I

    const/4 v10, -0x1

    if-eq v1, v10, :cond_b

    move/from16 v18, v9

    const/4 v9, 0x1

    goto :goto_6

    .line 27
    :cond_b
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefDrawerWidth:Landroid/util/TypedValue;

    if-eqz v1, :cond_c

    move/from16 v18, v9

    const/4 v9, 0x1

    goto :goto_5

    .line 28
    :cond_c
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v15, Landroidx/slidingpanelayout/R$dimen;->sesl_sliding_pane_drawer_width:I

    move/from16 v18, v9

    const/4 v9, 0x1

    invoke-virtual {v10, v15, v1, v9}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 30
    :goto_5
    iget v10, v1, Landroid/util/TypedValue;->type:I

    const/4 v15, 0x4

    if-ne v10, v15, :cond_d

    .line 31
    invoke-direct/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    mul-float/2addr v10, v1

    float-to-int v1, v10

    goto :goto_6

    :cond_d
    const/4 v15, 0x5

    if-ne v10, v15, :cond_e

    .line 32
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_6

    :cond_e
    move v1, v2

    :goto_6
    if-le v1, v2, :cond_f

    move v1, v2

    :cond_f
    const/high16 v10, 0x40000000    # 2.0f

    .line 33
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_7

    :cond_10
    move/from16 v18, v9

    const/4 v1, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v15, v1, :cond_11

    sub-int v1, v8, v10

    .line 34
    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_7

    .line 35
    :cond_11
    invoke-static {v15, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 36
    :goto_7
    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_13

    .line 37
    iget-boolean v9, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v9, :cond_12

    move v9, v5

    goto :goto_8

    .line 38
    :cond_12
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    sub-int v9, v5, v9

    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    sub-int/2addr v9, v10

    :goto_8
    const/high16 v10, -0x80000000

    .line 39
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_a

    :cond_13
    const/4 v10, -0x1

    if-ne v9, v10, :cond_15

    .line 40
    iget-boolean v9, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    if-eqz v9, :cond_14

    move v9, v5

    goto :goto_9

    .line 41
    :cond_14
    iget v9, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    sub-int v9, v5, v9

    iget v10, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    sub-int/2addr v9, v10

    :goto_9
    const/high16 v10, 0x40000000    # 2.0f

    .line 42
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_a

    :cond_15
    const/high16 v10, 0x40000000    # 2.0f

    .line 43
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 44
    :goto_a
    invoke-virtual {v6, v1, v9}, Landroid/view/View;->measure(II)V

    .line 45
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 46
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    const/high16 v10, -0x80000000

    if-ne v3, v10, :cond_16

    if-le v9, v4, :cond_16

    .line 47
    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_16
    sub-int/2addr v14, v1

    if-gez v14, :cond_17

    const/4 v1, 0x1

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    .line 48
    :goto_b
    iput-boolean v1, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    or-int/2addr v12, v1

    if-eqz v1, :cond_18

    .line 49
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    goto :goto_c

    .line 50
    :cond_18
    iput-object v6, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDrawerPanel:Landroid/view/View;

    :goto_c
    add-int/lit8 v11, v11, 0x1

    move/from16 v9, v18

    const/4 v1, 0x0

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    goto/16 :goto_3

    :cond_19
    move/from16 v18, v9

    if-nez v12, :cond_1a

    const/4 v1, 0x0

    cmpl-float v3, v13, v1

    if-lez v3, :cond_2a

    .line 51
    :cond_1a
    iget v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mOverhangSize:I

    sub-int v1, v8, v1

    move/from16 v6, v18

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v6, :cond_2a

    .line 52
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 53
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v15, :cond_1d

    :cond_1b
    :goto_e
    move/from16 v19, v1

    :cond_1c
    :goto_f
    const/4 v1, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_14

    .line 54
    :cond_1d
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 55
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v15, :cond_1e

    goto :goto_e

    .line 56
    :cond_1e
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v10, :cond_1f

    iget v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_1f

    const/4 v10, 0x1

    goto :goto_10

    :cond_1f
    const/4 v10, 0x0

    :goto_10
    if-eqz v10, :cond_20

    const/4 v11, 0x0

    goto :goto_11

    .line 57
    :cond_20
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    :goto_11
    if-eqz v12, :cond_25

    .line 58
    iget-object v15, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eq v7, v15, :cond_25

    .line 59
    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-gez v15, :cond_1b

    if-gt v11, v1, :cond_21

    iget v11, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v11, v11, v15

    if-lez v11, :cond_1b

    :cond_21
    if-eqz v10, :cond_24

    .line 60
    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_22

    const/high16 v10, -0x80000000

    .line 61
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    goto :goto_12

    :cond_22
    const/4 v10, -0x1

    if-ne v9, v10, :cond_23

    const/high16 v10, 0x40000000    # 2.0f

    .line 62
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_12

    :cond_23
    const/high16 v10, 0x40000000    # 2.0f

    .line 63
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    goto :goto_12

    :cond_24
    const/high16 v10, 0x40000000    # 2.0f

    .line 64
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 65
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 66
    :goto_12
    invoke-static {v1, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 67
    invoke-virtual {v7, v11, v9}, Landroid/view/View;->measure(II)V

    goto :goto_e

    .line 68
    :cond_25
    iget v10, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v15, 0x0

    cmpl-float v10, v10, v15

    if-lez v10, :cond_1b

    .line 69
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v10, :cond_28

    .line 70
    iget v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v15, -0x2

    if-ne v10, v15, :cond_26

    const/high16 v15, -0x80000000

    .line 71
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_13

    :cond_26
    const/4 v15, -0x1

    if-ne v10, v15, :cond_27

    const/high16 v15, 0x40000000    # 2.0f

    .line 72
    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_13

    :cond_27
    const/high16 v15, 0x40000000    # 2.0f

    .line 73
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_13

    :cond_28
    const/high16 v15, 0x40000000    # 2.0f

    .line 74
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 75
    invoke-static {v10, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_13
    if-eqz v12, :cond_29

    .line 76
    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v9

    sub-int v9, v8, v15

    move/from16 v19, v1

    const/high16 v15, 0x40000000    # 2.0f

    .line 77
    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    if-eq v11, v9, :cond_1c

    .line 78
    invoke-virtual {v7, v1, v10}, Landroid/view/View;->measure(II)V

    goto/16 :goto_f

    :cond_29
    move/from16 v19, v1

    const/4 v1, 0x0

    .line 79
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 80
    iget v9, v9, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    int-to-float v15, v15

    mul-float/2addr v9, v15

    div-float/2addr v9, v13

    float-to-int v9, v9

    add-int/2addr v11, v9

    const/high16 v9, 0x40000000    # 2.0f

    .line 81
    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 82
    invoke-virtual {v7, v11, v10}, Landroid/view/View;->measure(II)V

    :goto_14
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v19

    const/16 v15, 0x8

    goto/16 :goto_d

    .line 83
    :cond_2a
    invoke-direct/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v1

    if-lez v1, :cond_2b

    move v2, v1

    .line 84
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v4, v1

    .line 85
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 86
    iput-boolean v12, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    .line 87
    iget-object v1, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-eqz v1, :cond_2c

    if-nez v12, :cond_2c

    .line 88
    iget-object v0, v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    :cond_2c
    return-void
.end method

.method onPanelDragged(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 5
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    :goto_0
    if-eqz v0, :cond_3

    .line 7
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_3
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    add-int/2addr v3, v4

    .line 8
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    if-eqz v0, :cond_4

    .line 9
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz v5, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_3

    .line 11
    :cond_4
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    if-eqz v5, :cond_5

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v3

    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_3

    .line 13
    :cond_5
    iget-boolean v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    if-eqz v5, :cond_7

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 15
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    .line 16
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int p1, v0, v4

    :cond_8
    sub-int/2addr p1, v3

    int-to-float p1, p1

    .line 18
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :cond_9
    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v3, p1, v0

    if-lez v3, :cond_a

    goto :goto_4

    .line 19
    :cond_a
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    :goto_4
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    .line 20
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_b

    .line 21
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 22
    :cond_b
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->updateSlidingState()V

    .line 23
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    if-eqz p1, :cond_c

    .line 24
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->parallaxOtherViews(F)V

    .line 25
    :cond_c
    iget-boolean p1, v2, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->dimWhenOffset:Z

    if-eqz p1, :cond_d

    .line 26
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dimChildView(Landroid/view/View;FI)V

    .line 27
    :cond_d
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    .line 4
    invoke-virtual {p1}, Landroidx/customview/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-boolean v0, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    .line 8
    :goto_0
    iget-boolean p1, p1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;

    invoke-direct {v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :goto_0
    iput-boolean p0, v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 3
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setVelocityTracker(Landroid/view/MotionEvent;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq v0, v2, :cond_e

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_e

    goto/16 :goto_5

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 6
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 7
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    sub-float v5, p1, v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 8
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 9
    :cond_2
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result p1

    .line 10
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsUnableToDrag:Z

    if-nez v1, :cond_13

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_13

    .line 11
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSlideableViewTouched:Z

    if-eqz p1, :cond_7

    .line 12
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz p1, :cond_d

    .line 14
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    :goto_0
    add-int/2addr p1, v0

    int-to-float v5, p1

    goto/16 :goto_4

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    .line 17
    :goto_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez p1, :cond_5

    move p1, v2

    :cond_5
    div-int/2addr v0, p1

    .line 18
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    if-nez v0, :cond_6

    move v0, v2

    :cond_6
    int-to-float v0, v0

    div-float/2addr v5, v0

    add-float/2addr p1, v5

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    int-to-float v0, v0

    .line 20
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 21
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz p1, :cond_d

    .line 22
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    int-to-float v0, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    .line 23
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr p1, v0

    .line 24
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRight(I)V

    goto/16 :goto_4

    .line 25
    :cond_7
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr p1, v0

    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int/2addr v0, v1

    .line 28
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v5

    int-to-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    int-to-float v0, v0

    .line 30
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 31
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz v0, :cond_d

    .line 32
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setRight(I)V

    .line 33
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    add-int/2addr p1, v0

    .line 34
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLeft(I)V

    .line 35
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    goto/16 :goto_0

    .line 36
    :cond_8
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_2

    :cond_9
    int-to-float v0, v0

    :goto_2
    div-float/2addr p1, v0

    .line 37
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 38
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_a

    .line 39
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    mul-float/2addr p1, v0

    .line 40
    :cond_a
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, p1, v4

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    move v3, p1

    :goto_3
    div-float/2addr v5, v3

    add-float/2addr v0, v5

    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    add-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 41
    iget-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz p1, :cond_c

    .line 42
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWindowWidth()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    sub-int/2addr p1, v0

    .line 43
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRight(I)V

    .line 44
    :cond_c
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartMargin:I

    int-to-float v0, v0

    invoke-static {v0, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    :cond_d
    :goto_4
    float-to-int p1, v5

    .line 45
    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onPanelDragged(I)V

    goto/16 :goto_5

    .line 46
    :cond_e
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 47
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 49
    :cond_f
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 52
    iget v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    sub-float v5, v0, v5

    .line 53
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    sub-float v6, p1, v6

    .line 54
    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v7}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v7

    mul-float/2addr v5, v5

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    mul-int/2addr v7, v7

    int-to-float v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_10

    .line 55
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    float-to-int v0, v0

    float-to-int p1, p1

    .line 56
    invoke-virtual {v5, v6, v0, p1}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 57
    invoke-direct {p0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(IZ)Z

    goto :goto_5

    .line 58
    :cond_10
    iget-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    const/4 p1, -0x1

    .line 59
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 60
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    cmpl-float v0, p1, v4

    if-eqz v0, :cond_13

    cmpl-float v0, p1, v3

    if-eqz v0, :cond_13

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_11

    .line 61
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 62
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->seslOpenPane(Z)V

    goto :goto_5

    .line 63
    :cond_11
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDoubleCheckState:I

    .line 64
    invoke-virtual {p0, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->seslClosePane(Z)V

    goto :goto_5

    .line 65
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 67
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionX:F

    .line 68
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mInitialMotionY:F

    .line 69
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartOffset:F

    .line 70
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 71
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 72
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevMotionX:F

    .line 73
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSmoothWidth:I

    :cond_13
    :goto_5
    return v2

    .line 74
    :cond_14
    :goto_6
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 2
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    .line 6
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    if-eq v0, p1, :cond_3

    .line 7
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrevWindowVisibility:I

    :cond_3
    return-void
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 2
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method public openPane()Z
    .locals 3

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 19
    invoke-direct {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->shouldSkipScroll()Z

    move-result v2

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(IZ)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInTouchMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPreservedOpenState:Z

    :cond_1
    return-void
.end method

.method resizeSlideableView(F)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 4
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_c

    .line 6
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 8
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mStartSlideX:I

    sub-int v7, v0, v7

    iget v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v8, v8

    mul-float/2addr v8, p1

    float-to-int v8, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v1

    .line 9
    invoke-virtual {v5}, Landroid/view/View;->getPaddingStart()I

    move-result v8

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->getPaddingEnd()I

    move-result v9

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 11
    iget-object v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPrefContentWidth:Landroid/util/TypedValue;

    if-eqz v8, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Landroidx/slidingpanelayout/R$dimen;->sesl_sliding_pane_contents_width:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v8, v11}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 14
    :goto_1
    iget v9, v8, Landroid/util/TypedValue;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    int-to-float v9, v0

    .line 15
    invoke-virtual {v8}, Landroid/util/TypedValue;->getFloat()F

    move-result v8

    mul-float/2addr v9, v8

    float-to-int v8, v9

    goto :goto_2

    :cond_1
    const/4 v10, 0x5

    if-ne v9, v10, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v8

    float-to-int v8, v8

    goto :goto_2

    :cond_2
    move v8, v7

    .line 17
    :goto_2
    iget v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredContentSize:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    move v8, v9

    .line 18
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 19
    iget-boolean v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetResizeChild:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_7

    .line 20
    iget-object v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChildList:Ljava/util/ArrayList;

    if-nez v9, :cond_5

    .line 21
    iget-object v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_a

    .line 22
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_6

    .line 23
    :cond_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_6

    return-void

    .line 24
    :cond_6
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    .line 25
    :cond_7
    iget-boolean v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSinglePanel:Z

    if-eqz v9, :cond_a

    .line 26
    invoke-direct {p0, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isToolbar(Landroid/view/View;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 27
    instance-of v9, v5, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v9, :cond_9

    .line 28
    invoke-direct {p0, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->findResizeChild(Landroid/view/View;)V

    .line 29
    iget-object v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    if-nez v9, :cond_8

    goto :goto_5

    .line 30
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    :goto_5
    if-eqz v10, :cond_a

    .line 31
    iput v8, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_6

    :cond_9
    move v7, v8

    .line 32
    :cond_a
    :goto_6
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 33
    invoke-virtual {v5}, Landroid/view/View;->requestLayout()V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public seslClosePane(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    .line 2
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 4
    invoke-direct {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane(IZ)Z

    return-void
.end method

.method public seslGetLock()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    return p0
.end method

.method public seslGetPreferredContentPixelSize()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredContentSize:I

    return p0
.end method

.method public seslGetPreferredDrawerPixelSize()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredDrawerSize:I

    return p0
.end method

.method public seslGetReiszeOff()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    return p0
.end method

.method public seslGetSinglePanelStatus()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSinglePanel:Z

    return p0
.end method

.method public seslGetSlideRange()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    return p0
.end method

.method public seslGetSlidingPaneDragArea()I
    .locals 0

    iget p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    return p0
.end method

.method public seslGetSlidingState()Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;
    .locals 0

    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingState:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SeslSlidingState;

    return-object p0
.end method

.method public seslOpenPane(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLastValidVelocity:I

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    .line 3
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    .line 4
    invoke-direct {p0, v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane(IZ)Z

    return-void
.end method

.method public seslRequestPreferredContentPixelSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredContentSize:I

    .line 2
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    return-void
.end method

.method public seslRequestPreferredDrawerPixelSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mUserPreferredDrawerSize:I

    .line 2
    iget p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideOffset:F

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->resizeSlideableView(F)V

    return-void
.end method

.method public seslSetBlockDimWhenOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedBlockDim:Z

    return-void
.end method

.method public seslSetDrawerMarginBottom(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginBottom:I

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->setMarginBottom(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public seslSetDrawerMarginTop(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mMarginTop:I

    .line 3
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneRoundedCorner:Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneRoundedCorner;->setMarginTop(I)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public seslSetLock(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsLock:Z

    return-void
.end method

.method public seslSetPendingAction(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x101

    if-eq p1, v1, :cond_1

    const/16 v1, 0x102

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetCustomPendingAction:Z

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pendingAction value is wrong ==> Your pending action value is ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] / Now set pendingAction value as default"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SeslSlidingPaneLayout"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetCustomPendingAction:Z

    .line 4
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPendingAction:I

    :goto_1
    return-void
.end method

.method public seslSetResizeChild(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetResizeChild:Z

    .line 2
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChild:Landroid/view/View;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChildList:Ljava/util/ArrayList;

    return-void
.end method

.method public seslSetResizeChild(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSetResizeChild:Z

    .line 5
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChildList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChildList:Ljava/util/ArrayList;

    .line 7
    :cond_0
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeChildList:Ljava/util/ArrayList;

    return-void
.end method

.method public seslSetResizeOff(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    .line 2
    iget-object p0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/customview/widget/ViewDragHelper;->seslSetUpdateOffsetLR(Z)V

    :cond_0
    return-void
.end method

.method public seslSetRoundedCornerColor(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mRoundedColor:I

    return-void
.end method

.method public seslSetSinglePanel(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsSinglePanel:Z

    return-void
.end method

.method public seslSetSlidingPaneDragArea(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlidingPaneDragArea:I

    return-void
.end method

.method setAllChildrenVisible()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 4
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCoveredFadeColor(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCoveredFadeColor:I

    return-void
.end method

.method public final setLockMode(I)V
    .locals 2

    const-string v0, "SeslSlidingPaneLayout"

    const-string v1, "setLockMode not work on SESL5"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mLockMode:I

    return-void
.end method

.method public setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mPanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    return-void
.end method

.method public setParallaxDistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mParallaxBy:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableLeft:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mShadowDrawableRight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setShadowResource(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceLeft(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableLeft(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowResourceRight(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setShadowDrawableRight(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSliderFadeColor(I)V
    .locals 0

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSliderFadeColor:I

    return-void
.end method

.method public smoothSlideClosed()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->closePane()Z

    return-void
.end method

.method public smoothSlideOpen()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->openPane()Z

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 4

    const/4 p2, 0x0

    .line 1
    iput-boolean p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    .line 2
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    return p2

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v0

    .line 4
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 7
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedClose:Z

    if-eqz v2, :cond_2

    .line 8
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mResizeOff:Z

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsNeedOpen:Z

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    :goto_0
    sub-int/2addr v1, v0

    .line 13
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v3, v3

    mul-float/2addr p1, v3

    add-float/2addr v0, p1

    int-to-float p1, v1

    add-float/2addr v0, p1

    sub-float/2addr v2, v0

    float-to-int p1, v2

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 15
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideRange:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 16
    :goto_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mDragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setAllChildrenVisible()V

    .line 18
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->mIsAnimate:Z

    return p1

    :cond_5
    return p2
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isLayoutRtlSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-eqz v0, :cond_2

    .line 6
    invoke-static/range {p1 .. p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v9

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 11
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_8

    move-object/from16 v13, p0

    .line 12
    invoke-virtual {v13, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    if-ne v14, v0, :cond_3

    goto :goto_8

    .line 13
    :cond_3
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v6, 0x8

    if-ne v15, v6, :cond_4

    move/from16 v16, v1

    goto :goto_7

    :cond_4
    if-eqz v1, :cond_5

    move v6, v3

    goto :goto_4

    :cond_5
    move v6, v2

    .line 14
    :goto_4
    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v15

    .line 15
    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 16
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v16, v1

    if-eqz v1, :cond_6

    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v3

    .line 17
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v1

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 19
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v6, v7, :cond_7

    if-lt v15, v9, :cond_7

    if-gt v0, v8, :cond_7

    if-gt v1, v10, :cond_7

    const/4 v0, 0x4

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    .line 20
    :goto_6
    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    goto :goto_3

    :cond_8
    :goto_8
    return-void
.end method
