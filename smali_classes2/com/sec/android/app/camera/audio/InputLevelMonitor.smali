.class Lcom/sec/android/app/camera/audio/InputLevelMonitor;
.super Ljava/lang/Object;
.source "InputLevelMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InputLevelMonitor"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mLevelMonitorThread:Lcom/sec/android/app/camera/audio/LevelMonitorThread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAudioRecord()Landroid/media/AudioRecord;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method isRunning()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method declared-synchronized setInputLevelListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/sec/android/app/camera/audio/LevelMonitorThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->setAudioInputUpdateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p0, p1}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method start(Landroid/media/AudioRecord;I)V
    .locals 2

    const-string v0, "InputLevelMonitor"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->create()Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->setBufferSize(I)Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    .line 6
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->setAudioRecord(Landroid/media/AudioRecord;)Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/sec/android/app/camera/audio/LevelMonitorThread$Builder;->build()Lcom/sec/android/app/camera/audio/LevelMonitorThread;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/sec/android/app/camera/audio/LevelMonitorThread;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method stop()V
    .locals 3

    const-string v0, "InputLevelMonitor"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/sec/android/app/camera/audio/LevelMonitorThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/audio/LevelMonitorThread;->stopThread()V

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/sec/android/app/camera/audio/LevelMonitorThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    iput-object v2, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mLevelMonitorThread:Lcom/sec/android/app/camera/audio/LevelMonitorThread;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "stopAudioRecord"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0, v2}, Landroid/media/AudioRecord;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 11
    iput-object v2, p0, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method
