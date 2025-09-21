.class public interface abstract Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;
.super Ljava/lang/Object;
.source "CamDevice.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/CamDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiPictureCallback"
.end annotation


# virtual methods
.method public abstract a(IJ)V
.end method

.method public abstract b(Ljava/lang/Long;)V
.end method

.method public abstract d(Landroid/hardware/camera2/CaptureFailure;II)V
.end method

.method public abstract e(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/CamCapability;ZII)V
.end method
