.class public abstract Lo5/g6;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModePhotoIntelligentCompositionGuideBinding.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroid/view/View;

.field public final d:Landroid/widget/TextView;

.field public final f:Landroid/widget/RelativeLayout;

.field public final g:Lcom/airbnb/lottie/LottieAnimationView;

.field public final k:Landroid/view/View;

.field public final l:Landroid/view/View;

.field public final m:Landroid/view/View;

.field public final n:Landroid/view/View;

.field public final o:Landroid/view/View;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroid/widget/RelativeLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Lcom/airbnb/lottie/LottieAnimationView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/g6;->a:Landroid/view/View;

    .line 3
    iput-object p5, p0, Lo5/g6;->b:Landroid/widget/RelativeLayout;

    .line 4
    iput-object p6, p0, Lo5/g6;->c:Landroid/view/View;

    .line 5
    iput-object p7, p0, Lo5/g6;->d:Landroid/widget/TextView;

    .line 6
    iput-object p8, p0, Lo5/g6;->f:Landroid/widget/RelativeLayout;

    .line 7
    iput-object p9, p0, Lo5/g6;->g:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    iput-object p10, p0, Lo5/g6;->k:Landroid/view/View;

    .line 9
    iput-object p11, p0, Lo5/g6;->l:Landroid/view/View;

    .line 10
    iput-object p12, p0, Lo5/g6;->m:Landroid/view/View;

    .line 11
    iput-object p13, p0, Lo5/g6;->n:Landroid/view/View;

    .line 12
    iput-object p14, p0, Lo5/g6;->o:Landroid/view/View;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/g6;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/g6;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/g6;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/g6;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0106

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/g6;

    return-object p0
.end method
