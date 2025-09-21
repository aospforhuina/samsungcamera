.class Lcom/sec/android/app/camera/CameraWindowManager$2;
.super Ljava/lang/Object;
.source "CameraWindowManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraWindowManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraWindowManager$2;->this$0:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraWindowManager$2;->this$0:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraWindowManager;->c(Lcom/sec/android/app/camera/CameraWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraWindowManager$2;->this$0:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraWindowManager;->d(Lcom/sec/android/app/camera/CameraWindowManager;)Lcom/sec/android/app/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraWindowManager$2;->this$0:Lcom/sec/android/app/camera/CameraWindowManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/CameraWindowManager;->e(Lcom/sec/android/app/camera/CameraWindowManager;Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraWindowManager$2;->this$0:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraWindowManager;->onPreDraw()Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraWindowManager$2;->this$0:Lcom/sec/android/app/camera/CameraWindowManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraWindowManager;->registerPreDrawListener()V

    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
