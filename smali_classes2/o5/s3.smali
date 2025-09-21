.class public abstract Lo5/s3;
.super Landroidx/databinding/ViewDataBinding;
.source "PopupOverlayHelpBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Landroid/widget/Button;

.field public final c:Landroid/widget/TextView;

.field public final d:Landroid/widget/ImageView;

.field public final f:Lcom/airbnb/lottie/LottieAnimationView;

.field public final g:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroidx/constraintlayout/widget/Guideline;

.field protected n:Lcom/sec/android/app/camera/layer/popup/overlayhelp/OverlayHelpContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/s3;->a:Landroidx/constraintlayout/widget/Guideline;

    .line 3
    iput-object p5, p0, Lo5/s3;->b:Landroid/widget/Button;

    .line 4
    iput-object p6, p0, Lo5/s3;->c:Landroid/widget/TextView;

    .line 5
    iput-object p7, p0, Lo5/s3;->d:Landroid/widget/ImageView;

    .line 6
    iput-object p8, p0, Lo5/s3;->f:Lcom/airbnb/lottie/LottieAnimationView;

    .line 7
    iput-object p9, p0, Lo5/s3;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    iput-object p10, p0, Lo5/s3;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    iput-object p11, p0, Lo5/s3;->l:Landroid/widget/TextView;

    .line 10
    iput-object p12, p0, Lo5/s3;->m:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s3;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/s3;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/s3;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/s3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d009b

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/s3;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/layer/popup/overlayhelp/OverlayHelpContract$Presenter;)V
.end method
