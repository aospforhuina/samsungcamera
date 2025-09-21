.class public interface abstract Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;
.super Ljava/lang/Object;
.source "RecordingSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;
    }
.end annotation


# virtual methods
.method public abstract cancelRecording()V
.end method

.method public abstract clearSessions()V
.end method

.method public abstract closeFileDescriptors()V
.end method

.method public abstract createRecordingSession(IZ)Landroid/view/Surface;
.end method

.method public abstract getInitialFacing()I
.end method

.method public abstract getMaxRecordingTimeInMs()I
.end method

.method public abstract getRecordingOrientation()I
.end method

.method public abstract getRecordingStorage()I
.end method

.method public abstract getTotalRecordingTimeInMs()J
.end method

.method public abstract isAudioRecordingDisabled()Z
.end method

.method public abstract isHighSpeedRecording()Z
.end method

.method public abstract isMaxDurationLimited()Z
.end method

.method public abstract isStopRecordingAvailable()Z
.end method

.method public abstract isSwitchFacingWhileRecordingSupported()Z
.end method

.method public abstract pauseRecording()V
.end method

.method public abstract prepareRecording(Z)V
.end method

.method public abstract prepareStartRecording()V
.end method

.method public abstract prepareSwitchMultiCameraFacing()V
.end method

.method public abstract registerVideo()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract releaseMediaRecorder()V
.end method

.method public abstract resumeRecording()V
.end method

.method public abstract setSessionEventListener(Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;)V
.end method

.method public abstract startCleanupFileHandlerThread()V
.end method

.method public abstract startRecording()V
.end method

.method public abstract stopCleanupFileHandlerThread()V
.end method

.method public abstract stopRecording()V
.end method

.method public abstract switchFacing()V
.end method

.method public abstract updateLocationInfo()V
.end method

.method public abstract updateOrientationHint(I)V
.end method
