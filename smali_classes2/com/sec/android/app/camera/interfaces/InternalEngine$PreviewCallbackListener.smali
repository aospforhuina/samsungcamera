.class public interface abstract Lcom/sec/android/app/camera/interfaces/InternalEngine$PreviewCallbackListener;
.super Ljava/lang/Object;
.source "InternalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/InternalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PreviewCallbackListener"
.end annotation


# virtual methods
.method public abstract isEnabled()Z
.end method

.method public abstract onPreviewFrame(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;)V
.end method
