.class public interface abstract Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;
.super Ljava/lang/Object;
.source "IntelligentContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getPreviewRect()Landroid/graphics/Rect;
.end method

.method public abstract hideCompositionGuide()V
.end method

.method public abstract onDetailEnhancerButtonClick(Z)V
.end method

.method public abstract onFillMoonAnimationCompleted()V
.end method

.method public abstract onIntelligentManagerCreated(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentManager;)V
.end method

.method public abstract onNightShutterAnimationEnd()V
.end method

.method public abstract onSceneDetectButtonClicked(Z)V
.end method

.method public abstract onSceneOptimizerToastVisibilityChanged(Z)V
.end method

.method public abstract onSmartScanCaptureButtonClicked()V
.end method
