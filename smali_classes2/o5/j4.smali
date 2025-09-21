.class public abstract Lo5/j4;
.super Landroidx/databinding/ViewDataBinding;
.source "PreviewOverlayAeAfBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

.field public final b:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

.field public final c:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

.field public final d:Landroid/widget/ImageView;

.field public final f:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;Landroid/widget/ImageView;Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/j4;->a:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfGroup;

    .line 3
    iput-object p5, p0, Lo5/j4;->b:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    .line 4
    iput-object p6, p0, Lo5/j4;->c:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/DivideAeAfGroup;

    .line 5
    iput-object p7, p0, Lo5/j4;->d:Landroid/widget/ImageView;

    .line 6
    iput-object p8, p0, Lo5/j4;->f:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/j4;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/j4;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/j4;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/j4;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00ae

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/j4;

    return-object p0
.end method
