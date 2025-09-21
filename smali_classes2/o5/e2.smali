.class public abstract Lo5/e2;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuEffectsMenuBeautyBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Landroid/widget/Button;

.field public final d:Landroid/widget/ViewAnimator;

.field public final f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

.field public final g:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/widget/ExpandableSlider;Landroid/widget/FrameLayout;Landroid/widget/Button;Landroid/widget/ViewAnimator;Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/e2;->a:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 3
    iput-object p5, p0, Lo5/e2;->b:Landroid/widget/FrameLayout;

    .line 4
    iput-object p6, p0, Lo5/e2;->c:Landroid/widget/Button;

    .line 5
    iput-object p7, p0, Lo5/e2;->d:Landroid/widget/ViewAnimator;

    .line 6
    iput-object p8, p0, Lo5/e2;->f:Lcom/sec/android/app/camera/layer/menu/effects/beauty/maualbeautylist/ManualBeautyListView;

    .line 7
    iput-object p9, p0, Lo5/e2;->g:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/e2;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/e2;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/e2;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/e2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0061

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/e2;

    return-object p0
.end method
