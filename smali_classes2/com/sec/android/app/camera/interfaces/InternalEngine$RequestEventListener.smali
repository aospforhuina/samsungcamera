.class public interface abstract Lcom/sec/android/app/camera/interfaces/InternalEngine$RequestEventListener;
.super Ljava/lang/Object;
.source "InternalEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/InternalEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestEventListener"
.end annotation


# virtual methods
.method public abstract onApplySettingsRequested(II)V
.end method

.method public abstract onRestartPreviewRequested(II)V
.end method

.method public abstract onStartPreviewPrepared(I)V
.end method

.method public abstract onStartPreviewRequested(II)V
.end method

.method public abstract onStopVideoPreviewRequested(II)V
.end method
