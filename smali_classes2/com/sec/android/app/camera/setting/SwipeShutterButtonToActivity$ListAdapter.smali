.class Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SwipeShutterButtonToActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mList:[Ljava/lang/String;

.field private final mResource:I

.field private mSelectedIndex:I

.field private final mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mViewList:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput p3, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mResource:I

    .line 5
    iput-object p4, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mList:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mList:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mList:[Ljava/lang/String;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mSelectedIndex:I

    if-ne v0, p2, :cond_0

    .line 3
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 5
    :goto_0
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->g(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mResource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;-><init>(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setEnable(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;

    .line 2
    iget-object v1, v0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, p1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 3
    iget-object v0, v0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter$SwipeButtonToItemHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method setSelectedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->mSelectedIndex:I

    return-void
.end method
