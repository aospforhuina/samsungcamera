.class public Lcom/google/android/material/navigation/d;
.super Landroidx/appcompat/view/menu/BaseMenuPresenter;
.source "NavigationBarPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/d$d;,
        Lcom/google/android/material/navigation/d$f;,
        Lcom/google/android/material/navigation/d$e;,
        Lcom/google/android/material/navigation/d$g;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/menu/MenuBuilder;

.field private b:Lcom/google/android/material/navigation/c;

.field private c:Z

.field private d:I

.field private f:Landroid/content/Context;

.field private g:Z

.field private k:Landroid/os/Handler;

.field private l:Lcom/google/android/material/navigation/d$d;

.field private final m:Lcom/google/android/material/navigation/d$f;

.field private n:Lcom/google/android/material/navigation/d$e;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget v0, Landroidx/appcompat/R$layout;->sesl_action_menu_layout:I

    sget v1, Landroidx/appcompat/R$layout;->sesl_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/material/navigation/d;->c:Z

    .line 3
    iput-boolean p1, p0, Lcom/google/android/material/navigation/d;->g:Z

    .line 4
    new-instance p1, Lcom/google/android/material/navigation/d$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/navigation/d$a;-><init>(Lcom/google/android/material/navigation/d;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/d;->k:Landroid/os/Handler;

    .line 5
    new-instance p1, Lcom/google/android/material/navigation/d$f;

    invoke-direct {p1, p0}, Lcom/google/android/material/navigation/d$f;-><init>(Lcom/google/android/material/navigation/d;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/d;->m:Lcom/google/android/material/navigation/d$f;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/navigation/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/navigation/d;->j()V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/navigation/d;)Lcom/google/android/material/navigation/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/navigation/d;)Lcom/google/android/material/navigation/d$f;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/d;->m:Lcom/google/android/material/navigation/d$f;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/navigation/d;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/d;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/navigation/d;Lcom/google/android/material/navigation/d$e;)Lcom/google/android/material/navigation/d$e;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/d;->n:Lcom/google/android/material/navigation/d$e;

    return-object p1
.end method

.method static synthetic f(Lcom/google/android/material/navigation/d;Lcom/google/android/material/navigation/d$d;)Lcom/google/android/material/navigation/d$d;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/d;->l:Lcom/google/android/material/navigation/d$d;

    return-object p1
.end method

.method private j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 3
    iget-object v1, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    aput v4, v2, v3

    const-string v3, "y"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 7
    new-instance v2, Lcom/google/android/material/navigation/d$c;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/navigation/d$c;-><init>(Lcom/google/android/material/navigation/d;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public bindItemView(Landroidx/appcompat/view/menu/MenuItemImpl;Landroidx/appcompat/view/menu/MenuView$ItemView;)V
    .locals 0

    return-void
.end method

.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g(Lcom/google/android/material/navigation/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    return-void
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/d;->d:I

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    return-object p0
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/d;->c:Z

    return-void
.end method

.method hideOverflowMenu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/d;->l:Lcom/google/android/material/navigation/d$d;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Landroidx/appcompat/view/menu/BaseMenuPresenter;->mMenuView:Landroidx/appcompat/view/menu/MenuView;

    if-eqz v2, :cond_0

    .line 2
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/material/navigation/d;->l:Lcom/google/android/material/navigation/d$d;

    return v1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/d;->n:Lcom/google/android/material/navigation/d$e;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->dismiss()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method i(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/navigation/d;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/d;->l:Lcom/google/android/material/navigation/d$d;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/material/navigation/d$e;

    iget-object v3, p0, Lcom/google/android/material/navigation/d;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    iget-object v5, v1, Lcom/google/android/material/navigation/c;->L:Lcom/google/android/material/navigation/a;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/material/navigation/d$e;-><init>(Lcom/google/android/material/navigation/d;Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZLcom/google/android/material/navigation/d$a;)V

    .line 4
    iput-object v0, p0, Lcom/google/android/material/navigation/d;->n:Lcom/google/android/material/navigation/d$e;

    .line 5
    new-instance p1, Lcom/google/android/material/navigation/d$d;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/material/navigation/d$d;-><init>(Lcom/google/android/material/navigation/d;Lcom/google/android/material/navigation/d$e;Lcom/google/android/material/navigation/d$a;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/d;->l:Lcom/google/android/material/navigation/d$d;

    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 7
    invoke-super {p0, v1}, Landroidx/appcompat/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 1

    .line 1
    iput-object p2, p0, Lcom/google/android/material/navigation/d;->a:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    invoke-virtual {v0, p2}, Lcom/google/android/material/navigation/c;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/material/navigation/d;->f:Landroid/content/Context;

    return-void
.end method

.method isOverflowMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/d;->n:Lcom/google/android/material/navigation/d$e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuPopupHelper;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/d$g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    check-cast p1, Lcom/google/android/material/navigation/d$g;

    iget v1, p1, Lcom/google/android/material/navigation/d$g;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/c;->y(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/navigation/d$g;->b:Lcom/google/android/material/internal/f;

    .line 5
    invoke-static {v0, p1}, Ls1/b;->b(Landroid/content/Context;Lcom/google/android/material/internal/f;)Landroid/util/SparseArray;

    move-result-object p1

    .line 6
    iget-object p0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/c;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/material/navigation/d$g;

    invoke-direct {v0}, Lcom/google/android/material/navigation/d$g;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/c;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/navigation/d$g;->a:I

    .line 3
    iget-object p0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/material/navigation/c;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Ls1/b;->c(Landroid/util/SparseArray;)Lcom/google/android/material/internal/f;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/material/navigation/d$g;->b:Lcom/google/android/material/internal/f;

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/navigation/d;->d:I

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/navigation/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/material/navigation/d;->g:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/google/android/material/navigation/d;->k:Landroid/os/Handler;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/d;->k:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/d;->k:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    new-instance v0, Lcom/google/android/material/navigation/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/navigation/d$b;-><init>(Lcom/google/android/material/navigation/d;)V

    const-wide/16 v1, 0xb4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 7
    iget-object p0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/c;->f()V

    goto :goto_0

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/navigation/d;->b:Lcom/google/android/material/navigation/c;

    invoke-virtual {p0}, Lcom/google/android/material/navigation/c;->B()V

    :goto_0
    return-void
.end method
