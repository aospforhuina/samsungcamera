.class Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "BokehEffectListLayoutManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInitialPosition:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mInitialPosition:I

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->lambda$scrollVerticallyBy$1(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->lambda$scrollHorizontallyBy$0(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$scrollHorizontallyBy$0(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static synthetic lambda$scrollVerticallyBy$1(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mInitialPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 3
    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mInitialPosition:I

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    :goto_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 4
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070071

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070070

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, p3

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07006f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 6
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07006b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    move v6, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 8
    invoke-virtual {p0, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    if-nez v7, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v7}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v8

    check-cast v8, Lo5/q6;

    if-nez v8, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v9, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 11
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getX()F

    move-result v11

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    add-float/2addr v11, v7

    int-to-float v7, p2

    sub-float/2addr v7, v11

    div-float/2addr v7, v9

    .line 12
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v7, v0, v7

    mul-float v9, v3, v7

    add-float/2addr v9, p3

    .line 13
    invoke-static {p3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v10

    .line 14
    iget-object v10, v8, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v10

    invoke-static {v9, v10}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_1

    .line 15
    :cond_2
    iget-object v10, v8, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 16
    iget-object v10, v8, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v10, v9}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 17
    iget-object v9, v8, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    int-to-float v10, v4

    int-to-float v11, v5

    mul-float/2addr v11, v7

    .line 18
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    float-to-int v7, v7

    .line 19
    invoke-virtual {v9, v7, v1, v7, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 20
    iget-object v7, v8, Lo5/q6;->b:Landroid/widget/FrameLayout;

    new-instance v10, Lcom/sec/android/app/camera/shootingmode/portrait/widget/l;

    invoke-direct {v10, v8, v9}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/l;-><init>(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    invoke-virtual {v7, v10}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    .line 4
    iget-object p3, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070071

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float/2addr p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v3, v0, p3

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    move v5, v2

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 7
    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    if-nez v6, :cond_0

    goto/16 :goto_1

    .line 8
    :cond_0
    invoke-static {v6}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v7

    check-cast v7, Lo5/q6;

    if-nez v7, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    .line 10
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v10

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    add-float/2addr v10, v6

    int-to-float v6, p2

    sub-float/2addr v6, v10

    div-float/2addr v6, v8

    .line 11
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v6, v0, v6

    mul-float v8, v3, v6

    add-float/2addr v8, p3

    .line 12
    invoke-static {p3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    .line 13
    iget-object v9, v7, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v9

    invoke-static {v8, v9}, Lcom/sec/android/app/camera/util/Util;->floatEquals(FF)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    iget-object v9, v7, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 15
    iget-object v9, v7, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 16
    iget-object v8, v7, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v9, 0x0

    int-to-float v10, v4

    mul-float/2addr v10, v6

    .line 17
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 18
    invoke-virtual {v8, v2, v6, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 19
    iget-object v6, v7, Lo5/q6;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    iget-object v6, v7, Lo5/q6;->b:Landroid/widget/FrameLayout;

    new-instance v9, Lcom/sec/android/app/camera/shootingmode/portrait/widget/k;

    invoke-direct {v9, v7, v8}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/k;-><init>(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    return p1

    :cond_4
    return v2
.end method

.method setInitialPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->mInitialPosition:I

    return-void
.end method

.method public smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 0

    .line 1
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager$1;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager$1;-><init>(Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;Landroid/content/Context;)V

    .line 2
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 3
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method
