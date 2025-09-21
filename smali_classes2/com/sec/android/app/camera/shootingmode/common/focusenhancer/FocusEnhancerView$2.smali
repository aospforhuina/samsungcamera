.class Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FocusEnhancerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->startClickAnimation(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

.field final synthetic val$state:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->val$state:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->e(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->updateFocusEnhancerButtonBackground(Z)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->val$state:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;->WIDE_AUTO:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->g(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->e(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->updateFocusEnhancerButtonBackground(Z)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->val$state:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;->WIDE_AUTO:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$FocusEnhancerButtonState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView$2;->this$0:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->f(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;)Lo5/r4;

    move-result-object p1

    iget-object p1, p1, Lo5/r4;->a:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;->g(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;Landroid/view/View;)V

    return-void
.end method
