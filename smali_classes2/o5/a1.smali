.class public abstract Lo5/a1;
.super Landroidx/databinding/ViewDataBinding;
.source "LayerResizableKeyScreenBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Lo5/q;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Landroidx/databinding/ViewStubProxy;

.field public final f:Landroidx/constraintlayout/widget/Guideline;

.field public final g:Landroidx/databinding/ViewStubProxy;

.field public final k:Landroidx/constraintlayout/widget/Guideline;

.field public final l:Landroid/widget/ImageView;

.field public final m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

.field public final n:Landroid/widget/FrameLayout;

.field public final o:Landroidx/constraintlayout/widget/Guideline;

.field public final p:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Lo5/q;Landroidx/constraintlayout/widget/Guideline;Landroidx/databinding/ViewStubProxy;Landroidx/constraintlayout/widget/Guideline;Landroidx/databinding/ViewStubProxy;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/a1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3
    iput-object p5, p0, Lo5/a1;->b:Lo5/q;

    .line 4
    iput-object p6, p0, Lo5/a1;->c:Landroidx/constraintlayout/widget/Guideline;

    .line 5
    iput-object p7, p0, Lo5/a1;->d:Landroidx/databinding/ViewStubProxy;

    .line 6
    iput-object p8, p0, Lo5/a1;->f:Landroidx/constraintlayout/widget/Guideline;

    .line 7
    iput-object p9, p0, Lo5/a1;->g:Landroidx/databinding/ViewStubProxy;

    .line 8
    iput-object p10, p0, Lo5/a1;->k:Landroidx/constraintlayout/widget/Guideline;

    .line 9
    iput-object p11, p0, Lo5/a1;->l:Landroid/widget/ImageView;

    .line 10
    iput-object p12, p0, Lo5/a1;->m:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    .line 11
    iput-object p13, p0, Lo5/a1;->n:Landroid/widget/FrameLayout;

    .line 12
    iput-object p14, p0, Lo5/a1;->o:Landroidx/constraintlayout/widget/Guideline;

    .line 13
    iput-object p15, p0, Lo5/a1;->p:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/a1;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/a1;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/a1;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/a1;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0040

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/a1;

    return-object p0
.end method
