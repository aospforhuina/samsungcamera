.class public abstract Lo5/w7;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeProZoomRockerBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;

.field public final f:Lcom/sec/android/app/camera/widget/StrokedTextView;

.field public final g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroid/view/View;Landroid/widget/ImageView;Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;Lcom/sec/android/app/camera/widget/StrokedTextView;Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/w7;->a:Landroidx/constraintlayout/widget/Guideline;

    .line 3
    iput-object p5, p0, Lo5/w7;->b:Landroid/view/View;

    .line 4
    iput-object p6, p0, Lo5/w7;->c:Landroid/widget/ImageView;

    .line 5
    iput-object p7, p0, Lo5/w7;->d:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;

    .line 6
    iput-object p8, p0, Lo5/w7;->f:Lcom/sec/android/app/camera/widget/StrokedTextView;

    .line 7
    iput-object p9, p0, Lo5/w7;->g:Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerTextView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/w7;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/w7;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/w7;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/w7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d011b

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/w7;

    return-object p0
.end method
