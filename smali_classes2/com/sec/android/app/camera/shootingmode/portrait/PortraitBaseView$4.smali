.class Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;
.super Ljava/lang/Object;
.source "PortraitBaseView.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/Slider$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->initializeSlider()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartTrackingTouch()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getBokehEffectList()Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;->startAlphaAnimation(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->isBokehEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getBokehEffectTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0, v2, v1, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->I(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;Landroid/view/View;ZI)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getSelectBackground()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p0, v0, v1, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->I(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;Landroid/view/View;ZI)V

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getEffectSlider()Lcom/sec/android/app/camera/widget/ExpandableSlider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getBokehEffectList()Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;->startAlphaAnimation(Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->isBokehEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getBokehEffectTitle()Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->I(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;Landroid/view/View;ZI)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->getSelectBackground()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v2, v1, v3}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->I(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;Landroid/view/View;ZI)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView$4;->this$0:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->access$600(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseContract$Presenter;

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseContract$Presenter;->onStopTrackingTouch(I)V

    :cond_1
    return-void
.end method
