.class Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;
.super Ljava/lang/Object;
.source "AeAfView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->isEvSliderRotateAnimationRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p0

    iget-object p0, p0, Lo5/j4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;->getSeekBarProgress(I)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onEvSliderChanged(I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p1}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->n(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lo5/j4;

    move-result-object p1

    iget-object p1, p1, Lo5/j4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onStartEvSliderTouch()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView$1;->this$0:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfView;)Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;->onStopEvSliderTouch()V

    return-void
.end method
