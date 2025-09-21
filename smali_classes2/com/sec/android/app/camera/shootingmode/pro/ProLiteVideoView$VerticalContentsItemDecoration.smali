.class Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ProLiteVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VerticalContentsItemDecoration"
.end annotation


# instance fields
.field private final ITEM_BOTTOM_MARGIN:I

.field private final PRO_CONTROL_PANEL_PADDING:I

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->PRO_CONTROL_PANEL_PADDING:I

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0704e7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->ITEM_BOTTOM_MARGIN:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;Lcom/sec/android/app/camera/shootingmode/pro/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    invoke-static {p4}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 2
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result p3

    if-eqz p3, :cond_3

    if-nez p2, :cond_1

    .line 4
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->PRO_CONTROL_PANEL_PADDING:I

    invoke-virtual {p1, v1, v1, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_1
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_2

    .line 5
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->PRO_CONTROL_PANEL_PADDING:I

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->ITEM_BOTTOM_MARGIN:I

    invoke-virtual {p1, v1, p2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 6
    :cond_2
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->ITEM_BOTTOM_MARGIN:I

    invoke-virtual {p1, v1, v1, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 7
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->PRO_CONTROL_PANEL_PADDING:I

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->ITEM_BOTTOM_MARGIN:I

    invoke-virtual {p1, v1, p2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_5

    .line 8
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->PRO_CONTROL_PANEL_PADDING:I

    invoke-virtual {p1, v1, v1, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 9
    :cond_5
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$VerticalContentsItemDecoration;->ITEM_BOTTOM_MARGIN:I

    invoke-virtual {p1, v1, v1, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
