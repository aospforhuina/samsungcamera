.class Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HdrOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemViewHolder"
.end annotation


# instance fields
.field summary:Landroid/widget/TextView;

.field switchWidget:Landroidx/appcompat/widget/SwitchCompat;

.field final synthetic this$1:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->this$1:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x1020016

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    const p1, 0x1020010

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    const p1, 0x7f0a047c

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    return-void
.end method
