.class public Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;
.super Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;
.source "ColorToneV2TabView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView<",
        "Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$View;"
    }
.end annotation


# instance fields
.field private mViewBinding:Lo5/k2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lo5/k2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/k2;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    .line 2
    iget-object v0, v0, Lo5/k2;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;->enableBackgroundPartialBlur(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;

    invoke-virtual {v0, p0}, Lo5/k2;->f(Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object v1, v1, Lo5/k2;->l:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->setShutterAreaCenterGuideline(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object v1, v1, Lo5/k2;->g:Landroid/widget/Space;

    invoke-virtual {v1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 5
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object v0, v0, Lo5/k2;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    int-to-float p1, p1

    .line 7
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    .line 8
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 9
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 10
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 11
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p1, p1, Lo5/k2;->g:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p1, p1, Lo5/k2;->g:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p1, p1, Lo5/k2;->g:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 15
    iput v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 16
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 17
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 18
    iput v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 19
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p1, p1, Lo5/k2;->g:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    .line 20
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p1, p1, Lo5/k2;->g:Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/widget/Space;->getId()I

    move-result p1

    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p1, p1, Lo5/k2;->g:Landroid/widget/Space;

    invoke-virtual {p1, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object p0, p0, Lo5/k2;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->setPresenter(Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabContract$Presenter;

    return-void
.end method

.method public setSelectedButton(ZZ)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object v0, v0, Lo5/k2;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object v0, v0, Lo5/k2;->a:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/colortone/ColorToneV2TabView;->mViewBinding:Lo5/k2;

    iget-object v1, v0, Lo5/k2;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, v0, Lo5/k2;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    iget-object p1, v0, Lo5/k2;->k:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lo5/k2;->a:Landroid/widget/Button;

    :goto_0
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractColorToneTabView;->updateButtonBackground(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/widget/Button;Z)V

    return-void
.end method

.method public showSlider()V
    .locals 0

    return-void
.end method
