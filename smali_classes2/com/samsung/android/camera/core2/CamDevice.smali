.class public abstract Lcom/samsung/android/camera/core2/CamDevice;
.super Ljava/lang/Object;
.source "CamDevice.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$StateCallback;,
        Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;,
        Lcom/samsung/android/camera/core2/CamDevice$SessionMode;,
        Lcom/samsung/android/camera/core2/CamDevice$CaptureState;,
        Lcom/samsung/android/camera/core2/CamDevice$ImageReaderHandlerType;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected volatile d:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/samsung/android/camera/core2/CamDevice;->a:I

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lcom/samsung/android/camera/core2/CamDevice;->b:I

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    .line 5
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;->a:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/CamDevice;->d:Lcom/samsung/android/camera/core2/CamDevice$DeviceStatus;

    return-void
.end method


# virtual methods
.method public abstract A()I
.end method

.method public abstract B(I)V
.end method

.method public abstract C(II)V
.end method

.method public abstract D(I)V
.end method

.method public abstract E(Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;)V
.end method

.method public abstract F(I)V
.end method

.method public abstract G(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V
.end method

.method public abstract H(Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;)V
.end method

.method public abstract I(Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;)V
.end method

.method public abstract J(Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
.end method

.method public abstract K(Lcom/samsung/android/camera/core2/CamDevice$PreviewDepthCallback;)V
.end method

.method public abstract L(Lcom/samsung/android/camera/core2/CamDevice$PreviewCallback;)V
.end method

.method public abstract M(Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;)V
.end method

.method public abstract N(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract O(Ljava/util/List;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;",
            ">;",
            "Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;",
            ")I"
        }
    .end annotation
.end method

.method public abstract P(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I
.end method

.method public abstract Q(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)I
.end method

.method public abstract R(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I
.end method

.method public abstract S(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)I
.end method

.method public abstract T(Lcom/samsung/android/camera/core2/CamDeviceRepeatingRequestCnt;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)I
.end method

.method public abstract U()I
.end method

.method public abstract V()I
.end method

.method public abstract W()V
.end method

.method public abstract X(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract Y(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)V
.end method

.method public abstract a(Landroid/view/Surface;)V
.end method

.method public abstract b()I
.end method

.method public abstract close()V
.end method

.method public abstract d()V
.end method

.method public abstract f(Lcom/samsung/android/camera/core2/container/SessionConfig;)V
.end method

.method public abstract h(Lcom/samsung/android/camera/core2/container/SessionConfig;)V
.end method

.method public abstract k(ILjava/util/Set;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract o()Lcom/samsung/android/camera/core2/CamCapability;
.end method

.method public abstract p()Lcom/samsung/android/camera/core2/CamDevice$CaptureState;
.end method

.method public abstract r()Ljava/lang/String;
.end method

.method public t()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/CamDevice;->c:Ljava/util/List;

    return-object p0
.end method

.method public abstract u()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;
.end method

.method public abstract y()Z
.end method

.method public abstract z(Landroid/view/Surface;)V
.end method
