.class public abstract Lo5/m5;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeMultiRecordingBinding.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Landroid/widget/ImageButton;

.field public final d:Landroid/widget/ImageButton;

.field public final f:Landroid/widget/ImageButton;

.field public final g:Landroid/widget/FrameLayout;

.field public final k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

.field public final l:Landroid/widget/RelativeLayout;

.field public final m:Landroid/view/View;

.field public final n:Lcom/airbnb/lottie/LottieAnimationView;

.field public final o:Landroid/widget/RelativeLayout;

.field public final p:Lcom/sec/android/app/camera/widget/DualPipRect;

.field public final q:Landroid/widget/RelativeLayout;

.field public final r:Landroidx/constraintlayout/widget/Guideline;

.field public final s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

.field public final t:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final u:Landroidx/constraintlayout/widget/Guideline;

.field public final v:Landroidx/constraintlayout/widget/Guideline;

.field public final w:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/FrameLayout;Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;Landroid/widget/RelativeLayout;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/RelativeLayout;Lcom/sec/android/app/camera/widget/DualPipRect;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/RelativeLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/m5;->a:Landroid/view/View;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/m5;->b:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/m5;->c:Landroid/widget/ImageButton;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/m5;->d:Landroid/widget/ImageButton;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/m5;->f:Landroid/widget/ImageButton;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/m5;->g:Landroid/widget/FrameLayout;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/m5;->k:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/m5;->l:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/m5;->m:Landroid/view/View;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/m5;->n:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/m5;->o:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/m5;->p:Lcom/sec/android/app/camera/widget/DualPipRect;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/m5;->q:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/m5;->r:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/m5;->s:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    move-object/from16 v1, p19

    .line 17
    iput-object v1, v0, Lo5/m5;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p20

    .line 18
    iput-object v1, v0, Lo5/m5;->u:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p21

    .line 19
    iput-object v1, v0, Lo5/m5;->v:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p22

    .line 20
    iput-object v1, v0, Lo5/m5;->w:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/m5;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/m5;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/m5;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/m5;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00fc

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/m5;

    return-object p0
.end method
