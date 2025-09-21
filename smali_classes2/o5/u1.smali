.class public abstract Lo5/u1;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuCreateMyFilterEditNameBinding.java"


# instance fields
.field public final a:Landroid/widget/Button;

.field public final b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final c:Landroid/widget/EditText;

.field public final d:Landroidx/constraintlayout/widget/Guideline;

.field public final f:Landroid/widget/Button;

.field public final g:Landroidx/constraintlayout/widget/Guideline;

.field public final k:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/EditText;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/u1;->a:Landroid/widget/Button;

    .line 3
    iput-object p5, p0, Lo5/u1;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object p6, p0, Lo5/u1;->c:Landroid/widget/EditText;

    .line 5
    iput-object p7, p0, Lo5/u1;->d:Landroidx/constraintlayout/widget/Guideline;

    .line 6
    iput-object p8, p0, Lo5/u1;->f:Landroid/widget/Button;

    .line 7
    iput-object p9, p0, Lo5/u1;->g:Landroidx/constraintlayout/widget/Guideline;

    .line 8
    iput-object p10, p0, Lo5/u1;->k:Landroid/widget/TextView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;)Lo5/u1;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lo5/u1;->e(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lo5/u1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lo5/u1;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d005c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/u1;

    return-object p0
.end method
