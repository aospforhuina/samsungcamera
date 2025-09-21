.class Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HdrOptionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/HdrOptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListVideoHdrAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;
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
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResource:I

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/HdrOptionActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mViewList:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput p3, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mResource:I

    .line 5
    iput-object p4, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->lambda$onBindViewHolder$1(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->lambda$onBindViewHolder$0(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onBindViewHolder$0(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;ILandroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OnCheckedChange : ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "], isChecked = ["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "HdrOptionActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->getEventId()Ljava/lang/String;

    move-result-object p2

    if-eqz p4, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p2, v0, v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;J)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/HdrOptionActivity;->g(Lcom/sec/android/app/camera/setting/HdrOptionActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->key:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/HdrOptionActivity;->g(Lcom/sec/android/app/camera/setting/HdrOptionActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$VideoHdrItem;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/camera/setting/u1;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/setting/u1;-><init>(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v1, Lcom/sec/android/app/camera/setting/v1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/setting/v1;-><init>(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 10
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;

    invoke-static {p2}, Lcom/sec/android/app/camera/setting/HdrOptionActivity;->g(Lcom/sec/android/app/camera/setting/HdrOptionActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    if-ne p2, v3, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->this$0:Lcom/sec/android/app/camera/setting/HdrOptionActivity;

    invoke-static {p2}, Lcom/sec/android/app/camera/setting/HdrOptionActivity;->g(Lcom/sec/android/app/camera/setting/HdrOptionActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p2

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    if-eq p2, v0, :cond_1

    move v2, v3

    .line 11
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 12
    iget-object p2, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 13
    iget-object p2, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 14
    iget-object p2, p1, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mResource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;-><init>(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method setEnable(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v1, v0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v1, v0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object v0, v0, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
