.class Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;
.super Ljava/lang/Object;
.source "SwipeShutterButtonToActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

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

    const-string v1, "SwipeShutterButtonToActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->j(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->j(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->j(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;->setSelectedIndex(I)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->j(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->f(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {v2}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->h(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity$3;->this$0:Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;->h(Lcom/sec/android/app/camera/setting/SwipeShutterButtonToActivity;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    const-string p1, "5033"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
