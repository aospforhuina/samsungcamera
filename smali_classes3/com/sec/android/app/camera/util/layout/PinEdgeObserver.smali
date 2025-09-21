.class public Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;
.super Ljava/lang/Object;
.source "PinEdgeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;,
        Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PinEdgeObserver"

.field private static mIsPinEdgeRunning:Ljava/lang/Boolean;

.field private static final mPinEdgeStateObservable:Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;-><init>(Lcom/sec/android/app/camera/util/layout/f;)V

    sput-object v0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->mPinEdgeStateObservable:Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/Observer;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->lambda$observePinEdgeMode$0(Landroidx/lifecycle/Observer;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method private static getLifeCycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method private static synthetic lambda$observePinEdgeMode$0(Landroidx/lifecycle/Observer;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->observePinEdgeMode(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static observePinEdgeMode(Landroid/view/View;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->getLifeCycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/util/layout/e;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/util/layout/e;-><init>(Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static observePinEdgeMode(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->mPinEdgeStateObservable:Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;

    new-instance v1, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->getVersion()I

    move-result v2

    invoke-direct {v1, p1, v0, v2}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;-><init>(Landroidx/lifecycle/Observer;Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;I)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static onPinEdgePanelModeChanged(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->mIsPinEdgeRunning:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p0, :cond_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPinEdgePanelModeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PinEdgeObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->mIsPinEdgeRunning:Ljava/lang/Boolean;

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;->mPinEdgeStateObservable:Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
