.class public abstract Lo5/o1;
.super Landroidx/databinding/ViewDataBinding;
.source "MainBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Lcom/sec/android/app/camera/MainLayout;

.field public final d:Landroid/view/SurfaceView;

.field public final f:Landroid/view/TextureView;

.field public final g:Landroid/view/TextureView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroidx/databinding/ViewStubProxy;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/FrameLayout;Lcom/sec/android/app/camera/MainLayout;Landroid/view/SurfaceView;Landroid/view/TextureView;Landroid/view/TextureView;Landroid/widget/ImageView;Landroidx/databinding/ViewStubProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/o1;->a:Landroid/widget/ImageView;

    .line 3
    iput-object p5, p0, Lo5/o1;->b:Landroid/widget/FrameLayout;

    .line 4
    iput-object p6, p0, Lo5/o1;->c:Lcom/sec/android/app/camera/MainLayout;

    .line 5
    iput-object p7, p0, Lo5/o1;->d:Landroid/view/SurfaceView;

    .line 6
    iput-object p8, p0, Lo5/o1;->f:Landroid/view/TextureView;

    .line 7
    iput-object p9, p0, Lo5/o1;->g:Landroid/view/TextureView;

    .line 8
    iput-object p10, p0, Lo5/o1;->k:Landroid/widget/ImageView;

    .line 9
    iput-object p11, p0, Lo5/o1;->l:Landroidx/databinding/ViewStubProxy;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;)Lo5/o1;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lo5/o1;->e(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lo5/o1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lo5/o1;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d004b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/o1;

    return-object p0
.end method
