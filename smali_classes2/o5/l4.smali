.class public abstract Lo5/l4;
.super Landroidx/databinding/ViewDataBinding;
.source "PreviewOverlayInclinometerBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

.field public final b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/l4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    .line 3
    iput-object p5, p0, Lo5/l4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/InclinometerBar;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/l4;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/l4;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/l4;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/l4;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00af

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/l4;

    return-object p0
.end method
