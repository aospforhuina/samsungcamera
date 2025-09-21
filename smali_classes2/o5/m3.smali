.class public abstract Lo5/m3;
.super Landroidx/databinding/ViewDataBinding;
.source "PermissionDialogBinding.java"


# instance fields
.field public final a:Landroid/widget/ListView;

.field public final b:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ListView;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/m3;->a:Landroid/widget/ListView;

    .line 3
    iput-object p5, p0, Lo5/m3;->b:Landroid/widget/TextView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;)Lo5/m3;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lo5/m3;->e(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lo5/m3;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lo5/m3;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0095

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/m3;

    return-object p0
.end method
