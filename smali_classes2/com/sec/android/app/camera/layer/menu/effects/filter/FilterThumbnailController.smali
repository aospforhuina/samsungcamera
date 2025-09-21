.class public Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;
.super Ljava/lang/Object;
.source "FilterThumbnailController.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager$EffectThumbnailPreviewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;,
        Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;,
        Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;
    }
.end annotation


# instance fields
.field private final NUM_OF_EFFECT_THUMBNAIL_REQUESTED:I

.field private final TAG:Ljava/lang/String;

.field private mCurrentFilterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterLiveThumbnailObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterThumbnailPreviewListener:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;

.field private final mHandler:Landroid/os/Handler;

.field private final mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

.field private mMaxListPosition:I

.field private mMinListPosition:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FilterThumbnailController"

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterLiveThumbnailObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMinListPosition:I

    const/high16 v0, -0x80000000

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMaxListPosition:I

    .line 6
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mHandler:Landroid/os/Handler;

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    .line 8
    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->getEffectThumbnailCount()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->NUM_OF_EFFECT_THUMBNAIL_REQUESTED:I

    return-void
.end method

.method public static synthetic a(Ln5/l;)Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->lambda$updateAllFilterList$1(Ln5/l;)Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;Ljava/util/HashMap;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->lambda$onEffectThumbnailPreview$0(Ljava/util/HashMap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private getCurrentFilterDBIdArray()[I
    .locals 6

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMinListPosition:I

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->NUM_OF_EFFECT_THUMBNAIL_REQUESTED:I

    iget v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMaxListPosition:I

    sub-int/2addr v2, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sub-int v2, v1, v2

    shr-int/2addr v2, v3

    sub-int/2addr v0, v2

    if-gtz v0, :cond_0

    move v0, v3

    :cond_0
    add-int/2addr v1, v0

    sub-int/2addr v1, v3

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->NUM_OF_EFFECT_THUMBNAIL_REQUESTED:I

    new-array v2, v2, [I

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    invoke-static {v4}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;->a(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;)I

    move-result v4

    aput v4, v2, v5

    :goto_0
    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 6
    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    invoke-static {v5}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;->a(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;)I

    move-result v5

    aput v5, v2, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private synthetic lambda$onEffectThumbnailPreview$0(Ljava/util/HashMap;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterLiveThumbnailObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;

    .line 2
    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;->onLiveThumbnailAvailable(Ljava/util/HashMap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->notifyThumbnailUpdateCompleted()V

    return-void
.end method

.method private static synthetic lambda$updateAllFilterList$1(Ln5/l;)Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;-><init>(Ln5/l;Lcom/sec/android/app/camera/layer/menu/effects/filter/r;)V

    return-object v0
.end method

.method private onItemMoved(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {p0, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private resetListPositions()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMinListPosition:I

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMaxListPosition:I

    return-void
.end method


# virtual methods
.method addLiveThumbnailObserver(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;->c(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;Z)V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMaxListPosition:I

    if-ge v0, p2, :cond_0

    .line 3
    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMaxListPosition:I

    .line 4
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMinListPosition:I

    if-le v0, p2, :cond_1

    .line 5
    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMinListPosition:I

    .line 6
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->getCurrentFilterDBIdArray()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->updateCurrentFilterDBIdArray([I)V

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterLiveThumbnailObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterLiveThumbnailObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method notifyItemMoved(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->onItemMoved(II)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->getCurrentFilterDBIdArray()[I

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->updateCurrentFilterDBIdArray([I)V

    return-void
.end method

.method public onEffectThumbnailPreview(Ljava/util/HashMap;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/p;

    invoke-direct {v1, p0, v0, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/p;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;Ljava/util/HashMap;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEffectThumbnailPreviewStarted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterThumbnailPreviewListener:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;->onEffectThumbnailPreviewStarted()V

    :cond_0
    return-void
.end method

.method removeLiveThumbnailObserver(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;->c(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;Z)V

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMaxListPosition:I

    if-ne v0, p2, :cond_1

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    invoke-static {v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;->b(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMaxListPosition:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMinListPosition:I

    if-ne v0, p2, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge p2, v0, :cond_3

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;

    invoke-static {v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;->b(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterListItemWrapper;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mMinListPosition:I

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 9
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->getCurrentFilterDBIdArray()[I

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->updateCurrentFilterDBIdArray([I)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterLiveThumbnailObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setCameraFacing(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->setCameraFacing(I)V

    return-void
.end method

.method public setThumbnailPreviewStartedListener(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterThumbnailPreviewListener:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;

    return-void
.end method

.method public start(ILandroid/util/Size;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->resetListPositions()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->setEffectThumbnailPreviewListener(Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager$EffectThumbnailPreviewListener;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->start(ILandroid/util/Size;I)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mFilterLiveThumbnailObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->setEffectThumbnailPreviewListener(Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager$EffectThumbnailPreviewListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->stop()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->resetListPositions()V

    return-void
.end method

.method updateAllFilterList(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ln5/l;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/q;->a:Lcom/sec/android/app/camera/layer/menu/effects/filter/q;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mCurrentFilterList:Ljava/util/List;

    return-void
.end method

.method updateFilter(Ln5/l;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->mLiveThumbnailPreviewManager:Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;->updateFilter(Ln5/l;)V

    return-void
.end method
