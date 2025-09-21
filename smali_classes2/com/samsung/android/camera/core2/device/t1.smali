.class public final synthetic Lcom/samsung/android/camera/core2/device/t1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;

.field public final synthetic b:Ljava/lang/Long;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/t1;->a:Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/t1;->b:Ljava/lang/Long;

    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/t1;->c:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/t1;->a:Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/t1;->b:Ljava/lang/Long;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/t1;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;->b(Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;Ljava/lang/Long;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
