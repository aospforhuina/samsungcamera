.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraAudioManager;
.super Ljava/lang/Object;
.source "CameraAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;,
        Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;,
        Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;,
        Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;,
        Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;,
        Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelChannel;
    }
.end annotation


# virtual methods
.method public abstract abandonAudioFocus()V
.end method

.method public abstract deinitializeAudioInputController()V
.end method

.method public abstract disableSystemSound()V
.end method

.method public abstract enableMultiMicZoomFocus(Z)V
.end method

.method public abstract enableSystemSound()V
.end method

.method public abstract initializeAudioInputController()V
.end method

.method public abstract initializeBluetoothMic()V
.end method

.method public abstract isBluetoothLeMicAvailable()Z
.end method

.method public abstract isInputLevelMonitorRunning()Z
.end method

.method public abstract isInputTypeChanging()Z
.end method

.method public abstract isMultiMicZoomFocusEnabled()Z
.end method

.method public abstract isShutterSoundEnabled()Z
.end method

.method public abstract isShutterSoundForced()Z
.end method

.method public abstract playSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;I)V
.end method

.method public abstract prepareMultiMicController(ILandroid/util/Range;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract releaseMultiMicZoomFocus()V
.end method

.method public abstract requestAudioFocus()V
.end method

.method public abstract requestGainTransientAudioFocus()V
.end method

.method public abstract setAudioInputLevelUpdateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
.end method

.method public abstract setBluetoothMicStateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;)V
.end method

.method public abstract setExternalAudioInputDeviceInfoUpdateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;)V
.end method

.method public abstract setMediaRecorder(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMultiMicZoomValue(F)V
.end method

.method public abstract startLevelMonitor()V
.end method

.method public abstract stop()V
.end method

.method public abstract stopLevelMonitor()V
.end method

.method public abstract stopSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;)V
.end method
