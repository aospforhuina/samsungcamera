.class public abstract Lo5/c2;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuEffectsFilterListBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/ViewSwitcher;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/Space;

.field public final f:Landroid/widget/Space;

.field public final g:Landroidx/databinding/ViewStubProxy;

.field public final k:Lcom/sec/android/app/camera/widget/RoundedClipRect;

.field public final l:Landroid/widget/FrameLayout;

.field public final m:Landroid/widget/TextView;

.field public final n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

.field public final o:Landroidx/constraintlayout/widget/Guideline;

.field public final p:Landroidx/constraintlayout/widget/Guideline;

.field public final q:Landroidx/constraintlayout/widget/Guideline;

.field public final r:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final s:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field protected t:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ViewSwitcher;Landroid/widget/ImageView;Landroid/widget/Space;Landroid/widget/Space;Landroidx/databinding/ViewStubProxy;Lcom/sec/android/app/camera/widget/RoundedClipRect;Landroid/widget/FrameLayout;Landroid/widget/TextView;Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/sec/android/app/camera/widget/ExpandableSlider;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/c2;->a:Landroid/widget/ImageView;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/c2;->b:Landroid/widget/ViewSwitcher;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/c2;->c:Landroid/widget/ImageView;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/c2;->d:Landroid/widget/Space;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/c2;->f:Landroid/widget/Space;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/c2;->g:Landroidx/databinding/ViewStubProxy;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/c2;->k:Lcom/sec/android/app/camera/widget/RoundedClipRect;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/c2;->l:Landroid/widget/FrameLayout;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/c2;->m:Landroid/widget/TextView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/c2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterCenterFocusRecyclerView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/c2;->o:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/c2;->p:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/c2;->q:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/c2;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/c2;->s:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/c2;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/c2;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/c2;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/c2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d005f

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/c2;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;)V
.end method
