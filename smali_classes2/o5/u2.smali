.class public abstract Lo5/u2;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuSelfieToneV2MenuBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageButton;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Landroid/widget/RadioButton;

.field public final d:Landroid/widget/RadioGroup;

.field public final f:Landroid/widget/RadioButton;

.field public final g:Landroid/widget/TextView;

.field public final k:Landroidx/constraintlayout/widget/Guideline;

.field protected l:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/u2;->a:Landroid/widget/ImageButton;

    .line 3
    iput-object p5, p0, Lo5/u2;->b:Landroidx/constraintlayout/widget/Guideline;

    .line 4
    iput-object p6, p0, Lo5/u2;->c:Landroid/widget/RadioButton;

    .line 5
    iput-object p7, p0, Lo5/u2;->d:Landroid/widget/RadioGroup;

    .line 6
    iput-object p8, p0, Lo5/u2;->f:Landroid/widget/RadioButton;

    .line 7
    iput-object p9, p0, Lo5/u2;->g:Landroid/widget/TextView;

    .line 8
    iput-object p10, p0, Lo5/u2;->k:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/u2;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/u2;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/u2;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/u2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0068

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/u2;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuContract$Presenter;)V
.end method
