.class Lcom/sec/android/app/camera/audio/AudioManagerContainer;
.super Ljava/lang/Object;
.source "AudioManagerContainer.java"


# instance fields
.field private final mAudioAttributesBuilder:Landroid/media/AudioAttributes$Builder;

.field private final mFocusRequestBuilder:Landroid/media/AudioFocusRequest$Builder;

.field private final mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

.field private final mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

.field private final mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/audio/SoundManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-static {}, Lcom/samsung/android/camera/mic/SemMultiMicManager;->getInstance()Lcom/samsung/android/camera/mic/SemMultiMicManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/camera/audio/MultiMicController;-><init>(Lcom/samsung/android/camera/mic/SemMultiMicManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    .line 4
    new-instance p1, Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-direct {p1}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    .line 5
    new-instance p1, Landroid/media/AudioFocusRequest$Builder;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mFocusRequestBuilder:Landroid/media/AudioFocusRequest$Builder;

    .line 6
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mAudioAttributesBuilder:Landroid/media/AudioAttributes$Builder;

    return-void
.end method


# virtual methods
.method getAudioAttributesBuilder()Landroid/media/AudioAttributes$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mAudioAttributesBuilder:Landroid/media/AudioAttributes$Builder;

    return-object p0
.end method

.method getFocusRequestBuilder()Landroid/media/AudioFocusRequest$Builder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mFocusRequestBuilder:Landroid/media/AudioFocusRequest$Builder;

    return-object p0
.end method

.method getInputLevelMonitor()Lcom/sec/android/app/camera/audio/InputLevelMonitor;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    return-object p0
.end method

.method getMultiMicController()Lcom/sec/android/app/camera/audio/MultiMicController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    return-object p0
.end method

.method getSoundManager()Lcom/sec/android/app/camera/audio/SoundManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;

    return-object p0
.end method
