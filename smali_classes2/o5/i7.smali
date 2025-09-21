.class public abstract Lo5/i7;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeProLiteVideoBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Landroidx/constraintlayout/widget/Guideline;

.field public final f:Landroidx/constraintlayout/widget/Guideline;

.field public final g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

.field public final k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

.field public final l:Landroidx/constraintlayout/widget/Guideline;

.field public final m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

.field public final n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final o:Landroid/widget/RelativeLayout;

.field public final p:Landroidx/constraintlayout/widget/Guideline;

.field public final q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

.field public final r:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/i7;->a:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/i7;->b:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/i7;->c:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/i7;->d:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/i7;->f:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/i7;->g:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/i7;->k:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/i7;->l:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/i7;->m:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/i7;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/i7;->o:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/i7;->p:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/i7;->q:Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/i7;->r:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/i7;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/i7;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/i7;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/i7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0114

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/i7;

    return-object p0
.end method
