.class public Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FunAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FunAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreviousSnapViewHolder:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

.field private mSnapButtonClickListener:Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

.field private mSnapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/snap/camerakit/lenses/LensesComponent$Lens;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/snap/camerakit/lenses/LensesComponent$Lens;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapPosition:I

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapButtonClickListener:Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapPosition:I

    return p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->onBindViewHolder(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;I)V
    .locals 4

    const-string v0, "FunAdapter"

    const-string v1, "Bind View Holder"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->t(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v1}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getIconUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->r(Ljava/lang/String;)Lcom/bumptech/glide/i;

    move-result-object v0

    new-instance v1, Lq0/f;

    invoke-direct {v1}, Lq0/f;-><init>()V

    .line 5
    invoke-virtual {v1}, Lq0/a;->c()Lq0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->j0(Lq0/a;)Lcom/bumptech/glide/i;

    move-result-object v0

    const v1, 0x7f080499

    .line 6
    invoke-virtual {v0, v1}, Lq0/a;->T(I)Lq0/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->t0(Landroid/widget/ImageView;)Lr0/i;

    .line 8
    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 9
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapPosition:I

    if-ne p2, v0, :cond_0

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mPreviousSnapViewHolder:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    .line 11
    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v2}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1205af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v1}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v0}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getGroupId()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/sec/android/app/camera/interfaces/Constants;->FUN_MODE_WIDE_LENS_ID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 14
    iget-object p0, p1, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsUltraWideIndicator:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object p0, p1, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsUltraWideIndicator:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;
    .locals 2

    const-string p2, "FunAdapter"

    const-string v0, "Create View Holder"

    .line 2
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0149

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public onLongPressKey()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapButtonClickListener:Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapPosition:I

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getIconUri()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;->onSnapButtonLongClick(IZLjava/lang/String;)V

    return-void
.end method

.method public setSnapButtonClickListener(Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapButtonClickListener:Lcom/sec/android/app/camera/shootingmode/fun/FunContract$ItemClickListener;

    return-void
.end method

.method public setSnappedPosition(ILcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    const v1, 0x7f1205af

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mPreviousSnapViewHolder:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapPosition:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v2}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mPreviousSnapViewHolder:Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;

    .line 4
    iget-object p2, p2, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v2}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p2, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter$FunViewHolder;->mContentsThumbnail:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    :cond_1
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunAdapter;->mSnapPosition:I

    return-void
.end method
