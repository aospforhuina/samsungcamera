.class public interface abstract Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureEventListener"
.end annotation


# virtual methods
.method public abstract onCaptureCancelled()V
.end method

.method public abstract onCaptureCompleted()V
.end method

.method public abstract onCaptureInterrupted()V
.end method

.method public abstract onCaptureRequested()V
.end method

.method public abstract onCaptureStarted()V
.end method

.method public abstract onCaptureStopped()V
.end method

.method public abstract onPostPictureProcessingCompleted()V
.end method

.method public abstract onShutter()V
.end method
