.class public final synthetic Lcom/samsung/android/camera/core2/device/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/g;->a:Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;

    iput p2, p0, Lcom/samsung/android/camera/core2/device/g;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/g;->a:Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;

    iget p0, p0, Lcom/samsung/android/camera/core2/device/g;->b:I

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;->k(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;I)V

    return-void
.end method
