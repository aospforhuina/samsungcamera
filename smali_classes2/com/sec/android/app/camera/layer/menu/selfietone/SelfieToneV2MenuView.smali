.class public Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;
.super Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;
.source "SelfieToneV2MenuView.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuContract$View;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView<",
        "Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuContract$Presenter;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuContract$View;"
    }
.end annotation


# instance fields
.field private mViewBinding:Lo5/u2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->initView()V

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

    invoke-static {v0, p0, v1}, Lo5/u2;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/u2;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->mViewBinding:Lo5/u2;

    .line 2
    iget-object v0, v0, Lo5/u2;->k:Landroidx/constraintlayout/widget/Guideline;

    sget-object v1, Lu3/g;->k:Lu3/g;

    invoke-static {v1}, Lu3/d;->a(Lu3/g;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->mViewBinding:Lo5/u2;

    iget-object p0, p0, Lo5/u2;->b:Landroidx/constraintlayout/widget/Guideline;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/Util;->updateBottomGuideLineIfSmartView(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method

.method private updateLayoutForTablet()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->mViewBinding:Lo5/u2;

    iget-object v1, v1, Lo5/u2;->f:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/widget/RadioButton;->setPadding(IIII)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->mViewBinding:Lo5/u2;

    iget-object p0, p0, Lo5/u2;->c:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0, v2, v0, v2}, Landroid/widget/RadioButton;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->mViewBinding:Lo5/u2;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuContract$Presenter;

    invoke-virtual {v0, p0}, Lo5/u2;->f(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuContract$Presenter;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onOrientationChanged(I)V

    .line 2
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->updateLayoutForTablet()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setSelectedButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->mViewBinding:Lo5/u2;

    iget-object v0, v0, Lo5/u2;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneV2MenuView;->mViewBinding:Lo5/u2;

    iget-object p0, p0, Lo5/u2;->c:Landroid/widget/RadioButton;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method
