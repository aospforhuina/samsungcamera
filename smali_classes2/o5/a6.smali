.class public abstract Lo5/a6;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModePanoramaGuideBinding.java"


# instance fields
.field public final a:Lcom/airbnb/lottie/LottieAnimationView;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/widget/ImageView;

.field public final d:Landroid/widget/ImageView;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/TextView;

.field public final k:Lcom/airbnb/lottie/LottieAnimationView;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/ImageView;

.field public final n:Lcom/airbnb/lottie/LottieAnimationView;

.field public final o:Landroid/widget/ImageView;

.field public final p:Lcom/airbnb/lottie/LottieAnimationView;

.field public final q:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;Lcom/airbnb/lottie/LottieAnimationView;Landroid/widget/ImageView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/a6;->a:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/a6;->b:Landroid/widget/ImageView;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/a6;->c:Landroid/widget/ImageView;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/a6;->d:Landroid/widget/ImageView;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/a6;->f:Landroid/widget/ImageView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/a6;->g:Landroid/widget/TextView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/a6;->k:Lcom/airbnb/lottie/LottieAnimationView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/a6;->l:Landroid/widget/ImageView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/a6;->m:Landroid/widget/ImageView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/a6;->n:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/a6;->o:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/a6;->p:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/a6;->q:Landroid/widget/ImageView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/a6;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/a6;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/a6;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/a6;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0103

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/a6;

    return-object p0
.end method
