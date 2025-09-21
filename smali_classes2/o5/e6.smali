.class public abstract Lo5/e6;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModePhotoIntelligentBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

.field public final c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

.field public final d:Lcom/airbnb/lottie/LottieAnimationView;

.field public final f:Lcom/sec/android/app/camera/widget/NightScreenFlash;

.field public final g:Lcom/sec/android/app/camera/widget/NightShutter;

.field public final k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

.field public final l:Landroid/widget/TextView;

.field public final m:Landroid/widget/RelativeLayout;

.field public final n:Landroidx/constraintlayout/widget/Guideline;

.field public final o:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

.field public final p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;Lcom/airbnb/lottie/LottieAnimationView;Lcom/sec/android/app/camera/widget/NightScreenFlash;Lcom/sec/android/app/camera/widget/NightShutter;Lcom/sec/android/app/camera/widget/SceneDetectButton;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/e6;->a:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/e6;->b:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/CompositionGuide;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/e6;->c:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/e6;->d:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/e6;->f:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/e6;->g:Lcom/sec/android/app/camera/widget/NightShutter;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/e6;->k:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/e6;->l:Landroid/widget/TextView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/e6;->m:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/e6;->n:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/e6;->o:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScan;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/e6;->p:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/SmartScanCaptureButton;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/e6;->q:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/e6;->r:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/e6;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/e6;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/e6;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/e6;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0105

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/e6;

    return-object p0
.end method
