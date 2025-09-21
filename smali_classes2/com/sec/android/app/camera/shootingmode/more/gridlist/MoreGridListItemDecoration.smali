.class public Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MoreGridListItemDecoration.java"


# instance fields
.field private final mDotSize:F

.field private final mItemCount:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSpace:F

.field private final mSpanCount:I


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mItemCount:I

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpanCount:I

    .line 4
    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpace:F

    .line 5
    iput p4, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mDotSize:F

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mPaint:Landroid/graphics/Paint;

    const/4 p0, -0x1

    .line 7
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p0, 0x1

    .line 8
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 p0, 0x0

    .line 9
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 5

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    sget-object p3, Lu3/b;->b:Lu3/b;

    invoke-static {p3}, Lu3/d;->e(Lu3/b;)Z

    move-result p3

    const/4 p4, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p3, :cond_2

    .line 3
    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpanCount:I

    rem-int v1, p2, p3

    int-to-float v2, v1

    .line 4
    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpace:F

    mul-float/2addr v2, v3

    int-to-float v4, p3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v1, v2

    sub-float v1, v3, v1

    float-to-int v1, v1

    .line 5
    iput v1, p1, Landroid/graphics/Rect;->right:I

    if-lt p2, p3, :cond_0

    div-float v1, v3, v0

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move v1, p4

    .line 6
    :goto_0
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 7
    div-int/2addr p2, p3

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mItemCount:I

    div-int/2addr p0, p3

    if-ne p2, p0, :cond_1

    goto :goto_1

    :cond_1
    div-float/2addr v3, v0

    float-to-int p4, v3

    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 8
    :cond_2
    iget p3, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpanCount:I

    div-int v1, p2, p3

    if-nez v1, :cond_3

    .line 9
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpace:F

    div-float p2, p0, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    div-float p2, p0, v0

    float-to-int p2, p2

    .line 10
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 11
    iput p4, p1, Landroid/graphics/Rect;->top:I

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 12
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 13
    :cond_3
    div-int/2addr p2, p3

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mItemCount:I

    div-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_4

    .line 14
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpace:F

    div-float p2, p0, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    div-float p2, p0, v0

    float-to-int p2, p2

    .line 15
    iput p2, p1, Landroid/graphics/Rect;->right:I

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 16
    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 17
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 18
    :cond_4
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpace:F

    div-float p2, p0, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    div-float p2, p0, v0

    float-to-int p2, p2

    .line 19
    iput p2, p1, Landroid/graphics/Rect;->right:I

    div-float p2, p0, v0

    float-to-int p2, p2

    .line 20
    iput p2, p1, Landroid/graphics/Rect;->top:I

    div-float/2addr p0, v0

    float-to-int p0, p0

    .line 21
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_2
    return-void
.end method

.method public hideGridDot()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 11

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 3
    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpanCount:I

    rem-int v3, v1, v2

    if-nez v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    div-int v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    add-int v4, p3, v2

    add-int/lit8 v4, v4, -0x1

    div-int/2addr v4, v2

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v3, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mDotSize:F

    div-float/2addr v2, v4

    sub-float v6, v3, v2

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mSpace:F

    div-float/2addr v2, v4

    add-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mDotSize:F

    div-float v3, v2, v4

    sub-float v7, v0, v3

    add-float v8, v6, v2

    add-float v9, v7, v2

    .line 9
    iget-object v10, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public showGridDot()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListItemDecoration;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
