.class Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter$PictureFormatItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ProPictureFormatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PictureFormatItemHolder"
.end annotation


# instance fields
.field radioButton:Landroid/widget/RadioButton;

.field final synthetic this$1:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter$PictureFormatItemHolder;->this$1:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0376

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter$PictureFormatItemHolder;->radioButton:Landroid/widget/RadioButton;

    const p1, 0x7f0a04cb

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter$PictureFormatItemHolder;->title:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter$PictureFormatItemHolder;->this$1:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    iget-object p1, p1, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {p1}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->i(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;->onItemClick(I)V

    return-void
.end method
