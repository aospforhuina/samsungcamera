.class final enum Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy$1;
.super Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;
.source "CamDeviceCaptureRequestGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy;-><init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/device/f0;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/camera/core2/device/d0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceCaptureRequestGroup$Policy$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public b(II)I
    .locals 0

    div-int/2addr p1, p2

    return p1
.end method
