.class public interface abstract Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;
.super Ljava/lang/Object;
.source "RecordingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/RecordingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecordingManagerEventListener"
.end annotation


# virtual methods
.method public abstract onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V
.end method

.method public abstract onRecordingMaxDurationReached()V
.end method

.method public abstract onRecordingMaxFileSizeReached()V
.end method

.method public abstract onRecordingTick(JJ)V
.end method

.method public abstract onRecordingTrackStarted()V
.end method

.method public abstract onVideoDbUpdatePreparedEvent(Landroid/content/ContentValues;Ljava/lang/String;)V
.end method
