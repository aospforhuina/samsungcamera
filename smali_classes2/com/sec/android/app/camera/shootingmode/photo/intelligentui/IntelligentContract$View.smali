.class public interface abstract Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$View;
.super Ljava/lang/Object;
.source "IntelligentContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/interfaces/BaseContract$View<",
        "Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cancelRunningAnimation()V
.end method

.method public abstract endNightShutterAnimation(Z)V
.end method

.method public abstract hideCompositionGuide()V
.end method

.method public abstract hideDetailEnhancerButton(Z)V
.end method

.method public abstract hideNightScreenFlash(ZFI)V
.end method

.method public abstract hideNightShutter()V
.end method

.method public abstract hideSceneDetectButton(Z)V
.end method

.method public abstract hideSceneOptimizerToast()V
.end method

.method public abstract hideSmartScan()V
.end method

.method public abstract hideSmartScanCaptureButton(Z)V
.end method

.method public abstract hideSuperNightGuide()V
.end method

.method public abstract initializeSceneDetectionButtonBackground(I)V
.end method

.method public abstract isSmartScanCaptureButtonVisible()Z
.end method

.method public abstract isSmartScanVisible()Z
.end method

.method public abstract setDetailEnhancerButtonSelect(Z)V
.end method

.method public abstract setEstimatedCaptureDurationTime(I)V
.end method

.method public abstract setSceneButtonSelected(Z)V
.end method

.method public abstract showCountDownTimer(IZ)V
.end method

.method public abstract showDetailEnhancerButton(Z)V
.end method

.method public abstract showNightScreenFlash(FF)V
.end method

.method public abstract showNightShutter()V
.end method

.method public abstract showSceneOptimizerToast(ZLjava/lang/CharSequence;)V
.end method

.method public abstract showSmartScanCaptureButton(ZZ)V
.end method

.method public abstract showSuperNightGuide(I)V
.end method

.method public abstract startDetailEnhancerButtonClickAnimation()V
.end method

.method public abstract startNightShutterAnimation(I)V
.end method

.method public abstract startNightShutterProcessingAnimation()V
.end method

.method public abstract startSceneDetectButtonClickAnimation(Z)V
.end method

.method public abstract stopNightShutterProcessingAnimation()V
.end method

.method public abstract updateCompositionGuide(Landroid/graphics/PointF;FI)V
.end method

.method public abstract updatePreviewRect(Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
.end method

.method public abstract updateSceneDetectionButtonBackground(I)V
.end method

.method public abstract updateSceneDetectionView(IZZ)V
.end method

.method public abstract updateSmartScan([FLandroid/graphics/Matrix;Z)V
.end method
