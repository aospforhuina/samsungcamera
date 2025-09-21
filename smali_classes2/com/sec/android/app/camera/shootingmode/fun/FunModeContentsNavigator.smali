.class public Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FunModeContentsNavigator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$ContentsItemDecoration;,
        Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;
    }
.end annotation


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 100.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFocusItemViewType:I

.field private mFocusPosition:I

.field private mIsScrollEnabled:Z

.field private mIsScrollToPosition:Z

.field private mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mOrientation:F

.field private mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

.field private mSnapHelper:Landroidx/recyclerview/widget/SnapHelper;

.field private mSnapListener:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;

.field private mSnapPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapPosition:I

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusPosition:I

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusItemViewType:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollToPosition:Z

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollEnabled:Z

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mOrientation:F

    .line 8
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->initView(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 11
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapPosition:I

    .line 12
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusPosition:I

    .line 13
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusItemViewType:I

    const/4 p2, 0x0

    .line 14
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollToPosition:Z

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollEnabled:Z

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mOrientation:F

    .line 17
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->initView(Landroid/content/Context;Z)V

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusItemViewType:I

    return p0
.end method

.method static synthetic access$001(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusPosition:I

    return p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollEnabled:Z

    return p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)F
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mOrientation:F

    return p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/SnapHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapHelper:Landroidx/recyclerview/widget/SnapHelper;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapListener:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapPosition:I

    return p0
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusItemViewType:I

    return-void
.end method

.method private initView(Landroid/content/Context;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/recyclerview/widget/LinearSnapHelper;

    invoke-direct {v0}, Landroidx/recyclerview/widget/LinearSnapHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapHelper:Landroidx/recyclerview/widget/SnapHelper;

    .line 2
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$2;

    .line 4
    invoke-direct {v0, p0, p1, p2, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$2;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 5
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$ContentsItemDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$ContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Lcom/sec/android/app/camera/shootingmode/fun/f;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 8
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$3;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$4;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$4;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    const/4 p1, 0x0

    .line 10
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->updateSidePadding(ZZ)V

    .line 11
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$5;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$5;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mFocusPosition:I

    return-void
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapPosition:I

    return-void
.end method

.method static bridge synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateSidePadding(ZZ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070199

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07003d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public changeToScrolledPosition(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeToScrolledPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollToPosition:Z

    return-void
.end method

.method public fling(II)Z
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p0

    return p0
.end method

.method public getSnapPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapPosition:I

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollToPosition:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 4
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollToPosition:Z

    :cond_0
    return-void
.end method

.method public onOrientationChanged(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mOrientation:F

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mOrientation:F

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mIsScrollEnabled:Z

    return-void
.end method

.method public setSnap(IZ)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapPosition:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSnap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isUserClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSmoothScroller:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSnapListener(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->mSnapListener:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;

    return-void
.end method
