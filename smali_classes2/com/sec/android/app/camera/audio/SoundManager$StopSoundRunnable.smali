.class Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/audio/SoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopSoundRunnable"
.end annotation


# instance fields
.field private mSoundId:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

.field final synthetic this$0:Lcom/sec/android/app/camera/audio/SoundManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/audio/SoundManager;Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/audio/SoundManager;->c(Lcom/sec/android/app/camera/audio/SoundManager;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/audio/SoundManager;->e(Lcom/sec/android/app/camera/audio/SoundManager;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundPool.stop - soundId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", streamId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->this$0:Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-static {v1}, Lcom/sec/android/app/camera/audio/SoundManager;->e(Lcom/sec/android/app/camera/audio/SoundManager;)[I

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/SoundManager$StopSoundRunnable;->mSoundId:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SoundManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
