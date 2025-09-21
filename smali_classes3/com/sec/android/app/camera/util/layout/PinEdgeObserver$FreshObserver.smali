.class Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;
.super Ljava/lang/Object;
.source "PinEdgeObserver.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FreshObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final liveData:Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData<",
            "*>;"
        }
    .end annotation
.end field

.field private final sinceVersion:I


# direct methods
.method public constructor <init>(Landroidx/lifecycle/Observer;Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "TT;>;",
            "Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData<",
            "*>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;->delegate:Landroidx/lifecycle/Observer;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;->liveData:Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;

    .line 4
    iput p3, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;->sinceVersion:I

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;->liveData:Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->getVersion()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;->sinceVersion:I

    if-le v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$FreshObserver;->delegate:Landroidx/lifecycle/Observer;

    invoke-interface {p0, p1}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
