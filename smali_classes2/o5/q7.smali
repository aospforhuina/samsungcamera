.class public abstract Lo5/q7;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeProProLiteSliderContainerBinding.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

.field public final d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

.field public final f:Landroid/widget/RelativeLayout;

.field public final g:Landroid/widget/Button;

.field public final k:Landroid/widget/ImageView;

.field public final l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

.field protected m:I
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/ImageView;Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/q7;->a:Landroid/widget/TextView;

    .line 3
    iput-object p5, p0, Lo5/q7;->b:Landroid/widget/ImageView;

    .line 4
    iput-object p6, p0, Lo5/q7;->c:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    .line 5
    iput-object p7, p0, Lo5/q7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/TickSlider;

    .line 6
    iput-object p8, p0, Lo5/q7;->f:Landroid/widget/RelativeLayout;

    .line 7
    iput-object p9, p0, Lo5/q7;->g:Landroid/widget/Button;

    .line 8
    iput-object p10, p0, Lo5/q7;->k:Landroid/widget/ImageView;

    .line 9
    iput-object p11, p0, Lo5/q7;->l:Lcom/sec/android/app/camera/shootingmode/pro/widget/ProHorizontalScrollView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/q7;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/q7;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/q7;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/q7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0118

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/q7;

    return-object p0
.end method


# virtual methods
.method public abstract f(I)V
.end method
