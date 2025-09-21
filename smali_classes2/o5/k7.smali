.class public abstract Lo5/k7;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeProProControlPanelItemBinding.java"


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/widget/Button;

.field public final c:Lcom/sec/android/app/camera/widget/StrokedTextView;

.field public final d:Landroid/widget/FrameLayout;

.field public final f:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/widget/Button;Lcom/sec/android/app/camera/widget/StrokedTextView;Landroid/widget/FrameLayout;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/k7;->a:Landroid/widget/FrameLayout;

    .line 3
    iput-object p5, p0, Lo5/k7;->b:Landroid/widget/Button;

    .line 4
    iput-object p6, p0, Lo5/k7;->c:Lcom/sec/android/app/camera/widget/StrokedTextView;

    .line 5
    iput-object p7, p0, Lo5/k7;->d:Landroid/widget/FrameLayout;

    .line 6
    iput-object p8, p0, Lo5/k7;->f:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k7;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/k7;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/k7;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/k7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0115

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/k7;

    return-object p0
.end method
