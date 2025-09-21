.class public Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "ItemDragDropHelperCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemDragDropHelperCallback"


# instance fields
.field private mIsItemMoving:Z

.field private final mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;->canDropOver(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;->onItemDragEnd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;->canDropOver(I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    sget-object p0, Lu3/b;->b:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/16 p0, 0x30

    goto :goto_0

    :cond_1
    move p0, p1

    .line 3
    :goto_0
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    int-to-float p0, p3

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    mul-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 10

    move-object v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mIsItemMoving:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;->onItemMove(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mItemDragDropEventListener:Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback$ItemDragDropEventListener;->onItemDragStart(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/dragdrop/ItemDragDropHelperCallback;->mIsItemMoving:Z

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
