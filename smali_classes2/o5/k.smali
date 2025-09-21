.class public abstract Lo5/k;
.super Landroidx/databinding/ViewDataBinding;
.source "FilterMenuSubFilterListItemBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/Button;

.field public final c:Landroid/widget/FrameLayout;

.field public final d:Landroid/widget/ImageView;

.field public final f:Landroid/widget/FrameLayout;

.field public final g:Landroid/widget/FrameLayout;

.field public final k:Landroid/view/TextureView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/TextureView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/k;->a:Landroid/widget/ImageView;

    .line 3
    iput-object p5, p0, Lo5/k;->b:Landroid/widget/Button;

    .line 4
    iput-object p6, p0, Lo5/k;->c:Landroid/widget/FrameLayout;

    .line 5
    iput-object p7, p0, Lo5/k;->d:Landroid/widget/ImageView;

    .line 6
    iput-object p8, p0, Lo5/k;->f:Landroid/widget/FrameLayout;

    .line 7
    iput-object p9, p0, Lo5/k;->g:Landroid/widget/FrameLayout;

    .line 8
    iput-object p10, p0, Lo5/k;->k:Landroid/view/TextureView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/k;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/k;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/k;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0026

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/k;

    return-object p0
.end method
