.class public interface abstract Lcom/sec/android/app/camera/interfaces/AttachModeManager;
.super Ljava/lang/Object;
.source "AttachModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;,
        Lcom/sec/android/app/camera/interfaces/AttachModeManager$AttachType;
    }
.end annotation


# virtual methods
.method public abstract getPreviousPreviewRect()Landroid/graphics/Rect;
.end method

.method public abstract getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;
.end method

.method public abstract getRequestedRecordingDurationLimit()I
.end method

.method public abstract getRequestedRecordingSizeLimit()J
.end method

.method public abstract getRequestedSaveUri()Landroid/net/Uri;
.end method

.method public abstract isAttachFragmentVisible()Z
.end method

.method public abstract isLocationPermissionGranted()Z
.end method

.method public abstract isVideoResolutionRequested()Z
.end method

.method public abstract isVideoSavedOnRequestedUri()Z
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract retryAttachVideoRecording()V
.end method

.method public abstract setPreviousPreviewRect(Landroid/graphics/Rect;)V
.end method

.method public abstract setVideoSavedOnRequestedUri(Z)V
.end method

.method public abstract startAttachFragment()V
.end method

.method public abstract updateAttachMode(Ljava/lang/String;)V
.end method

.method public abstract updateIntentForAttachMode()V
.end method
