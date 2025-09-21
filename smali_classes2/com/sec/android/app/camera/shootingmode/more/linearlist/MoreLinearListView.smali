.class public Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "MoreLinearListView.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$View;
.implements Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;
.implements Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$DragEnterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MoreLinearListView"


# instance fields
.field private mPresenter:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->initView()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$removeItemForDragging$1(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Z

    move-result p0

    return p0
.end method

.method private addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreLinearListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/j;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/j;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$removeItemForDragging$2(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method public static synthetic c(Ljava/util/ArrayList;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$resetAdapterData$3(Ljava/util/ArrayList;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method private checkAddMiddleAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAddMiddleAreaDragEnterEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreLinearListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v4, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->containBetweenView(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    return v3

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkMoveLeftAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMoveLeftAreaDragEnterEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreLinearListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v0

    .line 5
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    .line 6
    invoke-virtual {v2}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object v3

    invoke-virtual {v3}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    if-ne v3, v0, :cond_2

    int-to-float p1, p1

    .line 7
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getX()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 8
    invoke-direct {p0, p2, v1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->moveItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private checkMoveMiddleAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMoveMiddleAreaDragEnterEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreLinearListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v4, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->containBetweenView(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->moveItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    return v3

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v0
.end method

.method private checkMoveRightAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMoveRightAreaDragEnterEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreLinearListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 5
    :cond_1
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    if-nez v3, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object v5

    invoke-virtual {v5}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v5

    if-ne v5, v1, :cond_3

    .line 8
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getX()F

    move-result v1

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    if-le p1, v1, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->moveItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    return v4

    :cond_3
    :goto_0
    return v2
.end method

.method private containBetween(III)Z
    .locals 0

    if-le p1, p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    new-instance p0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private containBetweenView(Landroid/view/View;Landroid/view/View;I)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    new-instance p2, Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method private containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$moveItem$9(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$onDragEnter$0(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)Lo5/a3;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$showDraggingItem$6(Landroid/view/View;)Lo5/a3;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$moveItem$10(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method private getRightPosition(Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$showDraggingItem$4(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$addItem$8(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const/16 v0, 0x1e

    .line 1
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView$MoreLinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Ljava/lang/Integer;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$showDraggingItem$5(Ljava/lang/Integer;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lo5/a3;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->lambda$showDraggingItem$7(Lo5/a3;)V

    return-void
.end method

.method private static synthetic lambda$addItem$8(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$moveItem$10(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 4

    .line 1
    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result v0

    if-eq v0, p2, :cond_1

    .line 2
    invoke-virtual {p3, v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 3
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    const/4 v1, 0x0

    const v2, 0x7f1203d8

    const/4 v3, 0x1

    if-ge v0, p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    .line 4
    invoke-virtual {p3, p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-virtual {p0, v2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsImmediatelySkipPrevious(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array p3, v3, [Ljava/lang/Object;

    add-int/2addr p2, v3

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    .line 11
    invoke-virtual {p0, v2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsImmediatelySkipPrevious(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$moveItem$9(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onDragEnter$0(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 3

    .line 1
    invoke-virtual {p3, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p3, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result v0

    .line 4
    invoke-virtual {p3, v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 5
    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    if-ge v0, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 6
    :cond_1
    invoke-virtual {p3, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p3, 0x7f1203d8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakTtsImmediatelySkipPrevious(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$removeItemForDragging$1(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Z
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$removeItemForDragging$2(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->setLeftPadding(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->setRightPadding(I)V

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->removeItem(I)V

    .line 6
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method private static synthetic lambda$resetAdapterData$3(Ljava/util/ArrayList;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->resetData(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$showDraggingItem$4(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$showDraggingItem$5(Ljava/lang/Integer;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$showDraggingItem$6(Landroid/view/View;)Lo5/a3;
    .locals 0

    invoke-static {p0}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/a3;

    return-object p0
.end method

.method private static synthetic lambda$showDraggingItem$7(Lo5/a3;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lo5/a3;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lo5/a3;->b:Lcom/sec/android/app/camera/shootingmode/more/itemview/LinearListItemView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lo5/a3;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private moveItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MoreLinearListView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/l;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/l;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;-><init>(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setLeftPadding(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070799

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method private setRightPadding(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070799

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1, v2, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/camera/interfaces/CommandId;FI)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            "FI)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_0

    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->removeItem(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 5
    :cond_1
    new-instance v2, Landroid/util/Range;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_7

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v2, 0x1

    sub-int/2addr p3, v2

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object p2

    invoke-virtual {p2}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p2

    add-int/2addr p2, v2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070799

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    add-int v1, p1, p2

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto/16 :goto_3

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v2, p3, :cond_6

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    float-to-int v3, p2

    invoke-direct {p0, p3, v0, v3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->containBetween(III)Z

    move-result p3

    if-nez p3, :cond_5

    add-int/lit8 p3, v2, -0x1

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getRightPosition(Landroid/view/View;)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-direct {p0, p3, v0, v3}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->containBetween(III)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_5
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    .line 14
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int v1, p1

    .line 15
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    goto :goto_3

    :cond_6
    move p0, v1

    goto :goto_3

    .line 16
    :cond_7
    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object p2

    invoke-virtual {p2}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p2

    .line 17
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p1, p3

    .line 19
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    move p0, v1

    move v1, p1

    .line 20
    :goto_3
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public findViewByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;
    .locals 0

    .line 2
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    return-object p0
.end method

.method public getModeString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->getModeString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public handleLinearViewDragEnterEvent(Landroid/view/DragEvent;I)Z
    .locals 2

    const-string v0, "MoreLinearListView"

    const-string v1, "handleLinearViewDragEnterEvent"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    .line 3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object p1

    invoke-virtual {p1}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->findViewByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->checkMoveRightAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->checkMoveLeftAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->checkMoveMiddleAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    return p0

    .line 8
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->checkAddMiddleAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method public handleLinearViewDragLocationEvent(Landroid/view/DragEvent;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    .line 2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->getResourceIdSet()Lx5/e$b;

    move-result-object p1

    invoke-virtual {p1}, Lx5/e$b;->a()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->findViewByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->checkMoveRightAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->checkMoveLeftAreaDragEnterEvent(ILcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public initialize()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;->onInitialize()V

    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/o;-><init>(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFirstViewHolderWidthChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->setLeftPadding(I)V

    return-void
.end method

.method public onLastViewHolderWidthChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->setRightPadding(I)V

    return-void
.end method

.method public removeItemForDragging(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/k;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/k;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/m;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/m;-><init>(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetAdapterData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/p;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/p;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public resetDrag(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;->onResetDrag(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/r;->a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/r;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->setViewHolderWidthChangeListener(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$ViewHolderWidthChangeListener;)V

    .line 3
    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->setDragEnterListener(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$DragEnterListener;)V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->setPresenter(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->mPresenter:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListContract$Presenter;

    return-void
.end method

.method public showDraggingItem(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->getAdapter()Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/s;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/s;-><init>(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/t;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/t;-><init>(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;)V

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/u;->a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/u;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/q;->a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/q;

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
