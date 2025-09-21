.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext;
.super Ljava/lang/Object;
.source "CameraContext.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ActivityContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$FunListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;,
        Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;
    }
.end annotation


# static fields
.field public static final INSIDE_POCKET_FINISH_CAMERA_MSG:I = 0x64


# virtual methods
.method public abstract addFunModeLens(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snap/camerakit/lenses/LensesComponent$Lens;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract changeShootingMode(IZ)Z
.end method

.method public abstract checkMediaResourceForRecording(Z)Z
.end method

.method public abstract enableQrCodeDetection(ZJZ)V
.end method

.method public abstract getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;
.end method

.method public abstract getBackgroundHandler()Landroid/os/Handler;
.end method

.method public abstract getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;
.end method

.method public abstract getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;
.end method

.method public abstract getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;
.end method

.method public abstract getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;
.end method

.method public abstract getCurrentWindowHeight()I
.end method

.method public abstract getCurrentWindowWidth()I
.end method

.method public abstract getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;
.end method

.method public abstract getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;
.end method

.method public abstract getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;
.end method

.method public abstract getMainHandler()Landroid/os/Handler;
.end method

.method public abstract getNavigationBarInsets()Landroid/graphics/Insets;
.end method

.method public abstract getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;
.end method

.method public abstract getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
.end method

.method public abstract getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;
.end method

.method public abstract getUriListInSecureCamera()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract handleSmartScanCaptureEvent(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V
.end method

.method public abstract isAngleChangeSupported()Z
.end method

.method public abstract isAttachFragmentVisible()Z
.end method

.method public abstract isCameraNotchHidden()Z
.end method

.method public abstract isCaptureAvailable()Z
.end method

.method public abstract isCaptureRequested()Z
.end method

.method public abstract isCapturing()Z
.end method

.method public abstract isEngineRunning()Z
.end method

.method public abstract isFilterSupported()Z
.end method

.method public abstract isGalleryActivityLaunching()Z
.end method

.method public abstract isInLockTaskMode()Z
.end method

.method public abstract isLayerInitialized()Z
.end method

.method public abstract isLensChangingAvailable()Z
.end method

.method public abstract isLiveHdrSupported(I)Z
.end method

.method public abstract isMyFilterSupported()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isRecordingAvailable(Z)Z
.end method

.method public abstract isRecordingProcessStarted()Z
.end method

.method public abstract isSeamlessZoomAvailable(I)Z
.end method

.method public abstract isSensorCropEnabled()Z
.end method

.method public abstract isSettingActivityLaunching()Z
.end method

.method public abstract isShootingModeActivated()Z
.end method

.method public abstract isStopBackgroundRecordingRequested()Z
.end method

.method public abstract isTouchPreviewArea(II)Z
.end method

.method public abstract isZoomAvailable()Z
.end method

.method public abstract isZoomSupported()Z
.end method

.method public abstract launchGallery(Landroid/widget/ImageView;)V
.end method

.method public abstract onChangePreviewSurfaceSizeRequested()V
.end method

.method public abstract pausePresentation()V
.end method

.method public abstract playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V
.end method

.method public abstract registerFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
.end method

.method public abstract registerFunAdapterListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FunListener;)V
.end method

.method public abstract registerGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract registerLowMemoryListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
.end method

.method public abstract requestHighAccuracyLocationMode()V
.end method

.method public abstract restartInactivityTimer()V
.end method

.method public abstract resumePresentation()V
.end method

.method public abstract setPictureSavingEventListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;)V
.end method

.method public abstract showFunModeLensGuide(Ljava/lang/String;Z)V
.end method

.method public abstract startVoiceRecognizer()V
.end method

.method public abstract stopInactivityTimer()V
.end method

.method public abstract stopVoiceRecognizer()V
.end method

.method public abstract unregisterFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
.end method

.method public abstract unregisterFunAdapterListener()V
.end method

.method public abstract unregisterGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract unregisterLowMemoryListener(Lcom/sec/android/app/camera/interfaces/CameraContext$LowMemoryListener;)V
.end method

.method public abstract updateLatestMedia()V
.end method

.method public abstract updateSecureUriList()V
.end method

.method public abstract updateThumbnail()V
.end method
