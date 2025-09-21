.class Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;
.super Landroid/os/Handler;
.source "MenuLayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/MenuLayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuHandler"
.end annotation


# static fields
.field private static final HIDE_MENU:I = 0x2

.field private static final SHOW_MENU:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MenuHandler"


# instance fields
.field private mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

.field private final mMenuManager:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    sget-object p2, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->EMPTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mMenuManager:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;)Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    return-object p0
.end method


# virtual methods
.method collapseMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method exists(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getCurrentShowingId()Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mMenuManager:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->f(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    if-ne p1, v0, :cond_2

    const-string p0, "MenuHandler"

    const-string p1, "Already showing."

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->EMPTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    if-eq p1, v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mMenuManager:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->f(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mMenuManager:Lcom/sec/android/app/camera/layer/menu/MenuLayerView;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/layer/menu/MenuLayerView;->g(Lcom/sec/android/app/camera/layer/menu/MenuLayerView;Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V

    :goto_0
    return-void
.end method

.method hideFinished()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->EMPTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    return-void
.end method

.method hideMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method isMenuActive()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;->EMPTY:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method showFinished(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/MenuLayerView$MenuHandler;->mCurrentShowingId:Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;

    return-void
.end method

.method showMenu(Lcom/sec/android/app/camera/interfaces/MenuLayerManager$MenuId;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
