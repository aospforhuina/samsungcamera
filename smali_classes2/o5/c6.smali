.class public abstract Lo5/c6;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModePhotoBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

.field public final d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroidx/constraintlayout/widget/Guideline;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final l:Landroidx/constraintlayout/widget/Guideline;

.field public final m:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;

.field protected n:Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/c6;->a:Landroid/widget/ImageView;

    .line 3
    iput-object p5, p0, Lo5/c6;->b:Landroidx/constraintlayout/widget/Guideline;

    .line 4
    iput-object p6, p0, Lo5/c6;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    .line 5
    iput-object p7, p0, Lo5/c6;->d:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentView;

    .line 6
    iput-object p8, p0, Lo5/c6;->f:Landroid/widget/TextView;

    .line 7
    iput-object p9, p0, Lo5/c6;->g:Landroidx/constraintlayout/widget/Guideline;

    .line 8
    iput-object p10, p0, Lo5/c6;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    iput-object p11, p0, Lo5/c6;->l:Landroidx/constraintlayout/widget/Guideline;

    .line 10
    iput-object p12, p0, Lo5/c6;->m:Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/c6;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/c6;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/c6;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/c6;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0104

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/c6;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;)V
.end method
