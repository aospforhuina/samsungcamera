.class public interface abstract Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract$Presenter;
.super Ljava/lang/Object;
.source "ProVideoContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$Presenter;
.implements Lcom/sec/android/app/camera/shootingmode/pro/ProBaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/pro/ProVideoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract createAudioControlPanelPresenter(Lcom/sec/android/app/camera/shootingmode/pro/audiocontrolpanel/AudioControlPanelContract$View;)V
.end method

.method public abstract createZoomRockerPresenter(Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;)V
.end method

.method public abstract onAudioInputButtonClicked()V
.end method
