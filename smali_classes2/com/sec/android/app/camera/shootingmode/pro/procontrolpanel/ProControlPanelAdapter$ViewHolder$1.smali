.class Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProControlPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->startResetButtonAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->b(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)Lo5/m7;

    move-result-object p1

    iget-object p1, p1, Lo5/m7;->l:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->b(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)Lo5/m7;

    move-result-object p0

    iget-object p0, p0, Lo5/m7;->b:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->b(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)Lo5/m7;

    move-result-object p1

    iget-object p1, p1, Lo5/m7;->b:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder$1;->this$1:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;->b(Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelAdapter$ViewHolder;)Lo5/m7;

    move-result-object p0

    iget-object p0, p0, Lo5/m7;->l:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
