.class public Lcom/sec/android/app/camera/engine/RecordingManagerImpl;
.super Ljava/lang/Object;
.source "RecordingManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/RecordingManager;
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$RecordingEventListener;
.implements Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;


# static fields
.field private static final DELAY_ABANDON_AUDIO_FOCUS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "RecordingManager"


# instance fields
.field private final mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsNeedToRestoreTorchSetting:Z

.field private mIsPreviousBackZoomValueSaved:Z

.field private mIsStopBackgroundRecordingRequested:Z

.field private mLastAverageRecordingFileSize:D

.field private mLastUpdateRecordingFileSizeTime:J

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mMediaRecorderResetLock:Ljava/lang/Object;

.field private mPreviousBackZoomValue:I

.field private mPreviousFrontZoomValue:I

.field private mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

.field private final mRecordingSnapShotCallbackManager:Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;

.field private mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

.field private mRestoreAutoTorchRequired:Z

.field private final mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

.field private final mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private final mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

.field private mUpdateRecordingFileSizeCount:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRestoreAutoTorchRequired:Z

    .line 5
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mMediaRecorderResetLock:Ljava/lang/Object;

    .line 6
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    const/16 v1, 0x3e8

    .line 7
    iput v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    .line 8
    iput v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsPreviousBackZoomValueSaved:Z

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsStopBackgroundRecordingRequested:Z

    .line 11
    new-instance v0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl$1;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 12
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 13
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 14
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 15
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    .line 16
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 17
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    .line 18
    invoke-interface {p2, p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->setSessionEventListener(Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;)V

    .line 19
    iput-object p4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    .line 20
    iput-object p5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingSnapShotCallbackManager:Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;

    return-void
.end method

.method public static synthetic a(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$setRecordingOverheatLevel$20(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$setRecordingMotionSpeed$11(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$handleRecordingError$17()V

    return-void
.end method

.method private checkRestrictionPolicyForRecording(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isVideoRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "RecordingManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->getVideoRecordingRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string p0, "checkRestrictionPolicyForRecording - Video recording is restricted."

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isAudioRecordRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->getAudioRecordRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_2
    const-string p0, "checkRestrictionPolicyForRecording - Audio recording is restricted,"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isMicroPhoneRestricted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->getMicrophoneRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    const-string p0, "checkRestrictionPolicyForRecording - Microphone is restricted."

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private checkStorageForRecording(Z)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v1

    const-string v2, "RecordingManager"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->isSdCardWriteRestricted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/camera/util/RestrictionPolicyUtil;->getSdCardWriteRestrictedStringId()I

    move-result p1

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    const-string p0, "checkStorageForRecording - SD card writing is restricted."

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->isRecordingAvailable(I)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1202fd

    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    .line 9
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkStorageForRecording - Storage status is not ok (Available storage : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    return v3
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$startSlowMotionRecording$13(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method private disableSeamlessZoom(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableSeamlessZoom : disable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/q7;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/q7;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$startMultiMicZoomFocus$12()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onRecordingPaused$3()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$stopSlowMotionVideoRecording$14(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onRecordingStopped$6()V

    return-void
.end method

.method private handleRecordingError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRecordingError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x11

    if-eq p1, v0, :cond_1

    const/16 v0, -0x10

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraErrorEventListener()Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;

    move-result-object p0

    const/16 p1, -0xb

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;->onError(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/c7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/c7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/s7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/s7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic i(Landroid/util/Range;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$setFpsRange$8(Landroid/util/Range;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method private isRequestedFileUriForAttachMode()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static synthetic j(ZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$disableSeamlessZoom$15(ZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$handleRecordingError$16()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onRecordingCancelled$2()V

    return-void
.end method

.method private static synthetic lambda$disableSeamlessZoom$15(ZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->V:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$handleRecordingError$16()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120628

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$handleRecordingError$17()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204d9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$onBackgroundRecordingStopped$0()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onMediaRecorderPrepared$1()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRecordingCancelled$2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSingleTakeSessionEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;->onSingleTakeVideoCancelled()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->CANCELLED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onRecordingPaused$3()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRecordingResumed$4()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->RESUMED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onRecordingStarted$5()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSingleTakeSessionEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;->onSingleTakeVideoStarted()V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz p0, :cond_1

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STARTED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onRecordingStopped$6()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->abandonAudioFocus()V

    return-void
.end method

.method private synthetic lambda$onRecordingStopped$7()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSingleTakeSessionEventListener()Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;->onSingleTakeVideoStopped()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;->STOPPED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingEvent(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingEvent;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$registerVideo$18(Ljava/util/ArrayList;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onVideoSaved(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$resetFlipMode$19(IILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/MakerParameter;->getScalerFlipMode(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getScalerFlipMode(I)I

    move-result p0

    .line 2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetFlipMode : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RecordingManager"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p1, Lcom/samsung/android/camera/core2/MakerPublicKey;->y0:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v0
.end method

.method private static synthetic lambda$setFpsRange$8(Landroid/util/Range;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1, p0}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$setMultiRecordingView$9([Landroid/hardware/camera2/params/MeteringRectangle;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->d0:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$setRecordingMotionMode$10(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->i0:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getRecordingMotionMode(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getRecordingMotionMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$setRecordingMotionSpeed$11(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->j0:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getRecordingMotionSpeed(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getRecordingMotionSpeed(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$setRecordingOverheatLevel$20(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->m0:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$startMultiMicZoomFocus$12()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v1

    new-instance v2, Landroid/util/Range;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMinZoomLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMaxZoomLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->prepareMultiMicController(ILandroid/util/Range;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->enableMultiMicZoomFocus(Z)V

    return-void
.end method

.method private synthetic lambda$startSlowMotionRecording$13(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result p0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$stopSlowMotionVideoRecording$14(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result p0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onRecordingResumed$4()V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onBackgroundRecordingStopped$0()V

    return-void
.end method

.method private notifyRecordingInfo(Z)V
    .locals 13

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getHdr()I

    move-result v8

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v9

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->isHighSpeedRecording()Z

    move-result v10

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v11

    .line 6
    invoke-static {v11}, Lcom/sec/android/app/camera/util/RecordingUtil;->getSsrmStatusNameList(Lcom/sec/android/app/camera/interfaces/Resolution;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v11}, Lcom/sec/android/app/camera/interfaces/Resolution;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v6

    move v2, p1

    move v3, v8

    move v4, v9

    move v7, v10

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyStartRecordingInfo(Landroid/content/Context;Ljava/lang/String;IIILjava/lang/String;ZZ)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyStopRecordingInfo(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static synthetic o([Landroid/hardware/camera2/params/MeteringRectangle;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$setMultiRecordingView$9([Landroid/hardware/camera2/params/MeteringRectangle;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onMediaRecorderPrepared$1()V

    return-void
.end method

.method private prepareStartRecording()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->enablePalmDetection(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->requestAudioFocus()V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->is360RecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->isShutterSoundForced()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->RECORDING_START:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->playSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->VIDEO_RECORD:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v2, :cond_3

    .line 10
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateTorchSetting(Z)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->startMultiMicZoomFocus()V

    .line 14
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->prepareStartRecording()V

    return-void
.end method

.method public static synthetic q(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$setRecordingMotionMode$10(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$registerVideo$18(Ljava/util/ArrayList;)V

    return-void
.end method

.method private registerVideo()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->registerVideo()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateLastContentData(Landroid/util/Pair;)V

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateVideoThumbnail()V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Lcom/sec/android/app/camera/engine/k7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/engine/k7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetFlipMode()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->getInitialFacing()I

    move-result v2

    if-ne v2, v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Lcom/sec/android/app/camera/engine/m7;

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/camera/engine/m7;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private resetPreviousZoomValues()V
    .locals 1

    const/16 v0, 0x3e8

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsPreviousBackZoomValueSaved:Z

    return-void
.end method

.method private restoreTorchSetting()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRestoreAutoTorchRequired:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRestoreAutoTorchRequired:Z

    :cond_0
    return-void
.end method

.method private restoreZoomValue()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :goto_0
    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onRecordingStopped$7()V

    return-void
.end method

.method private setEffectRecordingSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/EffectController;->startRecording(Landroid/view/Surface;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMultiCameraEffectController()Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->startRecording(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPreviousZoomValue(II)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    iput p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousBackZoomValue:I

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsPreviousBackZoomValueSaved:Z

    goto :goto_0

    .line 3
    :cond_0
    iput p2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mPreviousFrontZoomValue:I

    :goto_0
    return-void
.end method

.method private setRecordingOverheatLevel(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecordingOverheatLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/MakerParameter;->getSsrmHintLevel(I)I

    move-result p1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/y6;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/y6;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public static synthetic t(IILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$resetFlipMode$19(IILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->lambda$onRecordingStarted$5()V

    return-void
.end method

.method private updateLastContentData(Landroid/util/Pair;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 2
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentSecMpUri(Landroid/net/Uri;)V

    .line 3
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentMpUri(Landroid/net/Uri;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v1, p1}, Lcom/sec/android/app/camera/util/RecordingUtil;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->VIDEO:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/camera/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/LastContentData;->getContentMpUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendNewVideoBroadcast(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private updateOrientationHint()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->updateOrientationHint(I)V

    return-void
.end method

.method private updateTorchSetting(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-nez p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 3
    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 5
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_2

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 7
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRestoreAutoTorchRequired:Z

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFlashRequired()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1, v3, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 11
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateVideoThumbnail()V
    .locals 7

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "updateVideoThumbnail : start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/sec/android/app/camera/util/RecordingUtil;->getThumbnailSize(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Size;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRequestedFileUriForAttachMode()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 6
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "rw"

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 9
    :try_start_3
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-object v5, v4

    :catch_1
    const-string/jumbo v3, "updateVideoThumbnail : Exception"

    .line 10
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/LastContentData;->getFilePath()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v4, v3

    .line 12
    :goto_1
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v6, 0x1

    invoke-static {v4, v5, v3, v1, v6}, Lcom/sec/android/app/camera/util/ImageUtils;->getVideoThumbnail(Ljava/lang/String;Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/engine/LastContentData;->setThumbnail(Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_2

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "video thumbnail is not updated because bitmap is null"

    .line 15
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo p0, "updateVideoThumbnail : end"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static bridge synthetic v(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic w(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static bridge synthetic x(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->disableSeamlessZoom(Z)V

    return-void
.end method

.method static bridge synthetic y(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setRecordingOverheatLevel(I)V

    return-void
.end method


# virtual methods
.method public cancelRecording()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->cancelRecording()V

    return-void
.end method

.method public cancelSingleTakeRecording()V
    .locals 2

    .line 1
    sget-object v0, Ls5/d;->g:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public cancelSuperSlowMotionRecording(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSuperSlowMotionRecording : forced("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;->cancelSuperSlowMotionRecording(Z)V

    return-void
.end method

.method public cancelVideoRecording(Z)V
    .locals 2

    .line 1
    sget-object v0, Ls5/d;->g:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_MULTI_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 8
    :goto_0
    sget-object p1, Lu3/b;->b4:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchSetting()V

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->resetPreviousZoomValues()V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getDetailByRecordingTime(J)Lcom/sec/android/app/camera/logging/SaLogDetail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "0009"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeRecordingState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    return-void
.end method

.method public changeSuperSlowMotionRecordingFPS(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;->changeSuperSlowMotionRecordingFPS(Z)V

    return-void
.end method

.method public changeToEffectRecordingPreview()V
    .locals 4

    const-string v0, "RecordingManager"

    const-string v1, "changeToEffectRecordingPreview"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitPreviewSurfaceRequest()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMakerRequest()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public changeToRecordingPreview()V
    .locals 4

    const-string v0, "RecordingManager"

    const-string v1, "changeToRecordingPreview"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->UPDATE_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->waitPreviewSurfaceRequest()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->connectMakerRequest()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public clearRecordingSessions()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->clearSessions()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    return-void
.end method

.method public closeFileDescriptors()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->closeFileDescriptors()V

    return-void
.end method

.method public createRecordingSession(IZ)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->createRecordingSession(IZ)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public deinitialize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 2
    sget-object v0, Lu3/b;->H3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->disableSeamlessZoom(Z)V

    .line 4
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setRecordingOverheatLevel(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public enableSuperSlowMotionAutoDetect(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;->enableSuperSlowMotionAutoDetect(ZILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getInitialRecordingFacing()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->getInitialFacing()I

    move-result p0

    return p0
.end method

.method public getMaxRecordingTimeLimitInSecond()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->getMaxRecordingTimeInMs()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->getMaxRecordingTimeInMs()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    return p0
.end method

.method public getRecordingFpsRange(Lcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/Capability;",
            "Lcom/sec/android/app/camera/interfaces/Resolution;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/Range;

    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getMinFps()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getMaxFps()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 2
    sget-object v1, Lu3/b;->L4:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FPS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/Capability;->getRecodingFpsRange(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/util/Range;

    move-result-object v0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableEffectRecordingFpsRange(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getRecordingOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->getRecordingOrientation()I

    move-result p0

    return p0
.end method

.method public getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    return-object p0
.end method

.method public getRecordingStorage()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->getRecordingStorage()I

    move-result p0

    return p0
.end method

.method public getTotalRecordingTimeInMs()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getZoomValueByMultiRecordingLensType(I)I
    .locals 3

    const/high16 v0, 0x447a0000    # 1000.0f

    if-eqz p1, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3e8

    return p0

    .line 1
    :cond_0
    sget-object p0, Lu3/g;->a:Lu3/g;

    invoke-static {p0}, Lu3/d;->a(Lu3/g;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 2
    invoke-static {p0}, Lu3/d;->a(Lu3/g;)F

    move-result p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d0

    :goto_0
    return p0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getSubCameraId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMinDigitalZoom(I)F

    move-result p0

    goto :goto_1

    .line 5
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getScalerAvailableMinDigitalZoom(I)F

    move-result p0

    :goto_1
    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public handleSuperSlowMotionFrcStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;->removeRecordSurface()V

    return-void
.end method

.method public initialize()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.LIMIT_RECORDING_SEAMLESS_ZOOM"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.OVERHEAT_LEVEL_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public is360RecordingAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_360_BT_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->isBluetoothLeMicAvailable()Z

    move-result p0

    return p0
.end method

.method public is3HdrRecordingEnabled()Z
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->Q:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 2
    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get3Hdr()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isAudioRecordingDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->isAudioRecordingDisabled()Z

    move-result p0

    return p0
.end method

.method public isAutoFlashEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return p0
.end method

.method isMultiMediaRecorderRequired()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPauseRecordingAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->isStopRecordingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isRecordingControlAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPreviousBackZoomValueSaved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsPreviousBackZoomValueSaved:Z

    return p0
.end method

.method public isRecordingAvailable(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isQuickTakeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CallStateManager;->isCalling(Landroid/content/Context;)Z

    move-result v0

    const-string v2, "RecordingManager"

    if-eqz v0, :cond_1

    const-string p0, "Recording is not available - Calling."

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Recording is not available - Capturing."

    .line 5
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->checkRestrictionPolicyForRecording(Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "Recording is not available - Restricted by recording policy"

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 8
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->checkStorageForRecording(Z)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p0, "Recording is not available - Storage is not available for recording."

    .line 9
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->isInputTypeChanging()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->checkMediaResourceForRecording(Z)Z

    move-result v0

    if-nez v0, :cond_6

    const-string p0, "Recording is not available - Media resource is not available for recording."

    .line 12
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 13
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;->isListTranslating()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "Recording is not available - Shooting mode is translating."

    .line 14
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    if-eqz p1, :cond_9

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p0, "Recording is not available - current state is not PREVIEWING"

    .line 16
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 17
    :cond_8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "Recording is not available - preview animation is running"

    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public isRecordingControlAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingState:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p0, v0, :cond_0

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

.method public isRecordingInProgress()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RESUMING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p0, v0, :cond_0

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

.method public isRecordingTimeLimited()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->isMaxDurationLimited()Z

    move-result p0

    return p0
.end method

.method public isRestoreAutoTorchRequired()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRestoreAutoTorchRequired:Z

    return p0
.end method

.method public isSnapshotAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingSnapShotCallbackManager:Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/RecordingSnapShotCallbackManager;->isSnapshotAvailable(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)Z

    move-result p0

    return p0
.end method

.method public isStopBackgroundRecordingRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsStopBackgroundRecordingRequested:Z

    return p0
.end method

.method public isStopRecordingAvailable()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->isStopRecordingAvailable()Z

    move-result p0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 5

    .line 1
    sget-object v0, Lu3/b;->w4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSwitchFacingWhileRecordingSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    .line 6
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    if-nez v4, :cond_5

    .line 7
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedFrontCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    if-eqz v2, :cond_7

    .line 8
    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 9
    :cond_5
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->isSupportedBackCamcorderResolutionFeature(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    if-eqz v2, :cond_7

    .line 10
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 11
    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->isSwitchFacingWhileRecordingSupported()Z

    move-result p0

    return p0
.end method

.method isVideoBokehEffectEnabled()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->VIDEO_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyCancelSuperSlowMotionCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;->notifyCancelSuperSlowMotionCompleted()V

    return-void
.end method

.method public notifyStopHyperlapseRecordingComplete()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_HYPERLAPSE_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public onBackgroundRecordingStopped()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsStopBackgroundRecordingRequested:Z

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->abandonAudioFocus()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/f7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/f7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onDbUpdatePrepared(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onVideoDbUpdatePreparedEvent(Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    const-string p0, "RecordingManager"

    const-string v0, "onError - MEDIA_RECORDER_ERROR_UNKNOWN ignored : cancel recording is in progress."

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, -0xe

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->handleRecordingError(I)V

    return-void
.end method

.method public onLensChangeWhileEffectRecording()V
    .locals 3

    const-string v0, "RecordingManager"

    const-string v1, "onLensChangeWhileEffectRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getEffectController()Lcom/sec/android/app/camera/engine/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/EffectController;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isFilterRecordingUsingVideoMakerSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->createRecordingSession(IZ)Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->createRecordingSession(IZ)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setEffectRecordingSurface(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMediaRecorderPrepared()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/g7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/g7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNextOutputFileStarted()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "4GB"

    aput-object v5, v3, v4

    const v4, 0x7f120640

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->registerVideo()V

    return-void
.end method

.method public onRecordingCancelled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->abandonAudioFocus()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->releaseMultiMicZoomFocus()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->enablePalmDetection(Z)V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->resetFlipMode()V

    .line 7
    sget-object v0, Lu3/b;->H3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->disableSeamlessZoom(Z)V

    .line 9
    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setRecordingOverheatLevel(I)V

    .line 10
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Lcom/sec/android/app/camera/engine/d7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/d7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 12
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    return-void
.end method

.method public onRecordingFailed(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordingFailed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->handleRecordingError(I)V

    return-void
.end method

.method public onRecordingMaxDurationReached()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingMaxDurationReached()V

    :cond_0
    return-void
.end method

.method public onRecordingMaxFileSizeReached()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingMaxFileSizeReached()V

    :cond_0
    return-void
.end method

.method public onRecordingPaused(Z)V
    .locals 1

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->switchFacing()V

    .line 3
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/a7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/a7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public onRecordingResumed()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/e7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/e7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/i7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/i7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRecordingStopped()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->VIDEO_RECORD:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->is360RecordingAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->isShutterSoundForced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;->RECORDING_STOP:Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->playSound(Lcom/sec/android/app/camera/interfaces/CameraAudioManager$SoundId;I)V

    .line 4
    :cond_1
    sget-object v0, Lu3/b;->l:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lu3/b;->m:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->abandonAudioFocus()V

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/camera/engine/b7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/b7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isZoomInMicSupported(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->releaseMultiMicZoomFocus()V

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->enablePalmDetection(Z)V

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    .line 13
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->registerVideo()V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->resetFlipMode()V

    .line 15
    sget-object v0, Lu3/b;->H3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->disableSeamlessZoom(Z)V

    .line 17
    :cond_7
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setRecordingOverheatLevel(I)V

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    .line 20
    :cond_8
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->IDLE:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v2, Lcom/sec/android/app/camera/engine/h7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/h7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 22
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->notifyRecordingInfo(Z)V

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getDetailByRecordingTime(J)Lcom/sec/android/app/camera/logging/SaLogDetail;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/logging/SaLogDetail;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0009"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_4

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingTick(JJ)V

    :cond_1
    const-wide/16 p3, 0x0

    cmp-long p3, p1, p3

    if-nez p3, :cond_2

    .line 4
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p4, Landroid/content/Intent;

    const-string v0, "camera.action.RECORDING_START_TIMER_TICK"

    invoke-direct {p4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p3, p4}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 5
    :cond_2
    sget-object p3, Lu3/b;->H3:Lu3/b;

    invoke-static {p3}, Lu3/d;->e(Lu3/b;)Z

    move-result p3

    const-wide/16 v0, 0x3e8

    if-eqz p3, :cond_3

    .line 6
    div-long p3, p1, v0

    sget-object v2, Lu3/h;->H:Lu3/h;

    invoke-static {v2}, Lu3/d;->b(Lu3/h;)I

    move-result v2

    int-to-long v2, v2

    cmp-long p3, p3, v2

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 7
    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p3

    const/16 p4, 0x14

    if-ne p3, p4, :cond_3

    .line 8
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p3}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isTemperatureHighToDualRecord()Z

    move-result p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->disableSeamlessZoom(Z)V

    .line 9
    :cond_3
    div-long/2addr p1, v0

    sget-object p3, Lu3/h;->I:Lu3/h;

    invoke-static {p3}, Lu3/d;->b(Lu3/h;)I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getOverheatLevel()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setRecordingOverheatLevel(I)V

    :cond_4
    return-void
.end method

.method public onRecordingTrackStarted()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;->onRecordingTrackStarted()V

    :cond_0
    return-void
.end method

.method public pauseRecording()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->pauseRecording()V

    return-void
.end method

.method public pauseVideoRecording()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public prepareQuickTakeRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateTorchSetting(Z)V

    return-void
.end method

.method public prepareRecording(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->prepareRecording(Z)V

    return-void
.end method

.method prepareSwitchMultiCameraFacing()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->prepareSwitchMultiCameraFacing()V

    return-void
.end method

.method public prepareVideoRecording()V
    .locals 3

    const-string v0, "RecordingManager"

    const-string v1, "prepareVideoRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    .line 4
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PREPARING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public registerEventListener(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerEventListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsStopBackgroundRecordingRequested:Z

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->releaseMediaRecorder()V

    return-void
.end method

.method public resetAfTrigger()V
    .locals 2

    const-string v0, "RecordingManager"

    const-string v1, "resetAfTrigger"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->unlockAeAwb()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->unlockAe()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    :cond_2
    :goto_0
    return-void
.end method

.method public resumeRecording()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->resumeRecording()V

    return-void
.end method

.method public resumeVideoRecording()V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RESUMING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public retryAttachVideoRecording()V
    .locals 3

    const-string v0, "RecordingManager"

    const-string v1, "retryAttachVideoRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTorchFlashMode(I)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->prepareVideoRecording()V

    return-void
.end method

.method public setEffectRecordingPipRect(Landroid/graphics/RectF;F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMultiCameraEffectController()Lcom/sec/android/app/camera/engine/MultiCameraEffectController;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->setPipRectPosition(Landroid/graphics/RectF;F)V

    return-void
.end method

.method public setFpsRange(Landroid/util/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/n7;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/n7;-><init>(Landroid/util/Range;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setMultiRecordingView(I)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0, v0, v0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/util/factory/MeteringRectangleFactory;->create(Landroid/graphics/Rect;I)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    .line 2
    invoke-static {v0, v0, v0, v0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/factory/MeteringRectangleFactory;->create(Landroid/graphics/Rect;I)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    const/16 v3, 0x9

    .line 3
    invoke-static {v3}, Lcom/sec/android/app/camera/util/factory/MeteringRectangleFactory;->createArray(I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    :goto_0
    const/16 v4, 0x8

    if-gt v0, v4, :cond_1

    if-ne v0, p1, :cond_0

    move-object v4, v2

    goto :goto_1

    :cond_0
    move-object v4, v1

    .line 4
    :goto_1
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p1, Lcom/sec/android/app/camera/engine/r7;

    invoke-direct {p1, v3}, Lcom/sec/android/app/camera/engine/r7;-><init>([Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRecordingMotionMode(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecordingMotionMode : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/l7;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/l7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRecordingMotionSpeed(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRecordingMotionSpeed : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/j7;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/j7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public setRestoreAutoTorchRequired(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRestoreAutoTorchRequired:Z

    return-void
.end method

.method public setRestoreTorchFlashMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return-void
.end method

.method public startAfTrigger()V
    .locals 2

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "startAfTrigger"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->IDLE:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->getAeAfUiState()Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;->AE_LOCKED:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;

    if-ne v0, v1, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeAwbLockRequired(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAeAwb()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isAeLockRequired(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->lockAe()V

    :cond_3
    :goto_0
    return-void
.end method

.method public startBackgroundRecording()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public startCleanupFileHandlerThread()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->startCleanupFileHandlerThread()V

    return-void
.end method

.method public startMicLevelMonitor()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v1

    new-instance v2, Landroid/util/Range;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMinZoomLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMaxZoomLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->prepareMultiMicController(ILandroid/util/Range;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->startLevelMonitor()V

    return-void
.end method

.method public startMultiMicZoomFocus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/z6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/z6;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startRecording()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateOrientationHint()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->updateLocationInfo()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->startRecording()V

    return-void
.end method

.method public startSingleTakeRecording()V
    .locals 2

    .line 1
    sget-object v0, Ls5/d;->f:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->prepareStartRecording()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAeAfAwb()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public startSlowMotionRecording()V
    .locals 3

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "startSlowMotionRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ls5/d;->f:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->prepareStartRecording()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getAfMode(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/o7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/o7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public startSuperSlowMotionRecording(I)V
    .locals 2

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "startSuperSlowMotionRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ls5/d;->f:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateOrientationHint()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->prepareStartRecording()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSuperSlowMotionRecordingManager:Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/SuperSlowMotionRecordingManager;->startSuperSlowMotionRecording(I)V

    return-void
.end method

.method public startVideoRecording()V
    .locals 2

    .line 1
    sget-object v0, Ls5/d;->f:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->prepareStartRecording()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->isMultiMediaRecorderRequired()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_MULTI_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 9
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method stop()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stopVideoRecording()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v2, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public stopBackgroundRecording()V
    .locals 2

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "stopBackgroundRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_BACKGROUND_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchSetting()V

    return-void
.end method

.method public stopCleanupFileHandlerThread()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->stopCleanupFileHandlerThread()V

    return-void
.end method

.method public stopHyperLapseRecording(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ls5/d;->g:Ls5/d;

    invoke-static {p1}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p1

    invoke-virtual {p1}, Ls5/c;->c()V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchSetting()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_HYPERLAPSE_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stopVideoRecording()V

    :goto_0
    return-void
.end method

.method public stopMicLevelMonitor()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->stopLevelMonitor()V

    return-void
.end method

.method public stopRecording()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mSessionController:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;->stopRecording()V

    return-void
.end method

.method public stopSingleTakeRecording()V
    .locals 2

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "stopSingleTakeRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ls5/d;->g:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_VIDEO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->resetPreviousZoomValues()V

    return-void
.end method

.method public stopSlowMotionVideoPreview()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    return-void
.end method

.method public stopSlowMotionVideoRecording()V
    .locals 3

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "stopSlowMotionVideoRecording"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ls5/d;->g:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/p7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/p7;-><init>(Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->enablePalmDetection(Z)V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->resetPreviousZoomValues()V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchSetting()V

    return-void
.end method

.method public stopVideoRecording()V
    .locals 2

    .line 1
    sget-object v0, Ls5/d;->g:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->SET_RECORDING_STOP_TRIGGER:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreTorchSetting()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->resetPreviousZoomValues()V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lu3/b;->L1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method public stopVideoStream()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    return-void
.end method

.method public switchFacing(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-object v1, Lu3/b;->L1:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->setPreviousZoomValue(II)V

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    const-string v4, "2"

    if-nez v3, :cond_2

    const-string v3, "0201"

    .line 5
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "0244"

    .line 6
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_1
    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->changeRecordingState(Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 9
    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->restoreZoomValue()V

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v4, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    if-eqz v0, :cond_5

    .line 14
    sget-object p1, Lu3/h;->r:Lu3/h;

    invoke-static {p1}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->WAIT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-static {p1}, Lu3/d;->b(Lu3/h;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->updateTorchSetting(Z)V

    return-void
.end method

.method public switchRecordingCamera(I)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    move v2, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->PAUSED:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v3, v4, :cond_2

    move v0, v1

    .line 2
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->isRequested(Lcom/sec/android/app/camera/engine/request/RequestId;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p0, "RecordingManager"

    const-string/jumbo p1, "switchRecordingCamera: return, video snapshot requested."

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v5, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setCameraSwitchingWhileRecording(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    if-eq v1, v4, :cond_4

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 8
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->switchRecordingCamera(I)V

    if-eqz v0, :cond_5

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_5
    return-void
.end method

.method public unregisterEventListener()V
    .locals 2

    const-string v0, "RecordingManager"

    const-string/jumbo v1, "unregisterEventListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mRecordingManagerEventListener:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingManagerEventListener;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->mIsNeedToRestoreTorchSetting:Z

    return-void
.end method
