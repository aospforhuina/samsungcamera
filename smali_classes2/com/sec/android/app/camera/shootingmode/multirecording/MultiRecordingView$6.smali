.class Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;
.super Ljava/lang/Object;
.source "MultiRecordingView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->initPipLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->access$100(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;

    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    invoke-static {p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->H(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Landroid/graphics/RectF;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-interface {p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingContract$Presenter;->onPipRectMove(Landroid/graphics/RectF;F)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->N(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView$6;->this$0:Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;->G(Lcom/sec/android/app/camera/shootingmode/multirecording/MultiRecordingView;)Lo5/m5;

    move-result-object p0

    iget-object p0, p0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
