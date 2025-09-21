.class public Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LensAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LensViewHolder"
.end annotation


# instance fields
.field mItem:Landroid/view/View;

.field final mLensName:Landroid/widget/TextView;

.field final mMoreLensThumbnail:Landroid/widget/ImageView;

.field final mMorePreviewThumbnail:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mItem:Landroid/view/View;

    const p1, 0x7f0a0339

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mMorePreviewThumbnail:Landroid/widget/ImageView;

    const v0, 0x7f0a0296

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mMoreLensThumbnail:Landroid/widget/ImageView;

    const v1, 0x7f0a032e

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->mLensName:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$LensViewHolder;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;->a(Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter;)Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/shootingmode/fun/LensAdapter$PopupLensListener;->onPopupLensClick(Landroid/view/View;I)V

    return-void
.end method
