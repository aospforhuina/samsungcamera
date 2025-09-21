.class public abstract Lo5/y7;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeQrBinding.java"


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/view/View;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final f:Landroid/view/View;

.field public final g:Lcom/airbnb/lottie/LottieAnimationView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Lcom/sec/android/app/camera/widget/StrokedTextView;

.field public final m:Landroid/widget/ImageView;

.field public final n:Landroid/widget/RelativeLayout;

.field public final o:Landroid/widget/ImageView;

.field public final p:Landroid/widget/ImageView;

.field public final q:Landroid/widget/FrameLayout;

.field public final r:Landroid/view/View;

.field public final s:Lcom/airbnb/lottie/LottieAnimationView;

.field public final t:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/FrameLayout;Landroid/view/View;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;Lcom/sec/android/app/camera/widget/StrokedTextView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/view/View;Lcom/airbnb/lottie/LottieAnimationView;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/y7;->a:Landroid/widget/FrameLayout;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/y7;->b:Landroid/view/View;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/y7;->c:Landroid/widget/ImageView;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/y7;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/y7;->f:Landroid/view/View;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/y7;->g:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/y7;->k:Landroid/widget/ImageView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/y7;->l:Lcom/sec/android/app/camera/widget/StrokedTextView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/y7;->m:Landroid/widget/ImageView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/y7;->n:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/y7;->o:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/y7;->p:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/y7;->q:Landroid/widget/FrameLayout;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/y7;->r:Landroid/view/View;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/y7;->s:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p19

    .line 17
    iput-object v1, v0, Lo5/y7;->t:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/y7;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/y7;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/y7;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/y7;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d011c

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/y7;

    return-object p0
.end method
