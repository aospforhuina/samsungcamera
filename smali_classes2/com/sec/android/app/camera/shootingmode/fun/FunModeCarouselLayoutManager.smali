.class public Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "FunModeCarouselLayoutManager.java"


# static fields
.field private static final SHRINK_AMOUNT:F = 0.6f

.field private static final SHRINK_DISTANCE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FunModeCarouselLayoutManager"


# instance fields
.field private final mFocusedScaleSize:F

.field private final mUnfocusedScaleSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07019e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07003d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07019c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    div-float/2addr p2, p3

    .line 5
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mUnfocusedScaleSize:F

    div-float/2addr p1, p3

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mFocusedScaleSize:F

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Recycler view error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FunModeCarouselLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, p2, v2

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, p3

    sub-float v5, p2, v5

    .line 7
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, -0x40e66666    # -0.6f

    sub-float/2addr v5, v0

    mul-float/2addr v6, v5

    sub-float v5, v3, v0

    div-float/2addr v6, v5

    add-float/2addr v6, v2

    .line 8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mFocusedScaleSize:F

    mul-float/2addr v6, v5

    .line 9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mUnfocusedScaleSize:F

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    :cond_0
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mUnfocusedScaleSize:F

    .line 11
    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    .line 12
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    return v1
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, p2, v2

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 5
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, p3

    sub-float v5, p2, v5

    .line 7
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const v6, -0x40e66666    # -0.6f

    sub-float/2addr v5, v0

    mul-float/2addr v6, v5

    sub-float v5, v3, v0

    div-float/2addr v6, v5

    add-float/2addr v6, v2

    .line 8
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mFocusedScaleSize:F

    mul-float/2addr v6, v5

    .line 9
    iget v5, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mUnfocusedScaleSize:F

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_0

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    :cond_0
    iget v6, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeCarouselLayoutManager;->mUnfocusedScaleSize:F

    .line 11
    :cond_1
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleX(F)V

    .line 12
    invoke-virtual {v4, v6}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    return v1
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
