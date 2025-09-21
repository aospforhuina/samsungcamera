.class public abstract Lo5/l0;
.super Landroidx/databinding/ViewDataBinding;
.source "LayerEmptyKeyScreenBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

.field public final d:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

.field public final f:Lcom/sec/android/app/camera/widget/ProgressCircle;

.field public final g:Landroid/widget/RelativeLayout;

.field public final k:Landroidx/constraintlayout/widget/Guideline;

.field public final l:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

.field public final m:Landroid/widget/ImageView;

.field public final n:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/EmptyShootingModeListView;

.field public final o:Landroid/widget/FrameLayout;

.field public final p:Landroidx/constraintlayout/widget/Guideline;

.field public final q:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

.field public final r:Lcom/airbnb/lottie/LottieAnimationView;

.field public final s:Landroidx/constraintlayout/widget/Guideline;

.field public final t:Lcom/sec/android/app/camera/layer/keyscreen/zoom/EmptyZoomView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;Lcom/sec/android/app/camera/widget/ProgressCircle;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;Landroid/widget/ImageView;Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/EmptyShootingModeListView;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/widget/ShutterProgressWheel;Lcom/airbnb/lottie/LottieAnimationView;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/layer/keyscreen/zoom/EmptyZoomView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/l0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/l0;->b:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/l0;->c:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonView;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/l0;->d:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/LeftButtonView;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/l0;->f:Lcom/sec/android/app/camera/widget/ProgressCircle;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/l0;->g:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/l0;->k:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/l0;->l:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/l0;->m:Landroid/widget/ImageView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/l0;->n:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/EmptyShootingModeListView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/l0;->o:Landroid/widget/FrameLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/l0;->p:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/l0;->q:Lcom/sec/android/app/camera/widget/ShutterProgressWheel;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/l0;->r:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/l0;->s:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p19

    .line 17
    iput-object v1, v0, Lo5/l0;->t:Lcom/sec/android/app/camera/layer/keyscreen/zoom/EmptyZoomView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/l0;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/l0;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/l0;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/l0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0039

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/l0;

    return-object p0
.end method
