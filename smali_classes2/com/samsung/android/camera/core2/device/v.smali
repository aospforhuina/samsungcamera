.class public final synthetic Lcom/samsung/android/camera/core2/device/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/v;->a:Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;

    iput-wide p2, p0, Lcom/samsung/android/camera/core2/device/v;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/v;->a:Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;

    iget-wide v1, p0, Lcom/samsung/android/camera/core2/device/v;->b:J

    invoke-static {v0, v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;->n(Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;J)V

    return-void
.end method
