.class public abstract Lo5/s;
.super Landroidx/databinding/ViewDataBinding;
.source "KeyScreenCenterButtonBinding.java"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final d:Landroidx/constraintlayout/widget/Guideline;

.field public final f:Landroid/widget/ImageView;

.field public final g:Lcom/airbnb/lottie/LottieAnimationView;

.field public final k:Landroid/widget/ImageButton;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/ImageView;

.field public final n:Landroid/widget/ImageButton;

.field public final o:Landroid/widget/ImageView;

.field public final p:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final q:Landroid/widget/ImageView;

.field public final r:Landroid/widget/ImageView;

.field public final s:Landroid/widget/RelativeLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageButton;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/s;->a:Landroid/widget/TextView;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/s;->b:Landroid/widget/ImageView;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/s;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/s;->d:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/s;->f:Landroid/widget/ImageView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/s;->g:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/s;->k:Landroid/widget/ImageButton;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/s;->l:Landroid/widget/ImageView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/s;->m:Landroid/widget/ImageView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/s;->n:Landroid/widget/ImageButton;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/s;->o:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/s;->p:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/s;->q:Landroid/widget/ImageView;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/s;->r:Landroid/widget/ImageView;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/s;->s:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/s;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/s;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/s;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/s;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d002f

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/s;

    return-object p0
.end method
