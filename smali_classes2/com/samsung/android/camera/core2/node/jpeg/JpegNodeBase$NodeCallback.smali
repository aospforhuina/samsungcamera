.class public interface abstract Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase$NodeCallback;
.super Ljava/lang/Object;
.source "JpegNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/jpeg/JpegNodeBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NodeCallback"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onThumbnail(Lcom/samsung/android/camera/core2/util/DirectBuffer;ILandroid/util/Size;)V
.end method
