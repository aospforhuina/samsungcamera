.class public abstract Lo5/i2;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuEffectsMenuColorToneBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroid/widget/Button;

.field public final f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/GreatestWidthHelper;

.field public final g:Landroid/widget/Space;

.field public final k:Landroid/widget/Button;

.field public final l:Landroidx/constraintlayout/widget/Guideline;

.field public final m:Landroid/widget/Button;

.field protected n:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneTabContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Lcom/sec/android/app/camera/layer/menu/effects/colortone/GreatestWidthHelper;Landroid/widget/Space;Landroid/widget/Button;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/i2;->a:Landroid/widget/ImageView;

    .line 3
    iput-object p5, p0, Lo5/i2;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    iput-object p6, p0, Lo5/i2;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    iput-object p7, p0, Lo5/i2;->d:Landroid/widget/Button;

    .line 6
    iput-object p8, p0, Lo5/i2;->f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/GreatestWidthHelper;

    .line 7
    iput-object p9, p0, Lo5/i2;->g:Landroid/widget/Space;

    .line 8
    iput-object p10, p0, Lo5/i2;->k:Landroid/widget/Button;

    .line 9
    iput-object p11, p0, Lo5/i2;->l:Landroidx/constraintlayout/widget/Guideline;

    .line 10
    iput-object p12, p0, Lo5/i2;->m:Landroid/widget/Button;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/i2;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/i2;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/i2;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/i2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0062

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/i2;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneTabContract$Presenter;)V
.end method
