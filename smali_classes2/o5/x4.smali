.class public abstract Lo5/x4;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeFunBinding.java"


# instance fields
.field public final a:Landroid/widget/ImageButton;

.field public final b:Landroid/widget/RelativeLayout;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

.field public final f:Landroid/widget/ImageView;

.field public final g:Landroid/widget/TextView;

.field public final k:Landroid/widget/ImageView;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/ImageView;

.field public final n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

.field public final o:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final p:Landroidx/constraintlayout/widget/Guideline;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/RelativeLayout;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/x4;->a:Landroid/widget/ImageButton;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/x4;->b:Landroid/widget/RelativeLayout;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/x4;->c:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/x4;->d:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/x4;->f:Landroid/widget/ImageView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/x4;->g:Landroid/widget/TextView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/x4;->k:Landroid/widget/ImageView;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/x4;->l:Landroid/widget/ImageView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/x4;->m:Landroid/widget/ImageView;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/x4;->n:Lcom/sec/android/app/camera/widget/RecordingTimeIndicator;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/x4;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/x4;->p:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/x4;->q:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/x4;->r:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/x4;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/x4;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/x4;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/x4;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00f5

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/x4;

    return-object p0
.end method
