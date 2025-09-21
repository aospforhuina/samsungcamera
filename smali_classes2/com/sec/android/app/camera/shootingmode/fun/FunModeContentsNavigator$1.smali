.class Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FunModeContentsNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->l()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScrollStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const/4 p1, -0x1

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->f(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/SnapHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->d(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->h(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)I

    move-result p2

    if-eq p2, p1, :cond_1

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p2, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->k(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->g(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;->onContentsSnapped(I)V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->f(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/SnapHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->d(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->d(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemViewType(Landroid/view/View;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->b(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->a(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_1
    if-eqz v0, :cond_4

    .line 6
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->l()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FocusChanged, position : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", itemViewType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v3, v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->j(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;I)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v3, v2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->i(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;I)V

    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 10
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v3}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->f(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/SnapHelper;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    aget v0, v0, v4

    if-ltz v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    .line 11
    :goto_1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->g(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$SnapListener;->onLensSelected(I)V

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->d(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getReverseLayout()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_6

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    .line 14
    :goto_2
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$1;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_6
    return-void
.end method
