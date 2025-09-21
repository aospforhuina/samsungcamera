.class public Lcom/sec/android/app/camera/layer/menu/MenuLayerView;
.super Landroid/widget/FrameLayout;
.source "MenuLayerView.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/MenuLayerManager;
.implements Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$View;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuLayerView"


# instance fields
.field private mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

.field private mLastOrientation:I

.field private final mMenus:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;",
            "Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

.field private mViewBinding:Lo5/r0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    .line 3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MenuLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Ljava/util/EnumMap;

    const-class p2, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    invoke-direct {p1, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inflate : Start["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MenuLayerView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->lambda$clear$0(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->lambda$onOrientationChanged$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->lambda$clearInvisibleMenus$2(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;)V

    return-void
.end method

.method private clearInvisibleMenus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/u;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/layer/menu/u;-><init>(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;)V

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private createMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;->createMenuView(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->initialize()V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->clear()V

    :goto_0
    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;)Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;)Ljava/util/EnumMap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->handleHideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->handleShowMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method private handleHideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleHideMenu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already hided."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MenuLayerView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->hideFinished()V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mViewBinding:Lo5/r0;

    iget-object v1, v1, Lo5/r0;->a:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->hideFinished()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;->onHideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method private handleShowMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->createMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;

    :cond_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mViewBinding:Lo5/r0;

    iget-object v1, v1, Lo5/r0;->a:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mLastOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;->onOrientationChanged(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->showFinished(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;->onShowMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    :cond_1
    return-void
.end method

.method private isIgnoreClearInvisibleMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$clear$0(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;)V
    .locals 0

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->clear()V

    return-void
.end method

.method private synthetic lambda$clearInvisibleMenus$2(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuView;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->exists(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->isIgnoreClearInvisibleMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;->clearMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onOrientationChanged$1(Landroid/view/View;I)V
    .locals 0

    check-cast p0, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iput-object v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/layer/menu/v;->a:Lcom/sec/android/app/camera/layer/menu/v;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mMenus:Ljava/util/EnumMap;

    invoke-virtual {p0}, Ljava/util/EnumMap;->clear()V

    return-void
.end method

.method public collapseMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->collapseMenu()V

    return-void
.end method

.method public getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$1;-><init>(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;)V

    return-object v0
.end method

.method public hideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Landroid/animation/Animator;)V

    return-void
.end method

.method public hideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;Landroid/animation/Animator;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->hideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method

.method public hideVisibleMenu()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->getCurrentShowingId()Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->handleHideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public initialize()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;-><init>(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    return-void
.end method

.method public isActive(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->exists(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z

    move-result p0

    return p0
.end method

.method public isMenuActive()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->isMenuActive()Z

    move-result p0

    return p0
.end method

.method public onLaunchMenu(Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;->onLaunchMenu(Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mLastOrientation:I

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mViewBinding:Lo5/r0;

    iget-object v1, v1, Lo5/r0;->a:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mViewBinding:Lo5/r0;

    iget-object v1, v1, Lo5/r0;->a:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Lu3/b;->b:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v2, Lcom/sec/android/app/camera/layer/menu/t;

    invoke-direct {v2, v1, p1}, Lcom/sec/android/app/camera/layer/menu/t;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 7
    :cond_0
    check-cast v1, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/LayerManager$ViewOrientationEventListener;->onOrientationChanged(I)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->clearInvisibleMenus()V

    return-void
.end method

.method public bridge synthetic setPresenter(Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->setPresenter(Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;)V

    return-void
.end method

.method public setPresenter(Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mPresenter:Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;

    return-void
.end method

.method public setViewBinding(Landroidx/databinding/ViewDataBinding;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inflate : End["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MenuLayerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    check-cast p1, Lo5/r0;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mViewBinding:Lo5/r0;

    return-void
.end method

.method public showMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->mHandler:Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->showMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    return-void
.end method
