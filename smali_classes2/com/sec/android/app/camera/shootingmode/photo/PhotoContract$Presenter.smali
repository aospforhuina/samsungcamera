.class public interface abstract Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract$Presenter;
.super Ljava/lang/Object;
.source "PhotoContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/photo/PhotoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract createFocusEnhancerPresenter(Lcom/sec/android/app/camera/shootingmode/common/focusenhancer/FocusEnhancerContract$View;)V
.end method

.method public abstract createIntelligentPresenter(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$View;)V
.end method

.method public abstract createZoomMapPresenter(Lcom/sec/android/app/camera/shootingmode/photo/zoommapui/ZoomMapContract$View;)V
.end method

.method public abstract onQrResetRequested()V
.end method
