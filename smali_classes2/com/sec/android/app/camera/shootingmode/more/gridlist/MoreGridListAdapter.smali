.class public Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MoreGridListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$GridListItemDragEventListener;,
        Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;,
        Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ItemClickListener;,
        Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$DragEnterListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private MORE_ITEM_FIXED_TYPE:I

.field private MORE_ITEM_NORMAL_TYPE:I

.field private final mContext:Landroid/content/Context;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;"
        }
    .end annotation
.end field

.field private mDragEnterListener:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$DragEnterListener;

.field private mDraggingCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

.field private mIsEditMode:Z

.field private mItemClickListener:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ItemClickListener;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDraggingCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->MORE_ITEM_NORMAL_TYPE:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->MORE_ITEM_FIXED_TYPE:I

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;ILcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;Lx5/e$b;Lo5/y2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->lambda$onBindViewHolder$0(ILcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;Lx5/e$b;Lo5/y2;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->MORE_ITEM_NORMAL_TYPE:I

    return p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;)Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$DragEnterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDragEnterListener:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$DragEnterListener;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    return p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;)Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mItemClickListener:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ItemClickListener;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDraggingCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->startDragAndDrop(Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(ILcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;Lx5/e$b;Lo5/y2;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDraggingCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :goto_0
    iget-object v0, p4, Lo5/y2;->c:Landroid/widget/ImageView;

    invoke-virtual {p3}, Lx5/e$b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5
    iget-object v0, p4, Lo5/y2;->d:Landroid/widget/TextView;

    invoke-virtual {p3}, Lx5/e$b;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Lx5/e$b;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$1;

    invoke-direct {v1, p0, p3, p4}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$1;-><init>(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;Lx5/e$b;Lo5/y2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->isFixedItem(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p4, Lo5/y2;->c:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->setDim(Landroid/view/View;Z)V

    .line 10
    iget-object p1, p4, Lo5/y2;->d:Landroid/widget/TextView;

    iget-boolean p4, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->setDim(Landroid/view/View;Z)V

    .line 11
    :cond_1
    iget-object p0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;

    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->setResourceIdSet(Lx5/e$b;)V

    return-void
.end method

.method private setDim(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const p0, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private startDragAndDrop(Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p0, Landroid/content/ClipData$Item;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Landroid/content/ClipData;

    const-string/jumbo v1, "text/plain"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "grid_item_view"

    invoke-direct {v0, v2, v1, p0}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    const/16 p0, 0x200

    .line 3
    invoke-virtual {p2, v0, p1, p2, p0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method


# virtual methods
.method public addItem(Lcom/sec/android/app/camera/interfaces/CommandId;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDraggingCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method

.method public containData(Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getItem(I)Lcom/sec/android/app/camera/interfaces/CommandId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CommandId;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemPosition(Lcom/sec/android/app/camera/interfaces/CommandId;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->isFixedItem(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->MORE_ITEM_FIXED_TYPE:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->MORE_ITEM_NORMAL_TYPE:I

    :goto_0
    return p0
.end method

.method public getModeString()Ljava/lang/String;
    .locals 12

    .line 1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    const/4 v0, 0x0

    move v10, v0

    move v11, v9

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->getItemCount()I

    move-result v0

    if-ge v10, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShortcutInfo(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/util/CameraShootingMode$ShortcutInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShortcutInfo;->getCommandId()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShortcutInfo;->isFrontFacingSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShortcutInfo;->isBackFacingSupported()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/CameraShootingMode$ShortcutInfo;->getInformationOrder()Ljava/lang/Integer;

    move-result-object v7

    move-object v0, v8

    move-object v4, v5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/CameraShootingMode;->strAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v11, v9

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isFixedItem(Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_EXPERT_RAW:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->onBindViewHolder(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lx5/e;->b(Lcom/sec/android/app/camera/interfaces/CommandId;)Lx5/e$b;

    move-result-object v0

    .line 3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/databinding/DataBindingUtil;->bind(Landroid/view/View;)Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lo5/y2;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/shootingmode/more/gridlist/a;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/a;-><init>(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;ILcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;Lx5/e$b;)V

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public removeItem(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public resetData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDataList:Ljava/util/List;

    return-void
.end method

.method public resetFlag()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->EMPTY:Lcom/sec/android/app/camera/interfaces/CommandId;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDraggingCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    return-void
.end method

.method public setButtonClickListener(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mItemClickListener:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$ItemClickListener;

    return-void
.end method

.method public setDragEnterListener(Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$DragEnterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mDragEnterListener:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter$DragEnterListener;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListAdapter;->mIsEditMode:Z

    return-void
.end method
