.class public Landroidx/appcompat/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/view/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;,
        Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;,
        Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;,
        Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final INVALID_HEIGHT:I = -0x2

.field public static final MATCH_PARENT:I = -0x1

.field private static final ONEUI_5_1_1:Z

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Landroidx/appcompat/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field private mForceShowUpper:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mIsOverflowPopup:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroidx/reflect/os/SeslBuildReflector$SeslVersionReflector;->getField_SEM_PLATFORM_INT()I

    move-result v0

    const v1, 0x224d4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/appcompat/widget/ListPopupWindow;->ONEUI_5_1_1:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/16 v0, 0x3ea

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    .line 10
    iput-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 11
    iput-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    const v2, 0x7fffffff

    .line 12
    iput v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 13
    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    .line 14
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    .line 15
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 16
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    .line 17
    new-instance v2, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0}, Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    .line 18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 19
    iput-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    .line 20
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 21
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 22
    sget-object v2, Landroidx/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 23
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 24
    sget v3, Landroidx/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 25
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 26
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    new-instance v1, Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method private buildDropDown()I
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 3
    new-instance v5, Landroidx/appcompat/widget/ListPopupWindow$2;

    invoke-direct {v5, p0}, Landroidx/appcompat/widget/ListPopupWindow$2;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 4
    iget-boolean v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v5, v3

    invoke-virtual {p0, v0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;

    move-result-object v5

    iput-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 5
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 9
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 10
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 11
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    new-instance v6, Landroidx/appcompat/widget/ListPopupWindow$3;

    invoke-direct {v6, p0}, Landroidx/appcompat/widget/ListPopupWindow$3;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 12
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mScrollListener:Landroidx/appcompat/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 13
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 14
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 15
    :cond_1
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 16
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 17
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 19
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 20
    iget v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    if-eqz v8, :cond_3

    if-eq v8, v3, :cond_2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hint position "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ListPopupWindow"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 24
    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    invoke-virtual {v7, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :goto_0
    iget v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v0, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    move v0, v4

    move v5, v0

    .line 27
    :goto_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 28
    invoke-virtual {v6, v0, v4}, Landroid/view/View;->measure(II)V

    .line 29
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v0

    move v0, v5

    move-object v5, v7

    goto :goto_2

    :cond_5
    move v0, v4

    .line 31
    :goto_2
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v6, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_3

    .line 32
    :cond_6
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v6

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v5

    goto :goto_3

    :cond_7
    move v0, v4

    .line 36
    :goto_3
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 37
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 38
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v5

    goto :goto_4

    .line 39
    :cond_8
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v4

    .line 40
    :goto_4
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    .line 41
    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_9

    goto :goto_5

    :cond_9
    move v3, v4

    .line 42
    :goto_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-direct {p0, v4, v5, v3}, Landroidx/appcompat/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v3

    .line 43
    iget-boolean v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_e

    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v4, v2, :cond_a

    goto :goto_7

    .line 44
    :cond_a
    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_c

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v4, v2, :cond_b

    .line 45
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    .line 46
    :cond_b
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    sub-int/2addr v2, v5

    .line 48
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_6

    .line 49
    :cond_c
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    sub-int/2addr v2, v5

    .line 51
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_6
    move v8, v1

    .line 52
    iget-object v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    const/4 v9, 0x0

    const/4 v10, -0x1

    sub-int v11, v3, v0

    const/4 v12, -0x1

    invoke-virtual/range {v7 .. v12}, Landroidx/appcompat/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v1

    if-lez v1, :cond_d

    .line 53
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 54
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p0

    add-int/2addr v2, p0

    add-int/2addr v6, v2

    add-int/2addr v0, v6

    :cond_d
    add-int/2addr v1, v0

    return v1

    :cond_e
    :goto_7
    add-int/2addr v3, v6

    return v3
.end method

.method private getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 0

    .line 1
    :goto_0
    instance-of p0, p1, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_1

    .line 2
    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 3
    check-cast p1, Landroid/app/Activity;

    return-object p1

    .line 4
    :cond_0
    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result p2

    .line 2
    sget-boolean p3, Landroidx/appcompat/widget/ListPopupWindow;->ONEUI_5_1_1:Z

    if-nez p3, :cond_0

    iget-boolean p3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mIsOverflowPopup:Z

    if-eqz p3, :cond_0

    .line 3
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->updatePopupHeightForFoldableModel(Landroid/view/View;)I

    move-result p0

    if-lez p0, :cond_0

    if-ge p0, p2, :cond_0

    move p2, p0

    :cond_0
    return p2
.end method

.method private static isConfirmKey(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

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

.method private isReduceTransparencySettingsEnabled()Z
    .locals 4

    .line 1
    invoke-static {}, Landroidx/reflect/provider/SeslSettingsReflector$SeslSystemReflector;->getField_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY()Ljava/lang/String;

    move-result-object v0

    const-string v1, "not_supported"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_0

    :goto_0
    return v2
.end method

.method private removePromptView()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setBlurEffect()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isReduceTransparencySettingsEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatPopupWindow;->seslIsAvailableBlurBackground()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v1}, Landroidx/reflect/view/SeslSemBlurInfoReflector;->semCreateBlurBuilder(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v1, 0x78

    .line 5
    invoke-static {v0, v1}, Landroidx/reflect/view/SeslSemBlurInfoReflector;->semSetBuilderBlurRadius(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/appcompat/util/SeslMisc;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroidx/appcompat/R$color;->sesl_popup_menu_blur_background:I

    goto :goto_1

    :cond_1
    sget v1, Landroidx/appcompat/R$color;->sesl_popup_menu_blur_background_dark:I

    .line 7
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 9
    invoke-static {v0, v1}, Landroidx/reflect/view/SeslSemBlurInfoReflector;->semSetBuilderBlurBackgroundColor(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->sesl_menu_popup_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 12
    invoke-static {v0, v1}, Landroidx/reflect/view/SeslSemBlurInfoReflector;->semSetBuilderBlurBackgroundCornerRadius(Ljava/lang/Object;F)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/reflect/view/SeslSemBlurInfoReflector;->semBuildSetBlurInfo(Ljava/lang/Object;Landroid/view/View;)V

    .line 14
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOverScrollMode(I)V

    :cond_2
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setIsClippedToScreen(Z)V

    return-void
.end method

.method private updatePopupHeightForFoldableModel(Landroid/view/View;)I
    .locals 12

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    const/4 v2, -0x2

    const-string v3, "ListPopupWindow"

    if-nez v1, :cond_0

    const-string p0, "displayManager is null, can not update height"

    .line 3
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "display is null, can not update height"

    .line 5
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 6
    :cond_1
    invoke-static {}, Landroidx/reflect/view/SeslSemWindowManagerReflector;->isTableMode()Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    .line 7
    :cond_2
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Landroidx/appcompat/widget/ListPopupWindow;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 8
    invoke-virtual {v5}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_3

    return v2

    :cond_3
    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 9
    invoke-virtual {p1, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10
    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 11
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableDualDisplay()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v5, :cond_7

    .line 13
    iget p1, v0, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    if-le p1, v7, :cond_4

    div-int/2addr v7, v5

    goto :goto_0

    :cond_4
    div-int/lit8 v7, p1, 0x2

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {}, Landroidx/reflect/view/SeslViewRuneReflector;->supportFoldableNoSubDisplay()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_7

    .line 16
    iget p1, v0, Landroid/graphics/Point;->y:I

    iget v7, v0, Landroid/graphics/Point;->x:I

    if-le p1, v7, :cond_6

    div-int/2addr p1, v5

    move v7, p1

    goto :goto_0

    :cond_6
    div-int/2addr v7, v5

    goto :goto_0

    :cond_7
    move v7, v4

    .line 17
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "center = "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " , anchor top = "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v6, v1

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_d

    .line 18
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Landroidx/appcompat/R$dimen;->sesl_menu_popup_top_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 19
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v8, Landroidx/appcompat/R$dimen;->sesl_menu_popup_bottom_margin:I

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aget v8, v6, v1

    if-le v7, v8, :cond_8

    aget p0, v6, v1

    sub-int/2addr v7, p0

    sub-int/2addr v7, p1

    sub-int v2, v7, v2

    goto/16 :goto_2

    .line 20
    :cond_8
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    if-eqz v8, :cond_9

    .line 21
    invoke-interface {v8}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v8

    invoke-virtual {p0, v8}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    .line 23
    iget v8, p0, Landroid/graphics/Insets;->bottom:I

    .line 24
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "systemBar insets = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 25
    :cond_9
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "navigation_bar_height"

    const-string v10, "dimen"

    const-string v11, "android"

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_a

    .line 26
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto :goto_1

    :cond_a
    move v8, v4

    .line 27
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "navigationBarHeight = "

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget p0, v6, v1

    sub-int/2addr p0, v7

    sub-int v3, v7, v8

    .line 28
    div-int/2addr v3, v5

    if-le p0, v3, :cond_b

    move v4, v1

    :cond_b
    if-eqz v4, :cond_c

    aget p0, v6, v1

    sub-int/2addr p0, v7

    sub-int/2addr p0, p1

    sub-int v2, p0, v2

    goto :goto_2

    .line 29
    :cond_c
    iget p0, v0, Landroid/graphics/Point;->y:I

    aget v0, v6, v1

    sub-int/2addr p0, v0

    sub-int/2addr p0, p1

    sub-int/2addr p0, v2

    sub-int v2, p0, v8

    :cond_d
    :goto_2
    return v2
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
    .locals 1

    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$1;-><init>(Landroidx/appcompat/widget/ListPopupWindow;Landroid/view/View;)V

    return-object v0
.end method

.method createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 0

    new-instance p0, Landroidx/appcompat/widget/DropDownListView;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public dismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    iput-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mResizePopupRunnable:Landroidx/appcompat/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public getAnimationStyle()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result p0

    return p0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    return p0
.end method

.method public getHorizontalOffset()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return p0
.end method

.method public getInputMethodMode()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p0

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    return-object p0
.end method

.method public getPromptPosition()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    return p0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result p0

    return p0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getSoftInputMode()I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getSoftInputMode()I

    move-result p0

    return p0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    return p0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return p0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isModal()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    return p0
.end method

.method public isShowing()Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 5
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 6
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 7
    iget-object v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    if-eqz v4, :cond_3

    .line 8
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v6, v1

    goto :goto_0

    .line 9
    :cond_1
    iget-object v6, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v6, v1, v3}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    :goto_0
    if-eqz v5, :cond_2

    .line 10
    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    .line 11
    :cond_2
    iget-object v5, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v5, v4, v1}, Landroidx/appcompat/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v4

    :goto_1
    move v5, v6

    move v6, v4

    :cond_3
    const/16 v4, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v4, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v7, 0x14

    if-nez v2, :cond_6

    if-ne p1, v7, :cond_6

    if-lt v0, v6, :cond_6

    .line 12
    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    .line 13
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 14
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return v3

    .line 15
    :cond_6
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v8, v1}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 16
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v8, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 17
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 18
    iget-object p2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 19
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    if-eq p1, v4, :cond_7

    if-eq p1, v7, :cond_7

    const/16 p0, 0x17

    if-eq p1, p0, :cond_7

    const/16 p0, 0x42

    if-eq p1, p0, :cond_7

    const/16 p0, 0xa0

    if-eq p1, p0, :cond_7

    goto :goto_2

    :cond_7
    return v3

    :cond_8
    if-eqz v2, :cond_9

    if-ne p1, v7, :cond_9

    if-ne v0, v6, :cond_a

    return v3

    :cond_9
    if-nez v2, :cond_a

    if-ne p1, v4, :cond_a

    if-ne v0, v5, :cond_a

    return v3

    :cond_a
    :goto_2
    return v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v1

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 9
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    :cond_0
    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public performItemClick(I)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 4
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 6
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public postShow()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public seslForceShowUpper(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    return-void
.end method

.method public seslSetAllowScrollingAnchorParent(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatPopupWindow;->seslSetAllowScrollingAnchorParent(Z)V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroidx/appcompat/widget/ListPopupWindow;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p1, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    if-eqz p1, :cond_3

    .line 8
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setWidth(I)V

    :goto_0
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    return-void
.end method

.method public setIsOverflowPopup(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mIsOverflowPopup:Z

    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mListItemExpandMaximum:I

    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setModal(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    .line 2
    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptPosition:I

    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->removePromptView()V

    .line 3
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/ListView;->getChoiceMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v0, p1, p0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    return-void
.end method

.method public show()V
    .locals 14

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 3
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v2, v3}, Landroidx/core/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 4
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatPopupWindow;->seslSetAllowScrollingAnchorParent(Z)V

    .line 5
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_d

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 7
    :cond_0
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 9
    :cond_2
    :goto_0
    iget v7, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_7

    if-eqz v1, :cond_3

    move v7, v0

    goto :goto_1

    :cond_3
    move v7, v6

    :goto_1
    if-eqz v1, :cond_5

    .line 10
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v3, v6, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 11
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    .line 12
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v3, v6, :cond_6

    move v3, v6

    goto :goto_3

    :cond_6
    move v3, v5

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 13
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_4

    :cond_7
    if-ne v7, v3, :cond_8

    move v7, v0

    .line 14
    :cond_8
    :goto_4
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget-boolean v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_9

    iget-boolean v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_9

    goto :goto_5

    :cond_9
    move v4, v5

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 15
    iget v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 16
    iget-boolean v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceShowUpper:Z

    if-eqz v3, :cond_a

    sub-int/2addr v1, v0

    .line 17
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    if-nez v0, :cond_a

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    :cond_a
    move v11, v1

    .line 19
    iget-object v8, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    if-gez v2, :cond_b

    move v12, v6

    goto :goto_6

    :cond_b
    move v12, v2

    :goto_6
    if-gez v7, :cond_c

    move v13, v6

    goto :goto_7

    :cond_c
    move v13, v7

    :goto_7
    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/widget/AppCompatPopupWindow;->update(Landroid/view/View;IIII)V

    goto/16 :goto_b

    .line 20
    :cond_d
    iget v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v1, v6, :cond_e

    move v1, v6

    goto :goto_8

    :cond_e
    if-ne v1, v3, :cond_f

    .line 21
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 22
    :cond_f
    :goto_8
    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v2, v6, :cond_10

    move v0, v6

    goto :goto_9

    :cond_10
    if-ne v2, v3, :cond_11

    goto :goto_9

    :cond_11
    move v0, v2

    .line 23
    :goto_9
    invoke-direct {p0}, Landroidx/appcompat/widget/ListPopupWindow;->setBlurEffect()V

    .line 24
    iget-object v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 25
    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 26
    invoke-direct {p0, v4}, Landroidx/appcompat/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_12

    goto :goto_a

    :cond_12
    move v4, v5

    :goto_a
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 28
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mTouchInterceptor:Landroidx/appcompat/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 29
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v0, :cond_13

    .line 30
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget-boolean v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-static {v0, v1}, Landroidx/core/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 31
    :cond_13
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    iget-object v1, p0, Landroidx/appcompat/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    .line 32
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v4, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 33
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 34
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mDropDownList:Landroidx/appcompat/widget/DropDownListView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 35
    :cond_14
    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->clearListSelection()V

    .line 36
    :cond_15
    iget-boolean v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_16

    .line 37
    iget-object v0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/ListPopupWindow;->mHideSelector:Landroidx/appcompat/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    :goto_b
    return-void
.end method
