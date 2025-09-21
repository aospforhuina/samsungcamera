.class Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;
.super Landroid/media/AudioDeviceCallback;
.source "CameraAudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;->this$0:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;->this$0:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->p(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->hasWiredDevice([Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;->this$0:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->r(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    :cond_1
    return-void
.end method

.method public onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;->this$0:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    invoke-static {v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->p(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->hasWiredDevice([Landroid/media/AudioDeviceInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;->this$0:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;

    invoke-static {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->s(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    :cond_1
    return-void
.end method
