.class public abstract Lo5/j5;
.super Landroidx/databinding/ViewDataBinding;
.source "ShootingModeMoreBinding.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Landroidx/constraintlayout/widget/Guideline;

.field public final c:Landroid/widget/RelativeLayout;

.field public final d:Landroid/widget/TextView;

.field public final f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

.field public final g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

.field public final k:Landroid/widget/Button;

.field public final l:Landroid/widget/ImageView;

.field public final m:Landroid/widget/RelativeLayout;

.field public final n:Landroid/widget/Button;

.field public final o:Landroid/widget/RelativeLayout;

.field public final p:Landroid/widget/ImageView;

.field public final q:Landroid/widget/RelativeLayout;

.field public final r:Landroid/widget/LinearLayout;

.field public final s:Landroid/view/View;

.field public final t:Landroid/widget/Button;

.field public final u:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final v:Landroidx/constraintlayout/widget/Guideline;

.field public final w:Landroid/widget/TextView;

.field protected x:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/RelativeLayout;Landroid/widget/TextView;Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/Button;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/j5;->a:Landroid/view/View;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/j5;->b:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/j5;->c:Landroid/widget/RelativeLayout;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/j5;->d:Landroid/widget/TextView;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/j5;->f:Lcom/sec/android/app/camera/shootingmode/more/gridlist/MoreGridListView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/j5;->g:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/j5;->k:Landroid/widget/Button;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/j5;->l:Landroid/widget/ImageView;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/j5;->m:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/j5;->n:Landroid/widget/Button;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/j5;->o:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/j5;->p:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/j5;->q:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/j5;->r:Landroid/widget/LinearLayout;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Lo5/j5;->s:Landroid/view/View;

    move-object/from16 v1, p19

    .line 17
    iput-object v1, v0, Lo5/j5;->t:Landroid/widget/Button;

    move-object/from16 v1, p20

    .line 18
    iput-object v1, v0, Lo5/j5;->u:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p21

    .line 19
    iput-object v1, v0, Lo5/j5;->v:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p22

    .line 20
    iput-object v1, v0, Lo5/j5;->w:Landroid/widget/TextView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/j5;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/j5;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/j5;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/j5;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d00fb

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/j5;

    return-object p0
.end method


# virtual methods
.method public abstract f(Ljava/lang/String;)V
.end method
