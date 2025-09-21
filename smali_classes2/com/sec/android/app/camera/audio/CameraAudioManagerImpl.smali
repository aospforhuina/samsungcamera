.class public Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;
.super Ljava/lang/Object;
.source "CameraAudioManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraAudioManager;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_READ_BUFFER_SIZE_FACTOR:I = 0x2

.field private static final AUDIO_RECORD_SAMPLING_RATE:I = 0xbb80

.field private static final DELAY_TIME_TO_DISABLE_AUDIO_SYSTEM_SOUND:I = 0x1f4

.field private static final MESSAGE_CHANGE_INPUT_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraAudioManager"

.field private static final WAIT_BLUETOOTH_PROXY_OPEN_DURATION:I = 0x64


# instance fields
.field private final mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private mAudioFocusRequestTransientGain:Landroid/media/AudioFocusRequest;

.field private mAudioFocusState:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

.field private mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentInputType:I

.field private final mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mExternalAudioInputDeviceInfoUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

.field private mExternalInputDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFocusRequest:Landroid/media/AudioFocusRequest;

.field private mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

.field private mIsShutterSoundForced:Z

.field private mIsTypeChanging:Z

.field private mMediaRecorderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

.field private final mSettingChangedListenerKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/audio/AudioManagerContainer;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/audio/AudioManagerContainer;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/audio/AudioManagerContainer;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/audio/AudioManagerContainer;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/audio/j;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/j;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    .line 8
    iput v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioFocusState:I

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$1;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 10
    iput v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCurrentInputType:I

    .line 11
    iput-boolean v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    .line 12
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 13
    iput-object p2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 14
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 15
    invoke-virtual {p3}, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->getSoundManager()Lcom/sec/android/app/camera/audio/SoundManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;

    .line 16
    invoke-virtual {p3}, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->getMultiMicController()Lcom/sec/android/app/camera/audio/MultiMicController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    .line 17
    invoke-virtual {p3}, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->getInputLevelMonitor()Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    .line 18
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->getAudioFocusRequest(Lcom/sec/android/app/camera/audio/AudioManagerContainer;)Landroid/media/AudioFocusRequest;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->onAudioFocusChange(I)V

    return-void
.end method

.method private addBluetoothDevice()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lu3/b;->e3:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/m;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/m;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private addWiredHeadset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$onBluetoothMicClosed$0()V

    return-void
.end method

.method public static synthetic c(Landroid/media/AudioDeviceInfo;Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$updatePreferredDevice$11(Landroid/media/AudioDeviceInfo;Landroid/media/MediaRecorder;)V

    return-void
.end method

.method private changeInputType(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    const-string v1, "CameraAudioManager"

    if-nez v0, :cond_0

    const-string p0, "changeInputType return : camera is not running"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeInputType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iput p2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCurrentInputType:I

    .line 6
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->updatePreferredDevice(I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-static {p2}, Lcom/sec/android/app/camera/util/AudioUtil;->getMultiMicMode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/audio/MultiMicController;->setMode(I)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isMultiMicZoomAvailable(I)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/audio/MultiMicController;->enableZoomFocus(ZI)V

    .line 9
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->setAudioFacing(I)V

    .line 10
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eq p1, p2, :cond_1

    .line 11
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->reopenBluetoothMic()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->openBluetoothMic()V

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->getMultiMicLevel(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/audio/MultiMicController;->setMicLevel(I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    return-void
.end method

.method private checkForcedShutterSound()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->isForceShutterSoundRequired(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->isForcedSoundWaiverCondition(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->FORCED_SOUND_WAIVER_CONDITION_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isDialogEnabled(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 5
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1202ce

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkForcedShutterSound : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraAudioManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private closeBluetoothMic()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->closeMic()Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/i;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/i;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private connectBluetoothService(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothManagerFactory;->create(Landroid/content/Context;Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager$BluetoothEventListener;Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;)Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    .line 5
    invoke-virtual {p1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->connectService()Z

    move-result p0

    return p0
.end method

.method private createAudioRecord()Landroid/media/AudioRecord;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/AudioRecord$Builder;

    invoke-direct {v0}, Landroid/media/AudioRecord$Builder;-><init>()V

    const/4 v1, 0x5

    .line 2
    invoke-virtual {v0, v1}, Landroid/media/AudioRecord$Builder;->setAudioSource(I)Landroid/media/AudioRecord$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioRecord$Builder;->semAllowConcurrentCapture(Z)Landroid/media/AudioRecord$Builder;

    move-result-object v1

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const v3, 0xbb80

    .line 3
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object v1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->getAudioRecordMinBufferSize()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$removeBluetoothDevice$9()V

    return-void
.end method

.method private disableAudioSystemSound()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->disableSystemSound(Landroid/content/Context;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraAudioRestriction(Z)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$onCreate$3(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$closeBluetoothMic$7()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->disableAudioSystemSound()V

    return-void
.end method

.method private getAudioFocusRequest(Lcom/sec/android/app/camera/audio/AudioManagerContainer;)Landroid/media/AudioFocusRequest;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->getFocusRequestBuilder()Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/audio/a;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/a;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioFocusRequestTransientGain:Landroid/media/AudioFocusRequest;

    .line 4
    invoke-virtual {p1}, Lcom/sec/android/app/camera/audio/AudioManagerContainer;->getAudioAttributesBuilder()Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    .line 5
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p0

    return-object p0
.end method

.method private getAudioRecordMinBufferSize()I
    .locals 2

    const p0, 0xbb80

    const/16 v0, 0xc

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p0

    mul-int/2addr p0, v1

    return p0
.end method

.method private getInitialBluetoothTypeForInputController()Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->s3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_CLASSIC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_360_BT_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const-string v1, "CameraAudioManager"

    if-nez v0, :cond_1

    const-string p0, "getInitialBluetoothTypeForInputController case 1: BLUETOOTH_TYPE_CLASSIC"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_CLASSIC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-object p0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->getBluetoothLeMicInfo(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/AudioUtil;->getBluetoothScoMicInfo(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p0, "getInitialBluetoothTypeForInputController case 3: BLUETOOTH_TYPE_CLASSIC"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_CLASSIC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-object p0

    :cond_3
    const-string p0, "getInitialBluetoothTypeForInputController case 4: BLUETOOTH_TYPE_LE"

    .line 10
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_LE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "getInitialBluetoothTypeForInputController case 2 : BLUETOOTH_TYPE_LE"

    .line 12
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object p0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_LE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    return-object p0
.end method

.method private getMultiMicLevel(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    goto :goto_0

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$setMediaRecorder$5(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method private handle360BtMicSettingChanged(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothLeRunning()Z

    move-result v0

    const-string v1, "CameraAudioManager"

    if-nez v0, :cond_0

    const-string p0, "handle360BtMicSettingChanged : bluetooth le manager is not running"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "handle360BtMicSettingChanged : shooting mode is not activated"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->openBluetoothMic()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    :goto_0
    return-void
.end method

.method private handleAudioInputLevelChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isInputLevelMonitorRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CameraAudioManager"

    const-string p1, "handleAudioInputLevelChanged : Returned because input level monitor is not running"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-eq p1, v0, :cond_4

    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-eq p1, v0, :cond_4

    return-void

    .line 6
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-eq p1, v0, :cond_4

    return-void

    .line 7
    :cond_3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-eq p1, v0, :cond_4

    return-void

    .line 8
    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/audio/MultiMicController;->setMicLevel(I)V

    return-void
.end method

.method private handleAudioInputTypeChanged(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isInputLevelMonitorRunning()Z

    move-result v0

    const-string v1, "CameraAudioManager"

    if-nez v0, :cond_0

    const-string p0, "handleAudioInputTypeChanged : Returned because input level monitor is not running"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "handleAudioInputTypeChanged : Returned because shooting mode is not activated"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCurrentInputType:I

    if-eq p1, p2, :cond_3

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    invoke-static {p0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    invoke-static {p0, v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private handleWiredHeadsetPluggedIn()V
    .locals 3

    const-string v0, "CameraAudioManager"

    const-string v1, "handleWiredHeadsetPluggedIn"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/AudioUtil;->getStringForWiredMicPlugged(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4
    sget-object v0, Lu3/b;->w3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isMultiMicZoomFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(Z)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->addWiredHeadset()V

    return-void
.end method

.method private handleWiredHeadsetPluggedOut()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "handleWiredHeadsetPluggedOut"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lu3/b;->w3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->enableMultiMicZoomFocus(Z)V

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->removeWiredHeadset()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$onBluetoothMicOpened$2()V

    return-void
.end method

.method private initializeInputDeviceList()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->initializeWiredDevice()V

    return-void
.end method

.method private initializeInputType()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v1

    const-string v2, "CameraAudioManager"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->isServiceConnected()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "initializeInputType retry : bluetooth service is opening"

    .line 3
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    new-instance v1, Lcom/sec/android/app/camera/audio/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/b;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeInputType : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCurrentInputType:I

    .line 8
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->updatePreferredDevice(I)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->getMultiMicMode(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/audio/MultiMicController;->setMode(I)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isMultiMicZoomAvailable(I)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/audio/MultiMicController;->enableZoomFocus(ZI)V

    .line 11
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->setAudioFacing(I)V

    .line 12
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->openBluetoothMic()V

    .line 14
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->getMultiMicLevel(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/audio/MultiMicController;->setMicLevel(I)V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    return-void
.end method

.method private initializeSettingChangedListenerKey()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INTERNAL_MIC_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_WIRED_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_360_BT_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initializeWiredDevice()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 5
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private isBluetoothDevice(I)Z
    .locals 0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isBluetoothLeRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothLeManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBluetoothScoRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz p0, :cond_0

    instance-of p0, p0, Lcom/sec/android/app/camera/audio/bluetooth/BluetoothScoManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLimitationForForcedSound()Z
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->l:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lu3/b;->m:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetRadioOutputPath()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->isFMPlayerActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CameraAudioManager"

    const-string v0, "isLimitationForForcedSound : true"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isMultiMicZoomAvailable(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private isPlaySoundAvailable()Z
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->O3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CameraAudioManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "isPlaySoundAvailable : Sound option is turned off."

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isShutterSoundForced()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isPlaySoundAvailable : There is ongoing call."

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return v3
.end method

.method private isSetPreferredDeviceRequired(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_1

    return v1

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$openBluetoothMic$8()V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$addBluetoothDevice$6()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$reopenBluetoothMic$10()V

    return-void
.end method

.method private synthetic lambda$addBluetoothDevice$6()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$closeBluetoothMic$7()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;->onBluetoothMicClosed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBluetoothMicClosed$0()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;->onBluetoothMicClosed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBluetoothMicDisconnected$1()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;->onBluetoothMicClosed()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onBluetoothMicOpened$2()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;->onBluetoothMicOpened()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreate$3(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private synthetic lambda$onDestroy$4(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private synthetic lambda$openBluetoothMic$8()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;->onBluetoothMicOpened()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$removeBluetoothDevice$9()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reopenBluetoothMic$10()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;->onBluetoothMicOpened()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setMediaRecorder$5(Landroid/media/MediaRecorder;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->getAudioRecord()Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->getPreferredDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method private static synthetic lambda$updatePreferredDevice$11(Landroid/media/AudioDeviceInfo;Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$onBluetoothMicDisconnected$1()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->lambda$onDestroy$4(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->initializeInputType()V

    return-void
.end method

.method private onAudioFocusChange(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChange : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "camera.action.AUDIOFOCUS_GAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "camera.action.AUDIOFOCUS_LOSS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private openBluetoothMic()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->openMic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothLeRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/AudioUtil;->getBluetoothLeMicInfo(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/l;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/l;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->resetInputType()V

    :goto_0
    return-void

    .line 7
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->resetInputType()V

    return-void
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->changeInputType(II)V

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->handleWiredHeadsetPluggedIn()V

    return-void
.end method

.method private removeBluetoothDevice()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lu3/b;->e3:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/h;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/h;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private removeWiredHeadset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v0, 0x0

    invoke-interface {p0, v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_1
    return-void
.end method

.method private reopenBluetoothMic()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->reopenMic()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/n;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/n;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->resetInputType()V

    :goto_0
    return-void

    .line 5
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->resetInputType()V

    return-void
.end method

.method private resetInputType()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result v0

    const-string v1, "CameraAudioManager"

    if-nez v0, :cond_0

    const-string p0, "resetInputType: return because shooting mode is not support audio input control"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "resetInputType"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->isWiredMicPlugged(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->isUsbMicPlugged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v1, 0x3

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :goto_1
    return-void
.end method

.method static bridge synthetic s(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->handleWiredHeadsetPluggedOut()V

    return-void
.end method

.method private setAudioFacing(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/audio/MultiMicController;->setAudioFacing(I)V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/audio/MultiMicController;->setAudioFacing(I)V

    :goto_0
    return-void
.end method

.method private updatePreferredDevice(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updatePreferredDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isInputLevelMonitorRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "updatePreferredDevice return : input control not available"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "updatePreferredDevice return : do not change preferred device here when BT"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isSetPreferredDeviceRequired(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->getInternalMicInfo(Landroid/content/Context;)Landroid/media/AudioDeviceInfo;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/audio/c;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/audio/c;-><init>(Landroid/media/AudioDeviceInfo;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "abandonAudioFocus"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioFocusState:I

    return-void
.end method

.method public deinitializeAudioInputController()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "deinitializeAudioInputController"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothScoRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->stop()V

    .line 4
    iput-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    .line 5
    sget-object v0, Lu3/b;->s3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_LE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->connectBluetoothService(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;)Z

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothLeRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->setAudioRecord(Landroid/media/AudioRecord;)V

    :cond_1
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    return-void
.end method

.method public disableSystemSound()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getLastOrientation()I

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/AudioUtil;->switchAudioChannelDirection(Landroid/content/Context;I)V

    return-void
.end method

.method public enableMultiMicZoomFocus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/camera/audio/MultiMicController;->enableZoomFocus(ZI)V

    return-void
.end method

.method public enableSystemSound()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mDisableAudioSystemSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/AudioUtil;->enableSystemSound(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->enableCameraAudioRestriction(Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/AudioUtil;->switchAudioChannelDirection(Landroid/content/Context;I)V

    return-void
.end method

.method public initializeAudioInputController()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeAudioInputController : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothLeRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->getInitialBluetoothTypeForInputController()Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_CLASSIC:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->connectBluetoothService(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;)Z

    move-result v0

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->setMediaRecorder(Ljava/util/ArrayList;)V

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v3, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->getAudioRecord()Landroid/media/AudioRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->setAudioRecord(Landroid/media/AudioRecord;)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->AUDIO_INPUT_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    .line 8
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->resetInputType()V

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    new-instance v2, Lcom/sec/android/app/camera/audio/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/audio/b;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    :goto_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    return-void
.end method

.method public initializeBluetoothMic()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->setMediaRecorder(Ljava/util/ArrayList;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->openBluetoothMic()V

    return-void
.end method

.method public isBluetoothLeMicAvailable()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothLeRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public isInputLevelMonitorRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->isRunning()Z

    move-result p0

    return p0
.end method

.method public isInputTypeChanging()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsTypeChanging:Z

    if-eqz p0, :cond_0

    const-string p0, "CameraAudioManager"

    const-string v0, "isInputTypeChanging true : changing input type is in progress"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMultiMicZoomFocusEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/MultiMicController;->isMultiMicZoomFocusEnabled()Z

    move-result p0

    return p0
.end method

.method public isShutterSoundEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isShutterSoundForced()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isPlaySoundAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/AudioUtil;->isSystemSoundMute(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShutterSoundForced()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mIsShutterSoundForced:Z

    return p0
.end method

.method public onBluetoothMicClosed()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "onBluetoothMicClosed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCurrentInputType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->resetInputType()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/g;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/g;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBluetoothMicConnected()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "onBluetoothMicConnected"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "onBluetoothMicConnected return : camera is not running"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->addBluetoothDevice()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->openBluetoothMic()V

    :cond_1
    return-void
.end method

.method public onBluetoothMicDisconnected()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "onBluetoothMicDisconnected"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "onBluetoothMicDisconnected return : camera is not running"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->removeBluetoothDevice()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAudioInputControlSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCurrentInputType:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothDevice(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->resetInputType()V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/o;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/o;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->closeBluetoothMic()V

    :goto_0
    return-void
.end method

.method public onBluetoothMicOpened()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "onBluetoothMicOpened"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/audio/k;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/audio/k;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AudioUtil;->switchAudioChannelDirection(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prevValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$2;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eq p2, p3, :cond_0

    .line 3
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->handle360BtMicSettingChanged(I)V

    goto :goto_0

    .line 4
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->handleAudioInputLevelChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->handleAudioInputTypeChanged(II)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string p1, "CameraAudioManager"

    const-string v0, "onCreate"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->initializeSettingChangedListenerKey()V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/audio/e;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/e;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const-string p1, "AudioManagerHandlerThread"

    .line 6
    invoke-static {p1}, Lcom/sec/android/app/camera/util/factory/HandlerThreadFactory;->create(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 7
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "CameraAudioManager"

    const-string v0, "onDestroy"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioDeviceCallback:Landroid/media/AudioDeviceCallback;

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 9
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/audio/f;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/f;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "CameraAudioManager"

    const-string v0, "onResume"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->checkForcedShutterSound()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isShutterSoundForced()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/audio/SoundManager;->initialize(Z)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->initializeInputDeviceList()V

    .line 5
    sget-object p1, Lu3/b;->s3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isBluetoothLeRunning()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;->BLUETOOTH_TYPE_LE:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->connectBluetoothService(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothType;)Z

    :cond_0
    return-void
.end method

.method public playSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSound - soundId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", loop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isPlaySoundAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "playSound : play sound is not available. Return."

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->MORE_DRAG_BOX_DETACHED:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    if-ne p1, v0, :cond_2

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 7
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    const/16 p1, 0x6a

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/AudioUtil;->getSituation(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/sec/android/app/camera/util/AudioUtil;->getVolume(Landroid/content/Context;I)F

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/android/app/camera/audio/SoundManager;->play(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;FI)V

    :goto_0
    return-void
.end method

.method public prepareMultiMicController(ILandroid/util/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/sec/android/app/camera/audio/MultiMicController;->prepare(IIII)V

    return-void
.end method

.method public releaseMultiMicZoomFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/MultiMicController;->release()V

    return-void
.end method

.method public requestAudioFocus()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "requestAudioFocus"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    return-void
.end method

.method public requestGainTransientAudioFocus()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string v1, "requestGainTransientAudioFocus"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isLimitationForForcedSound()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioFocusState:I

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioFocusRequestTransientGain:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mAudioFocusState:I

    :cond_2
    return-void
.end method

.method public setAudioInputLevelUpdateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->setInputLevelListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$AudioInputLevelUpdateListener;)V

    return-void
.end method

.method public setBluetoothMicStateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothMicStateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$BluetoothMicStateListener;

    return-void
.end method

.method public setExternalAudioInputDeviceInfoUpdateListener(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalAudioInputDeviceInfoUpdateListener:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mExternalInputDeviceList:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$ExternalAudioInputDeviceInfoUpdateListener;->onExternalAudioInputDeviceInfoUpdated(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setMediaRecorder(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->setMediaRecorder(Ljava/util/ArrayList;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->isInputLevelMonitorRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/camera/audio/d;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/audio/d;-><init>(Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public setMultiMicZoomValue(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/audio/MultiMicController;->setZoomValue(F)V

    return-void
.end method

.method public startLevelMonitor()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string/jumbo v1, "startLevelMonitor"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo p0, "startLevelMonitor return :  mLevelMonitorThread is running"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mMultiMicController:Lcom/sec/android/app/camera/audio/MultiMicController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/audio/MultiMicController;->setMode(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->createAudioRecord()Landroid/media/AudioRecord;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->getAudioRecordMinBufferSize()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->start(Landroid/media/AudioRecord;I)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;->stop()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mBluetoothManager:Lcom/sec/android/app/camera/audio/bluetooth/AbstractBluetoothManager;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/SoundManager;->release()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->abandonAudioFocus()V

    return-void
.end method

.method public stopLevelMonitor()V
    .locals 2

    const-string v0, "CameraAudioManager"

    const-string/jumbo v1, "stopLevelMonitor"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->releaseMultiMicZoomFocus()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mInputLevelMonitor:Lcom/sec/android/app/camera/audio/InputLevelMonitor;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/audio/InputLevelMonitor;->stop()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mHandler:Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl$InputTypeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    return-void
.end method

.method public stopSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSound - soundId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraAudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/audio/CameraAudioManagerImpl;->mSoundManager:Lcom/sec/android/app/camera/audio/SoundManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/audio/SoundManager;->stop(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;)V

    return-void
.end method
