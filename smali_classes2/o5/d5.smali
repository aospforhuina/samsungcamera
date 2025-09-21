.class public abstract Lo5/d5;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeHyperLapseBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

.field public final f:Landroidx/constraintlayout/widget/Guideline;

.field public final g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final l:Landroidx/constraintlayout/widget/Guideline;

.field public final m:Landroidx/constraintlayout/widget/Guideline;

.field public final n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

.field protected o:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/d5;->a:Landroidx/constraintlayout/widget/Guideline;

    .line 3
    iput-object p5, p0, Lo5/d5;->b:Landroidx/constraintlayout/widget/Guideline;

    .line 4
    iput-object p6, p0, Lo5/d5;->c:Landroidx/constraintlayout/widget/Guideline;

    .line 5
    iput-object p7, p0, Lo5/d5;->d:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    .line 6
    iput-object p8, p0, Lo5/d5;->f:Landroidx/constraintlayout/widget/Guideline;

    .line 7
    iput-object p9, p0, Lo5/d5;->g:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    .line 8
    iput-object p10, p0, Lo5/d5;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 9
    iput-object p11, p0, Lo5/d5;->l:Landroidx/constraintlayout/widget/Guideline;

    .line 10
    iput-object p12, p0, Lo5/d5;->m:Landroidx/constraintlayout/widget/Guideline;

    .line 11
    iput-object p13, p0, Lo5/d5;->n:Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseTrailsButton;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/d5;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/d5;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/d5;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/d5;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f8

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/d5;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/shootingmode/hyperlapse/HyperLapseContract$Presenter;)V
.end method
