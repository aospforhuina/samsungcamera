.class public abstract Lo5/s6;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModePortraitBokehLightingBinding.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/view/View;

.field public final c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

.field public final d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/view/View;Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/s6;->a:Landroid/view/View;

    .line 3
    iput-object p5, p0, Lo5/s6;->b:Landroid/view/View;

    .line 4
    iput-object p6, p0, Lo5/s6;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLightingSeekBar;

    .line 5
    iput-object p7, p0, Lo5/s6;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    iput-object p8, p0, Lo5/s6;->f:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s6;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/s6;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/s6;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/s6;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d010c

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/s6;

    return-object p0
.end method
