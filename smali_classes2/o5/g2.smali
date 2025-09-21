.class public abstract Lo5/g2;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuEffectsMenuBinding.java"


# instance fields
.field public final a:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

.field public final b:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

.field public final c:Landroidx/constraintlayout/widget/Guideline;

.field public final d:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneTabView;

.field public final f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;

.field public final g:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV3TabView;

.field public final k:Lcom/google/android/material/tabs/TabLayout;

.field public final l:Landroid/widget/FrameLayout;

.field public final m:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

.field public final o:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final p:Landroidx/constraintlayout/widget/Guideline;

.field public final q:Landroidx/constraintlayout/widget/Guideline;

.field public final r:Landroidx/constraintlayout/widget/Guideline;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;Landroidx/constraintlayout/widget/Guideline;Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneTabView;Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV3TabView;Lcom/google/android/material/tabs/TabLayout;Landroid/widget/FrameLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    move-object v1, p4

    .line 2
    iput-object v1, v0, Lo5/g2;->a:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    move-object v1, p5

    .line 3
    iput-object v1, v0, Lo5/g2;->b:Lcom/sec/android/app/camera/layer/menu/effects/beauty/BeautyTabView;

    move-object v1, p6

    .line 4
    iput-object v1, v0, Lo5/g2;->c:Landroidx/constraintlayout/widget/Guideline;

    move-object v1, p7

    .line 5
    iput-object v1, v0, Lo5/g2;->d:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneTabView;

    move-object v1, p8

    .line 6
    iput-object v1, v0, Lo5/g2;->f:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;

    move-object v1, p9

    .line 7
    iput-object v1, v0, Lo5/g2;->g:Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV3TabView;

    move-object v1, p10

    .line 8
    iput-object v1, v0, Lo5/g2;->k:Lcom/google/android/material/tabs/TabLayout;

    move-object v1, p11

    .line 9
    iput-object v1, v0, Lo5/g2;->l:Landroid/widget/FrameLayout;

    move-object v1, p12

    .line 10
    iput-object v1, v0, Lo5/g2;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v1, p13

    .line 11
    iput-object v1, v0, Lo5/g2;->n:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    move-object/from16 v1, p14

    .line 12
    iput-object v1, v0, Lo5/g2;->o:Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v1, p15

    .line 13
    iput-object v1, v0, Lo5/g2;->p:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p16

    .line 14
    iput-object v1, v0, Lo5/g2;->q:Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Lo5/g2;->r:Landroidx/constraintlayout/widget/Guideline;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/g2;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/g2;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/g2;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/g2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0060

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/g2;

    return-object p0
.end method
