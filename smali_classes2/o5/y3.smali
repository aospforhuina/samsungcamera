.class public abstract Lo5/y3;
.super Landroidx/databinding/ViewDataBinding;
.source "PopupQrCodeBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Landroid/widget/RelativeLayout;

.field public final f:Landroid/widget/TextView;

.field public final g:Landroid/widget/ListView;

.field public final k:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final n:Landroid/widget/ImageView;

.field public final o:Landroidx/constraintlayout/widget/Guideline;

.field public final p:Landroid/widget/RelativeLayout;

.field public final q:Landroid/widget/TextView;

.field public final r:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ListView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/y3;->a:Lcom/sec/android/app/camera/layer/popup/qrcode/QrActionButton;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/y3;->b:Landroid/widget/ImageView;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/y3;->c:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/y3;->d:Landroid/widget/RelativeLayout;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/y3;->f:Landroid/widget/TextView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/y3;->g:Landroid/widget/ListView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/y3;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/y3;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/y3;->m:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/y3;->n:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/y3;->o:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/y3;->p:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/y3;->q:Landroid/widget/TextView;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/y3;->r:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/y3;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/y3;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/y3;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/y3;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d009d

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/y3;

    return-object p0
.end method
