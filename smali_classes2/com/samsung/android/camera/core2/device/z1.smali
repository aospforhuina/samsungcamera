.class public final synthetic Lcom/samsung/android/camera/core2/device/z1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/TotalCaptureResult;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/z1;->a:Landroid/hardware/camera2/TotalCaptureResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/z1;->a:Landroid/hardware/camera2/TotalCaptureResult;

    check-cast p1, Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDevicePrevCaptureCallback;->e(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V

    return-void
.end method
