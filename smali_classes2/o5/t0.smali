.class public abstract Lo5/t0;
.super Landroidx/databinding/ViewDataBinding;
.source "LayerPopupBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Landroidx/constraintlayout/widget/Guideline;

.field public final f:Lcom/sec/android/app/camera/layer/popup/PopupLayerView;

.field public final g:Landroidx/constraintlayout/widget/Guideline;

.field public final k:Landroidx/constraintlayout/widget/Guideline;

.field public final l:Landroidx/constraintlayout/widget/Guideline;

.field public final m:Landroidx/constraintlayout/widget/Guideline;

.field public final n:Landroidx/constraintlayout/widget/Guideline;

.field public final o:Landroidx/constraintlayout/widget/Guideline;

.field public final p:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/layer/popup/PopupLayerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/t0;->a:Landroidx/constraintlayout/widget/Guideline;

    .line 3
    iput-object p5, p0, Lo5/t0;->b:Landroidx/constraintlayout/widget/Guideline;

    .line 4
    iput-object p6, p0, Lo5/t0;->c:Landroidx/constraintlayout/widget/Guideline;

    .line 5
    iput-object p7, p0, Lo5/t0;->d:Landroidx/constraintlayout/widget/Guideline;

    .line 6
    iput-object p8, p0, Lo5/t0;->f:Lcom/sec/android/app/camera/layer/popup/PopupLayerView;

    .line 7
    iput-object p9, p0, Lo5/t0;->g:Landroidx/constraintlayout/widget/Guideline;

    .line 8
    iput-object p10, p0, Lo5/t0;->k:Landroidx/constraintlayout/widget/Guideline;

    .line 9
    iput-object p11, p0, Lo5/t0;->l:Landroidx/constraintlayout/widget/Guideline;

    .line 10
    iput-object p12, p0, Lo5/t0;->m:Landroidx/constraintlayout/widget/Guideline;

    .line 11
    iput-object p13, p0, Lo5/t0;->n:Landroidx/constraintlayout/widget/Guideline;

    .line 12
    iput-object p14, p0, Lo5/t0;->o:Landroidx/constraintlayout/widget/Guideline;

    .line 13
    iput-object p15, p0, Lo5/t0;->p:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/t0;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/t0;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/t0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/t0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d003d

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/t0;

    return-object p0
.end method
