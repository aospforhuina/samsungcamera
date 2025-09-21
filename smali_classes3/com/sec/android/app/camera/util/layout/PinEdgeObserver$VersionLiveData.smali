.class Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;
.super Landroidx/lifecycle/LiveData;
.source "PinEdgeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/util/layout/PinEdgeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionLiveData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private version:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/util/layout/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;-><init>()V

    return-void
.end method


# virtual methods
.method public getVersion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->version:I

    return p0
.end method

.method protected postValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->version:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->version:I

    .line 2
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected setValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->version:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/util/layout/PinEdgeObserver$VersionLiveData;->version:I

    .line 2
    invoke-super {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
