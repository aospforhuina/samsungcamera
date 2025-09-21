.class public interface abstract Lcom/samsung/android/camera/core2/callback/AgifEventCallback;
.super Ljava/lang/Object;
.source "AgifEventCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/MakerCallback;


# virtual methods
.method public abstract onAgifBurstPictureCompleted(ILcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onAgifBurstPictureStarted(ILcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onCaptureResult(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onProgress(ILcom/samsung/android/camera/core2/CamDevice;)V
.end method
