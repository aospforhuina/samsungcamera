.class interface abstract Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;
.super Ljava/lang/Object;
.source "RecordingSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MediaRecorderEventListener"
.end annotation


# virtual methods
.method public abstract onDbUpdatePrepared(Landroid/content/ContentValues;Ljava/lang/String;)V
.end method

.method public abstract onError()V
.end method

.method public abstract onMaxDurationReached()V
.end method

.method public abstract onMaxFileSizeApproaching()Z
.end method

.method public abstract onMaxFileSizeReached()V
.end method

.method public abstract onMediaRecorderPrepared(Landroid/media/MediaRecorder;)V
.end method

.method public abstract onNextOutputFileStarted(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
.end method

.method public abstract onRecordingTick(JJ)V
.end method

.method public abstract onTrackStarted()V
.end method
