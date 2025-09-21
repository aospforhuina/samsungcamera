.class Lcom/sec/android/app/camera/audio/LevelMonitorThread;
.super Ljava/lang/Thread;
.source "LevelMonitorThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputLevelMonitorThread"


# instance fields
.field private mAudioInputUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

.field private final mAudioRecord:Landroid/media/AudioRecord;

.field private final mBufferSize:I

.field private mIsRunning:Z


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mIsRunning:Z

    .line 3
    iget-object v0, p1, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->mAudioRecord:Landroid/media/AudioRecord;

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mAudioRecord:Landroid/media/AudioRecord;

    .line 4
    iget p1, p1, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->mBufferSize:I

    iput p1, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mBufferSize:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "InputLevelMonitorThread"

    const-string v1, "Start Level Monitor Thread"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mIsRunning:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->updateAudioInputLevel()V

    goto :goto_0

    :cond_0
    const-string p0, "Finish Level Monitor Thread"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAudioInputUpdateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mAudioInputUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

    return-void
.end method

.method stopThread()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mIsRunning:Z

    return-void
.end method

.method protected updateAudioInputLevel()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mBufferSize:I

    new-array v1, v0, [S

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    .line 3
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/AudioUtil;->convertAudioLevel(I[S)Ljava/util/HashMap;

    move-result-object v0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mAudioInputUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelChannel;->LEVEL_LEFT:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelChannel;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelChannel;->LEVEL_RIGHT:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelChannel;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->mAudioInputUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v3, v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;->onAudioInputLevelUpdated(FF)V

    .line 7
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
