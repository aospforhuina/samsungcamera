.class public Lcom/sec/android/app/camera/shootingmode/more/MoreView;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;
.source "MoreView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/more/MoreContract$View;
.implements Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView$ListEmptyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/more/MoreView$LinearViewDragEventListener;,
        Lcom/sec/android/app/camera/shootingmode/more/MoreView$GridAreaDragEventListener;,
        Lcom/sec/android/app/camera/shootingmode/more/MoreView$GestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView<",
        "Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/more/MoreContract$View;",
        "Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView$ListEmptyListener;"
    }
.end annotation


# static fields
.field private static final EDIT_TIP_APPEAR_DURATION:J = 0x1b58L


# instance fields
.field private mDropFinished:Z

.field private mGridListGestureDetector:Landroid/view/GestureDetector;

.field private mIsArZonePackageExisted:Z

.field private mIsArZoneSupported:Z

.field private mIsBixbyVisionPackageExisted:Z

.field private mIsBixbyVisionSupported:Z

.field private mIsDecoPicPackageExisted:Z

.field private mIsDecoPicSupported:Z

.field private mIsMoreDragBoxDisappearing:Z

.field private mIsSecureCamera:Z

.field private mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

.field private mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

.field private final mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

.field private mViewBinding:Lo5/j5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/shootingmode/more/k;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/k;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    return-object p0
.end method

.method private changeGridToLinear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->changeGridToLinear(I)V

    return-void
.end method

.method private checkMoreDragBoxMode(Landroid/view/DragEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setGridMode()V

    .line 3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 4
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p1}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p1}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->addItemToLast(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->changeLinearToGrid()V

    :cond_1
    return-void
.end method

.method private findAbovePosition(I)Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 3
    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDeltaHeight()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0702a5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v1, p0

    .line 7
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 8
    invoke-static {p0, p0}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private findBelowPosition(I)Landroid/graphics/Point;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3
    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDeltaHeight()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0702a5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr v1, p0

    .line 7
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 8
    invoke-static {p0, p0}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private findDefaultAccessibilityView()Landroid/view/View;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsSecureCamera:Z

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsBixbyVisionSupported:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->n:Landroid/widget/Button;

    return-object p0

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZoneSupported:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->k:Landroid/widget/Button;

    return-object p0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getCenterPosX(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private getDragBoxHeight(Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070791

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method private getGridModeViewDropPosition(I)Landroid/graphics/Point;
    .locals 2

    const/4 v0, 0x0

    .line 4
    invoke-static {v0, v0}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->findAbovePosition(I)Landroid/graphics/Point;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->findBelowPosition(I)Landroid/graphics/Point;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getGridModeViewDropPosition(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDeltaHeight()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0702a5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    .line 3
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private getParentPosX()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    return p0
.end method

.method private getParentPosY()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result p0

    return p0
.end method

.method private getRotationAngle()F
    .locals 1

    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$startDragAreaGroupLinearModeAnimation$12(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method private handleDragLocationAction(Landroid/view/DragEvent;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->isGridMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f070791

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p2

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1, p1, v0, p2}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getScrollPositionInLinearMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getScrollPositionInGridMode(Landroid/view/DragEvent;ILandroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object p2

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 12
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->translateDragBoxForDragLocationAction(FF)V

    return-void
.end method

.method private handleDragStartedAction(Landroid/view/DragEvent;Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->onDragStarted()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->makeDragBox()V

    .line 3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->setDragDropBoxViewType(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setDraggingViewPosition(FF)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->getDragBoxHeight(Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setDraggingViewSize(II)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->getParentPosX()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->getParentPosY()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setDraggingViewParentPosition(II)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setDraggingViewParentSize(II)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setDraggingViewResourceIdSet(Lx5/e$b;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->initialize()V

    const/4 p1, 0x4

    .line 10
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDragBoxLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->startDragBoxStartAnimation()V

    return-void
.end method

.method private handleDropAction(Landroid/view/DragEvent;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTranslationX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v0

    sub-float/2addr v2, v0

    float-to-int v0, v2

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDraggingViewResourceIdSet()Lx5/e$b;

    move-result-object v2

    invoke-virtual {v2}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->isLinearMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->handleDropActionInLinearMode(Landroid/view/DragEvent;IILcom/sec/android/app/camera/interfaces/CommandId;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v1, v0, v2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->handleDropActionInGridMode(IILcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    const/high16 v0, -0x1000000

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06024e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v4, v2

    .line 10
    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->changeColor(IIJ)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->changeBackgroundAlpha(FFJ)V

    return-void
.end method

.method private handleDropActionInGridMode(IILcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->findViewByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1, v1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->getGridModeViewDropPosition(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result v0

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->getGridModeViewDropPosition(I)Landroid/graphics/Point;

    move-result-object v1

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->removeItemForDragging(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    .line 9
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget v0, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p2

    int-to-float p2, v0

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    const v3, 0x3f933333    # 1.15f

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    .line 13
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0052

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/more/o;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/more/o;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/more/e;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/camera/shootingmode/more/e;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private handleDropActionInLinearMode(Landroid/view/DragEvent;IILcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p4}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->findViewByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/view/View;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v2, v2, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getMotionEventGetX(IILandroid/view/DragEvent;)F

    move-result p1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDeltaWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, p4, p1, v3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;FI)Landroid/util/Pair;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDropPositionXInLinearMode(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    iget-object v3, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDropPositionYInLinearMode(II)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDropPositionXInLinearMode(Landroid/view/View;)I

    move-result p1

    add-int/2addr v1, p1

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->getDropPositionYInLinearMode(Landroid/view/View;)I

    move-result p1

    :goto_0
    add-int/2addr v2, p1

    move v7, v1

    move v8, v2

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 9
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->startDragAreaGroupLinearModeAnimation(IILcom/sec/android/app/camera/interfaces/CommandId;II)V

    return-void
.end method

.method private hideViewWithAnimation(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0056

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/m;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/m;-><init>(Landroid/view/View;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$updateOrientation$5(Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V

    return-void
.end method

.method private inflateLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/j5;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/j5;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    .line 3
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    invoke-static {v0, v1}, Lv5/a;->a(Landroid/content/Context;Landroidx/viewbinding/ViewBinding;)Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->setRotateAction(Lcom/sec/android/app/camera/widget/RotatableConstraintLayout$b;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->inflateLayout()V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->setMoreViewLayout(Z)V

    return-void
.end method

.method private initializeGridListGestureManager()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/more/MoreView$GestureListener;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView$GestureListener;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mGridListGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private initializeList()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initializeMoreLinearList()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initializeMoreGridList()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/MoreView$GridAreaDragEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView$GridAreaDragEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/shootingmode/more/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/more/l;->a:Lcom/sec/android/app/camera/shootingmode/more/l;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/MoreView$LinearViewDragEventListener;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView$LinearViewDragEventListener;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/shootingmode/more/t;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->setListEmptyListener(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView$ListEmptyListener;)V

    return-void
.end method

.method private initializeMoreGridList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->getMoreGridListPresenter(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListContract$View;)Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListContract$Presenter;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->initialize()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initializeGridListGestureManager()V

    return-void
.end method

.method private initializeMoreLinearList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->getMoreLinearListPresenter(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$View;)Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;

    move-result-object p0

    .line 3
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->initialize()V

    return-void
.end method

.method private initializeSaveButton()V
    .locals 4

    .line 1
    sget-object v0, Lu3/h;->s:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->getRotationAngle()F

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isHighlightButtonsOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060050

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0806f5

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060055

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mOnTouchListenerForRippleEffect:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/d;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/more/d;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$handleDropActionInGridMode$7(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$changeEditMode$1(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$changeEditMode$1(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$handleDropActionInGridMode$6()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsMoreDragBoxDisappearing:Z

    return-void
.end method

.method private synthetic lambda$handleDropActionInGridMode$7(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->showDraggingItem(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsMoreDragBoxDisappearing:Z

    return-void
.end method

.method private static synthetic lambda$hideViewWithAnimation$8(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$initialize$2(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsBixbyVisionSupported:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$initializeList$9(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initializeSaveButton$10(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getModeString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->getModeString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->onSaveButtonClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->s:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    :goto_0
    return p2
.end method

.method private synthetic lambda$showEditSmartTip$3()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->d:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showOverlayView$4()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->setOverlayViewVisibility(Z)V

    return-void
.end method

.method private synthetic lambda$startDragAreaGroupLinearModeAnimation$11()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsMoreDragBoxDisappearing:Z

    return-void
.end method

.method private synthetic lambda$startDragAreaGroupLinearModeAnimation$12(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->showDraggingItem(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsMoreDragBoxDisappearing:Z

    return-void
.end method

.method private synthetic lambda$startDragAreaGroupLinearModeAnimation$13(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/r;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/r;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateOrientation$5(Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$initializeSaveButton$10(Landroid/view/View;)V

    return-void
.end method

.method private makeDragBox()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBoxFactory;->makeMoreDragBox(Landroid/content/Context;I)Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$startDragAreaGroupLinearModeAnimation$11()V

    return-void
.end method

.method public static synthetic o(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$initializeList$9(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$handleDropActionInGridMode$6()V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$initialize$2(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic r(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$hideViewWithAnimation$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$showEditSmartTip$3()V

    return-void
.end method

.method private setDragDropBoxViewType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "grid_item_view"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setGridMode()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->setLinearMode()V

    :goto_0
    return-void
.end method

.method private setMoreViewLayout(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p1

    float-to-int p1, p1

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->setOrientation(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->SET_MORE_VIEW_LAYOUT:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v2, v0, v1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->v:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lu3/g;->b:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->b:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lu3/g;->k:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->v:Landroidx/constraintlayout/widget/Guideline;

    sget-object v0, Lu3/g;->k:Lu3/g;

    invoke-static {v0}, Lu3/d;->a(Lu3/g;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->k:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->n:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setReverseLandscapeChain()V
    .locals 7

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v4, v4, Lo5/j5;->v:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v6, 0x7

    invoke-virtual {v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 12
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    .line 17
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 18
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v2, v2, Lo5/j5;->v:Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private showTopHelpText()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->w:Landroid/widget/TextView;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0055

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0050

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5
    new-instance v1, Lcom/sec/android/app/camera/util/interpolator/CustomPath;

    const v6, 0x3e6147ae    # 0.22f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v1, v6, v5, v5, v7}, Lcom/sec/android/app/camera/util/interpolator/CustomPath;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->w:Landroid/widget/TextView;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-static {v1, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0056

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v7, v5

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v7, v3

    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 9
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->w:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v2

    .line 12
    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showViewWithAnimation(Landroid/view/View;)V
    .locals 6

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;JJ)V

    return-void
.end method

.method private showViewWithAnimation(Landroid/view/View;J)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;JJ)V

    return-void
.end method

.method private showViewWithAnimation(Landroid/view/View;JJ)V
    .locals 0

    const/4 p0, 0x0

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    .line 5
    invoke-virtual {p1, p0}, Landroid/view/View;->setClickable(Z)V

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 8
    invoke-virtual {p0, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 10
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startDragAreaGroupLinearModeAnimation(IILcom/sec/android/app/camera/interfaces/CommandId;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->removeItemForDragging(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sub-int/2addr p4, p1

    int-to-float p1, p4

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sub-int/2addr p5, p2

    int-to-float p2, p5

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lu4/e;

    invoke-direct {p2}, Lu4/e;-><init>()V

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f0b009d

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p4, p2

    invoke-virtual {p1, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/more/n;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/shootingmode/more/n;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/shootingmode/more/f;

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/camera/shootingmode/more/f;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private startDragBoxStartAnimation()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f866666    # 1.05f

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

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

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06024e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    const/high16 v5, -0x1000000

    .line 9
    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->changeColor(IIJ)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b009d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, p0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;->changeAlpha(FFJ)V

    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$showOverlayView$4()V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->lambda$startDragAreaGroupLinearModeAnimation$13(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method private updateRippleEffectViewLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    const/4 v3, 0x0

    .line 3
    sget-object v4, Lcom/sec/android/app/camera/interfaces/UpdaterViewId;->UPDATE_RIPPLE_EFFECT_VIEW_LAYOUT:Lcom/sec/android/app/camera/interfaces/UpdaterViewId;

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;->updateViews([Lcom/sec/android/app/camera/interfaces/UpdaterViewId;)V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    const/high16 v2, 0x42b40000    # 90.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v1

    const/high16 v2, -0x3d4c0000    # -90.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 5
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v2, v2, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v2

    if-ge v1, v2, :cond_3

    move v1, v2

    .line 8
    :cond_3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 9
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static bridge synthetic v(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)Lo5/j5;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->changeGridToLinear()V

    return-void
.end method

.method static bridge synthetic y(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Landroid/view/DragEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->checkMoreDragBoxMode(Landroid/view/DragEvent;)V

    return-void
.end method

.method static bridge synthetic z(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->getCenterPosX(Landroid/view/View;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public changeEditMode()V
    .locals 3

    const-string v0, "101"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/h;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/more/h;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;J)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->changeEditMode()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showTopHelpText()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->updateRippleEffectViewLayout()V

    .line 8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsSecureCamera:Z

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->q:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->setOverlayViewVisibility(Z)V

    return-void
.end method

.method public changeNormalMode()V
    .locals 7

    const-string v0, "102"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->setOverlayViewVisibility(Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->changeNormalMode()V

    .line 5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsSecureCamera:Z

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v2, v0, Lo5/j5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;JJ)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->w:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->t:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    return-void
.end method

.method public clear()V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_4

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    goto/16 :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsImmediatelySkipPrevious(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mDropFinished:Z

    if-nez v0, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->handleDropAction(Landroid/view/DragEvent;)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    goto/16 :goto_0

    .line 8
    :cond_3
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mDropFinished:Z

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->handleDropAction(Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mMoreDragBox:Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragBox;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 11
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->handleDragLocationAction(Landroid/view/DragEvent;Landroid/view/View;)V

    .line 12
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 13
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mOrientation:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_6

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->checkMoreDragBoxMode(Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_6
    const/16 v1, -0x5a

    if-ne v0, v1, :cond_7

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    .line 17
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->checkMoreDragBoxMode(Landroid/view/DragEvent;)V

    goto :goto_0

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->checkMoreDragBoxMode(Landroid/view/DragEvent;)V

    goto :goto_0

    :cond_8
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mDropFinished:Z

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->handleDragStartedAction(Landroid/view/DragEvent;Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;)V

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 23
    :cond_9
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public hideMainView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsSecureCamera:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->q:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->hideViewWithAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public inflateView()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initView()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initializeTopButton()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initializeList()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initializeSaveButton()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->q:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/j;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/more/j;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->initialize()V

    return-void
.end method

.method public initializeTopButton()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsSecureCamera:Z

    if-nez v0, :cond_9

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZoneSupported:Z

    if-eqz v2, :cond_0

    const v2, 0x7f12019b

    goto :goto_0

    :cond_0
    const v2, 0x7f120243

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo5/j5;->f(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsBixbyVisionSupported:Z

    const v1, 0x7f0804cd

    const v2, 0x7f0804cf

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZoneSupported:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsDecoPicSupported:Z

    if-eqz v0, :cond_4

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    iget-object v6, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v6, v6, Lo5/j5;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->o:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsBixbyVisionPackageExisted:Z

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->p:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 12
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZoneSupported:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsDecoPicSupported:Z

    if-eqz v0, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_4

    .line 14
    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZonePackageExisted:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsDecoPicPackageExisted:Z

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    .line 15
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->onAttachedToWindow()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->onViewAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->n:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->onBixbyButtonClick()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->k:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->onArZoneButtonClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mGridListGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsMoreDragBoxDisappearing:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onListEmpty()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->r:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onNotListEmpty()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->r:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->onOrientationChanged(I)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->updateRippleEffectViewLayout()V

    return-void
.end method

.method public prepareRotation()Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->saveCurrentOrder()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->onPrepareRotationRequested()V

    const/4 p0, 0x1

    return p0
.end method

.method public refreshLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->refreshLayout(Z)V

    return-void
.end method

.method public refreshLayout(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->inflateLayout()V

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->setMoreViewLayout(Z)V

    .line 4
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->setReverseLandscapeChain()V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRotation()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p1, p1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->initialize()V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreContract$Presenter;->onRefreshLayout()V

    return-void
.end method

.method public refreshModeList()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->refreshList()V

    return-void
.end method

.method public requestDefaultAccessibilityFocus()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->findDefaultAccessibilityView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/more/i;->a:Lcom/sec/android/app/camera/shootingmode/more/i;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetDrag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->resetDrag(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->resetDrag(Ljava/lang/String;)V

    return-void
.end method

.method public saveCurrentOrder()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v1, v1, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getModeString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setOrder(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object p0, p0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;->getModeString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->setMoreOrder(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setSecureMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsSecureCamera:Z

    return-void
.end method

.method public setSupportArZone(ZZ)V
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1
    :goto_1
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZoneSupported:Z

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZonePackageExisted:Z

    return-void
.end method

.method public setSupportBixbyVision(ZZ)V
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1
    :goto_1
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsBixbyVisionSupported:Z

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsBixbyVisionPackageExisted:Z

    return-void
.end method

.method public setSupportDecoPic(ZZ)V
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 1
    :goto_1
    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsDecoPicSupported:Z

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsDecoPicPackageExisted:Z

    return-void
.end method

.method public showEditSmartTip()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/p;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/more/p;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    const-wide/16 v1, 0x1b58

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showMainView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->d:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    .line 3
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsSecureCamera:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsBixbyVisionSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsArZoneSupported:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mIsDecoPicSupported:Z

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->q:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showMoreGridListView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mViewBinding:Lo5/j5;

    iget-object v0, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->showViewWithAnimation(Landroid/view/View;)V

    return-void
.end method

.method public showOverlayView()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/q;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/more/q;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected updateOrientation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->mLayoutUpdater:Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/more/g;-><init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
