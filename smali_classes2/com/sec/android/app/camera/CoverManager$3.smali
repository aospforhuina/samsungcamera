.class Lcom/sec/android/app/camera/CoverManager$3;
.super Ljava/lang/Object;
.source "CoverManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CoverManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CoverManager$3;->this$0:Lcom/sec/android/app/camera/CoverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCancelled()V
    .locals 0

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 0

    return-void
.end method

.method public onCaptureInterrupted()V
    .locals 0

    return-void
.end method

.method public onCaptureRequested()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager$3;->this$0:Lcom/sec/android/app/camera/CoverManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/CoverManager;->c(Lcom/sec/android/app/camera/CoverManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/CoverManager;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCaptureStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager$3;->this$0:Lcom/sec/android/app/camera/CoverManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/CoverManager;->b(Lcom/sec/android/app/camera/CoverManager;)Lz5/a;

    move-result-object p0

    invoke-virtual {p0}, Lz5/a;->j()Z

    :cond_0
    return-void
.end method

.method public onCaptureStopped()V
    .locals 0

    return-void
.end method

.method public onPostPictureProcessingCompleted()V
    .locals 0

    return-void
.end method

.method public onShutter()V
    .locals 0

    return-void
.end method
