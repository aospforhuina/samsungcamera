.class public Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LensAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;,
        Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPopupLensListener:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;

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

    const-string v0, "LensAdapter"

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapPosition:I

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapList:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mPopupLensListener:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapList:Ljava/util/ArrayList;

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
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->onBindViewHolder(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;I)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Bind View Holder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->t(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapList:Ljava/util/ArrayList;

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

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mMoreLensThumbnail:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/i;->t0(Landroid/widget/ImageView;)Lr0/i;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v0}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getPreview()Lcom/snap/camerakit/lenses/LensesComponent$Lens$Preview;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->t(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapList:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v2}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getPreview()Lcom/snap/camerakit/lenses/LensesComponent$Lens$Preview;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/j;->r(Ljava/lang/String;)Lcom/bumptech/glide/i;

    move-result-object v0

    new-instance v2, Lq0/f;

    invoke-direct {v2}, Lq0/f;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Lx/m;

    const/4 v4, 0x0

    new-instance v5, Lh0/i;

    invoke-direct {v5}, Lh0/i;-><init>()V

    aput-object v5, v3, v4

    new-instance v4, Lh0/z;

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07018f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v4, v5}, Lh0/z;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Lq0/a;->g0([Lx/m;)Lq0/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->j0(Lq0/a;)Lcom/bumptech/glide/i;

    move-result-object v0

    const v2, 0x7f0806f6

    .line 12
    invoke-virtual {v0, v2}, Lq0/a;->T(I)Lq0/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    iget-object v2, p1, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mMorePreviewThumbnail:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/i;->t0(Landroid/widget/ImageView;)Lr0/i;

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mLensName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {v2}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mMoreLensThumbnail:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 16
    iget-object p1, p1, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mMorePreviewThumbnail:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/snap/camerakit/lenses/LensesComponent$Lens;

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->TAG:Ljava/lang/String;

    const-string v0, "Create View Holder"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00f7

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setPopupLensClickListener(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mPopupLensListener:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;

    return-void
.end method

.method public setSnappedPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->mSnapPosition:I

    return-void
.end method
