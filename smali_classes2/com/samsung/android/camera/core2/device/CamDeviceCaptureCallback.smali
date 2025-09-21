.class Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CamDeviceCaptureCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ForwardCallback_T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

.field protected final b:Lcom/samsung/android/camera/core2/CamCapability;

.field protected final c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TForwardCallback_T;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/device/CamDeviceImpl;",
            "TForwardCallback_T;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o()Lcom/samsung/android/camera/core2/CamCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;->b:Lcom/samsung/android/camera/core2/CamCapability;

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->M1()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;->c:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 5
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;->d:Ljava/lang/Object;

    return-void
.end method

.method b()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TForwardCallback_T;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;->d:Ljava/lang/Object;

    return-object p0
.end method
