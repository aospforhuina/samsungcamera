.class public interface abstract Lcom/sec/android/app/camera/shootingmode/video/VideoContract$Presenter;
.super Ljava/lang/Object;
.source "VideoContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/video/VideoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract createAutoFramingPresenter(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;)V
.end method

.method public abstract createFocusEnhancerPresenter(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$View;)V
.end method

.method public abstract isVideoAutoFramingButtonEnabled()Z
.end method
