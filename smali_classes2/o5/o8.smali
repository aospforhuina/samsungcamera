.class public abstract Lo5/o8;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeSuperSlowMotionBinding.java"


# instance fields
.field public final a:Landroid/widget/RelativeLayout;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Landroid/widget/ImageView;

.field public final d:Lcom/sec/android/app/camera/widget/ResizableRect;

.field public final f:Landroidx/constraintlayout/widget/Guideline;

.field public final g:Landroid/widget/TextView;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final l:Landroidx/constraintlayout/widget/Guideline;

.field public final m:Landroid/widget/TextView;

.field public final n:Lcom/airbnb/lottie/LottieAnimationView;

.field public final o:Lcom/airbnb/lottie/LottieAnimationView;

.field public final p:Landroidx/constraintlayout/widget/Guideline;

.field public final q:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Lcom/sec/android/app/camera/widget/ResizableRect;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/LottieAnimationView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/RelativeLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/o8;->a:Landroid/widget/RelativeLayout;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/o8;->b:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/o8;->c:Landroid/widget/ImageView;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/o8;->d:Lcom/sec/android/app/camera/widget/ResizableRect;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/o8;->f:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/o8;->g:Landroid/widget/TextView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/o8;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/o8;->l:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/o8;->m:Landroid/widget/TextView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/o8;->n:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/o8;->o:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/o8;->p:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/o8;->q:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/o8;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/o8;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/o8;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/o8;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0123

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/o8;

    return-object p0
.end method
