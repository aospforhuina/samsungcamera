.class public interface abstract Lcom/samsung/android/camera/core2/callback/PictureCallback;
.super Ljava/lang/Object;
.source "PictureCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/callback/PictureCallback$ErrorReason;
    }
.end annotation


# virtual methods
.method public abstract onDraftPostProcessingPictureTaken(Landroid/net/Uri;Ljava/io/File;Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onError(ILcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onPostProcessingError(Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onPostProcessingFrameCollectionCompleted(Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onPostProcessingFrameCollectionStopped(Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onPostProcessingPictureTaken(Ljava/io/File;Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onProcessingFrameCollected(ILcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onProcessingPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onProgress(ILcom/samsung/android/camera/core2/CamDevice;)V
.end method

.method public abstract onShutter(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V
.end method
