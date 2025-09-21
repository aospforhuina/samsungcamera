.class public abstract Lo5/o5;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeNightBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Landroidx/constraintlayout/widget/Guideline;

.field public final f:Landroidx/constraintlayout/widget/Guideline;

.field public final g:Landroidx/constraintlayout/widget/Guideline;

.field public final k:Lcom/sec/android/app/camera/widget/NightScreenFlash;

.field public final l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

.field public final m:Lcom/sec/android/app/camera/widget/NightShutter;

.field public final n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

.field public final o:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final p:Landroid/widget/RelativeLayout;

.field public final q:Landroidx/constraintlayout/widget/Guideline;

.field public final r:Landroidx/constraintlayout/widget/Guideline;

.field public final s:Lcom/sec/android/app/camera/widget/StabilityIndicator;

.field public final t:Landroid/widget/TextView;

.field public final u:Landroidx/constraintlayout/widget/Guideline;

.field protected v:Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/NightScreenFlash;Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;Lcom/sec/android/app/camera/widget/NightShutter;Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/StabilityIndicator;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/o5;->a:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/o5;->b:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/o5;->c:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/o5;->d:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/o5;->f:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/o5;->g:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/o5;->k:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/o5;->l:Lcom/sec/android/app/camera/shootingmode/night/NightSelectTimeIndicator;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/o5;->m:Lcom/sec/android/app/camera/widget/NightShutter;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/o5;->n:Lcom/sec/android/app/camera/shootingmode/night/NightTimeIndicator;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/o5;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/o5;->p:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/o5;->q:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/o5;->r:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/o5;->s:Lcom/sec/android/app/camera/widget/StabilityIndicator;

    move-object/from16 v1, p19

    .line 17
    iput-object v1, v0, Lo5/o5;->t:Landroid/widget/TextView;

    move-object/from16 v1, p20

    .line 18
    iput-object v1, v0, Lo5/o5;->u:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/o5;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/o5;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/o5;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/o5;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00fd

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/o5;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/shootingmode/night/NightContract$Presenter;)V
.end method
