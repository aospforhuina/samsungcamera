.class public final synthetic Lcom/samsung/android/camera/core2/device/e1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

.field public final synthetic b:Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/e1;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/e1;->b:Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/e1;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/e1;->b:Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter$Builder;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;->a(Lcom/samsung/android/camera/core2/device/CamDeviceImpl$CameraDeviceStateCallbacks;Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter$Builder;Ljava/lang/String;)V

    return-void
.end method
