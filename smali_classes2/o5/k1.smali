.class public abstract Lo5/k1;
.super Landroidx/databinding/ViewDataBinding;
.source "LayerShootingModeOverlayTimerBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

.field public final b:Lcom/airbnb/lottie/LottieAnimationView;

.field public final c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

.field public final d:Landroidx/constraintlayout/widget/Guideline;

.field public final f:Landroid/widget/ImageSwitcher;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;Lcom/airbnb/lottie/LottieAnimationView;Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageSwitcher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/k1;->a:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerIntervalProgressDot;

    .line 3
    iput-object p5, p0, Lo5/k1;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 4
    iput-object p6, p0, Lo5/k1;->c:Lcom/sec/android/app/camera/layer/shootingmodeoverlay/timer/TimerProgressWheel;

    .line 5
    iput-object p7, p0, Lo5/k1;->d:Landroidx/constraintlayout/widget/Guideline;

    .line 6
    iput-object p8, p0, Lo5/k1;->f:Landroid/widget/ImageSwitcher;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k1;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/k1;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/k1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/k1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0045

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/k1;

    return-object p0
.end method
