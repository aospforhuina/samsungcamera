.class Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AutoFramingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->startClickAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

.field final synthetic val$isSelected:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->val$isSelected:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->c(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)Lo5/s8;

    move-result-object p1

    iget-object p1, p1, Lo5/s8;->b:Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->c(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)Lo5/s8;

    move-result-object p0

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->val$isSelected:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->c(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)Lo5/s8;

    move-result-object p0

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    const p1, 0x7f0806aa

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->c(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)Lo5/s8;

    move-result-object p0

    iget-object p0, p0, Lo5/s8;->b:Landroid/widget/ImageView;

    const p1, 0x7f0806a9

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;->c(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton;)Lo5/s8;

    move-result-object p1

    iget-object p1, p1, Lo5/s8;->b:Landroid/widget/ImageView;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingButton$1;->val$isSelected:Z

    if-eqz p0, :cond_0

    const p0, 0x7f0806aa

    goto :goto_0

    :cond_0
    const p0, 0x7f0806a9

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
