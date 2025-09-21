.class public abstract Lo5/u8;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeVideoBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

.field public final d:Landroid/widget/TextView;

.field public final f:Landroidx/constraintlayout/widget/Guideline;

.field public final g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

.field public final k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

.field public final l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

.field public final m:Landroidx/constraintlayout/widget/Guideline;

.field public final n:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final o:Landroidx/constraintlayout/widget/Guideline;

.field public final p:Landroidx/constraintlayout/widget/Guideline;

.field protected q:Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/u8;->a:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingView;

    .line 3
    iput-object p5, p0, Lo5/u8;->b:Landroidx/constraintlayout/widget/Guideline;

    .line 4
    iput-object p6, p0, Lo5/u8;->c:Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerView;

    .line 5
    iput-object p7, p0, Lo5/u8;->d:Landroid/widget/TextView;

    .line 6
    iput-object p8, p0, Lo5/u8;->f:Landroidx/constraintlayout/widget/Guideline;

    .line 7
    iput-object p9, p0, Lo5/u8;->g:Lcom/sec/android/app/camera/shootingmode/video/QuickTakeLockButton;

    .line 8
    iput-object p10, p0, Lo5/u8;->k:Lcom/sec/android/app/camera/shootingmode/video/widget/RecordingProgressBar;

    .line 9
    iput-object p11, p0, Lo5/u8;->l:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 10
    iput-object p12, p0, Lo5/u8;->m:Landroidx/constraintlayout/widget/Guideline;

    .line 11
    iput-object p13, p0, Lo5/u8;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 12
    iput-object p14, p0, Lo5/u8;->o:Landroidx/constraintlayout/widget/Guideline;

    .line 13
    iput-object p15, p0, Lo5/u8;->p:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/u8;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/u8;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/u8;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/u8;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0124

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/u8;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;)V
.end method
