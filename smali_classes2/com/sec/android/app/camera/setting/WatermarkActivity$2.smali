.class Lcom/sec/android/app/camera/setting/WatermarkActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "WatermarkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/WatermarkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/WatermarkActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/WatermarkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/WatermarkActivity$2;->this$0:Lcom/sec/android/app/camera/setting/WatermarkActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "camera.action.CAMERA_START"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/WatermarkActivity$2;->this$0:Lcom/sec/android/app/camera/setting/WatermarkActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
