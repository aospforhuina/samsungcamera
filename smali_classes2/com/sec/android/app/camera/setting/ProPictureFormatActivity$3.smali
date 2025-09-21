.class Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;
.super Ljava/lang/Object;
.source "ProPictureFormatActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick called with: position = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProPictureFormatActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->j(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->j(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->j(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;->setSelectedIndex(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->j(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->h(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->f(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity$3;->this$0:Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;->h(Lcom/sec/android/app/camera/setting/ProPictureFormatActivity;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    const-string p1, "5137"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
