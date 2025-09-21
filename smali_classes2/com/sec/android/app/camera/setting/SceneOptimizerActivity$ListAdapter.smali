.class Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SceneOptimizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;
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

.field private mResource:I

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mViewList:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 4
    iput p3, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mResource:I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->lambda$onBindViewHolder$1(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->lambda$onBindViewHolder$2(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->lambda$onBindViewHolder$0(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Lu3/b;->f5:Lu3/b;

    invoke-static {p3}, Lu3/d;->e(Lu3/b;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getEventId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->startSceneDocumentScanActivity()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 5
    iget-object p1, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/view/View;)V
    .locals 2

    .line 1
    iget-object p3, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnCheckedChange : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], isChecked = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneOptimizerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getEventSwitchId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->i(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$2(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/widget/CompoundButton;Z)V
    .locals 1

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

    const-string v0, "SceneOptimizerActivity"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p3, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p3}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getEventSwitchId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p4}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->i(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

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

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object p0

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
    check-cast p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->i(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->toBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 7
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/camera/setting/i3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/setting/i3;-><init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lu3/b;->f5:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v2, Lcom/sec/android/app/camera/setting/h3;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/setting/h3;-><init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v2, Lcom/sec/android/app/camera/setting/j3;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/android/app/camera/setting/j3;-><init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;I)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->i(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->m(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 14
    :goto_1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 15
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 16
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 17
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 18
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    const/16 v0, 0x8

    if-eqz v2, :cond_2

    .line 19
    iget-object p2, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object p2, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p2, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->description:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 22
    :cond_2
    iget-object v2, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->i(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->j(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$SceneItem;->getKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDimmers(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/android/app/camera/setting/ExclusiveSettingString;->getString(Landroid/content/Context;Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 25
    iget-object v0, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p2, p1, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mResource:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;-><init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method setEnable(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;

    .line 2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    iget-object v1, v0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    iget-object v1, v0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object v0, v0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;->switchWidget:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method startSceneDocumentScanActivity()V
    .locals 4

    const-string v0, "SceneOptimizerActivity"

    const-string/jumbo v1, "startSceneDocumentScanActivity"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/camera/setting/SceneDocumentScanActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x24000000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->i(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->updateParcel()V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->i(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getParcelable()Landroid/os/Parcelable;

    move-result-object v2

    const-string/jumbo v3, "setting"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "camera-parcel"

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
