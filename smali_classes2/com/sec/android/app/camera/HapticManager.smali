.class public Lcom/sec/android/app/camera/HapticManager;
.super Ljava/lang/Object;
.source "HapticManager.java"


# static fields
.field private static final DC_MOTOR_DRAG_AND_DROP_EFFECT_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HapticManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsSupportDcHaptic:Ljava/lang/Boolean;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/HapticManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/HapticManager;Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/HapticManager;->lambda$playHaptic$0(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method private getEffectId(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->DRAG_AND_DROP_FLOATING:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/HapticManager;->isDcHapticSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x64

    .line 2
    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->getPatternId()I

    move-result p0

    invoke-static {p0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result p0

    return p0
.end method

.method private isDcHapticSupported()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_DC_MOTOR_HAPTIC_FEEDBACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    .line 6
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/HapticManager;->mIsSupportDcHaptic:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isHapticAvailable(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->DRAG_AND_DROP_FLOATING:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/HapticManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "haptic_feedback_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/HapticManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$playHaptic$0(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/HapticManager;->isHapticAvailable(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mVibrator:Landroid/os/Vibrator;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/HapticManager;->getEffectId(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)I

    move-result p0

    const/4 p1, -0x1

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {p0, p1, v1}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method


# virtual methods
.method playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lcom/sec/android/app/camera/h2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/h2;-><init>(Lcom/sec/android/app/camera/HapticManager;Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mVibrator:Landroid/os/Vibrator;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HapticHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/HapticManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method stop()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/HapticManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iput-object v1, p0, Lcom/sec/android/app/camera/HapticManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 7
    iput-object v1, p0, Lcom/sec/android/app/camera/HapticManager;->mHandler:Landroid/os/Handler;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "HapticManager"

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopHandler : interrupted - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/camera/HapticManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 10
    iput-object v1, p0, Lcom/sec/android/app/camera/HapticManager;->mHandler:Landroid/os/Handler;

    .line 11
    throw v0

    .line 12
    :cond_0
    :goto_2
    iput-object v1, p0, Lcom/sec/android/app/camera/HapticManager;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method
