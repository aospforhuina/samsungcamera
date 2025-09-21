.class Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ProTipsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;->getHideAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$1;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setClickable(Z)V

    return-void
.end method
