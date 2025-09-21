.class public abstract Lo5/a8;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeSingleBokehPortraitBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

.field public final b:Landroid/widget/FrameLayout;

.field public final c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

.field public final d:Landroidx/constraintlayout/widget/Guideline;

.field public final f:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

.field public final g:Landroid/widget/ImageButton;

.field public final k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field public final l:Landroid/widget/TextView;

.field public final m:Lcom/airbnb/lottie/LottieAnimationView;

.field public final n:Landroid/widget/TextView;

.field public final o:Lcom/sec/android/app/camera/widget/SceneDetectButton;

.field public final p:Lcom/sec/android/app/camera/widget/NightScreenFlash;

.field public final q:Lcom/sec/android/app/camera/widget/NightShutter;

.field public final r:Landroid/widget/ImageView;

.field public final s:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final t:Landroid/widget/RelativeLayout;

.field public final u:Landroid/widget/TextView;

.field public final v:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;Landroid/widget/FrameLayout;Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;Landroid/widget/ImageButton;Lcom/sec/android/app/camera/widget/ExpandableSlider;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/TextView;Lcom/sec/android/app/camera/widget/SceneDetectButton;Lcom/sec/android/app/camera/widget/NightScreenFlash;Lcom/sec/android/app/camera/widget/NightShutter;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/a8;->a:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectList;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/a8;->b:Landroid/widget/FrameLayout;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/a8;->c:Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehLighting;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/a8;->d:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/a8;->f:Lcom/sec/android/app/camera/widget/NightCaptureCountDownTimer;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/a8;->g:Landroid/widget/ImageButton;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/a8;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/a8;->l:Landroid/widget/TextView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/a8;->m:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/a8;->n:Landroid/widget/TextView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/a8;->o:Lcom/sec/android/app/camera/widget/SceneDetectButton;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/a8;->p:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/a8;->q:Lcom/sec/android/app/camera/widget/NightShutter;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/a8;->r:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/a8;->s:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p19

    .line 17
    iput-object v1, v0, Lo5/a8;->t:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p20

    .line 18
    iput-object v1, v0, Lo5/a8;->u:Landroid/widget/TextView;

    move-object/from16 v1, p21

    .line 19
    iput-object v1, v0, Lo5/a8;->v:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/a8;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/a8;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/a8;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/a8;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d011d

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/a8;

    return-object p0
.end method
