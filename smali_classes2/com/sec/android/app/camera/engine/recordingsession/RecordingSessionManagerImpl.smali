.class public Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;
.super Ljava/lang/Object;
.source "RecordingSessionManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/RecordingSessionManager;
.implements Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingSessionController"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

.field private mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

.field private mInitialRecordingFacing:I

.field private mIsCleanupFileHandlerThreadRunning:Z

.field private final mMediaRecorderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaRecorder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;

.field private final mRecordingSessionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mIsCleanupFileHandlerThreadRunning:Z

    .line 6
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    .line 7
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 8
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 9
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$getSubSessions$12(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/location/Location;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$updateLocationInfo$9(Landroid/location/Location;Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;ZLcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$prepareRecording$0(ZLcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    return-void
.end method

.method private checkRequestedAttachSize(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;->getVideoBitrate()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getVideoEncodingBitrate()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result v3

    if-lez v3, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;->getAudioBitrate()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getAudioEncodingBitrate()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    :goto_1
    add-int/2addr v2, p1

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result p1

    if-ne p1, v1, :cond_2

    int-to-float p1, v2

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr p1, v0

    float-to-int v2, p1

    .line 10
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedRecordingSizeLimit()J

    move-result-wide p0

    int-to-long v3, v2

    cmp-long v0, p0, v3

    if-gez v0, :cond_3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkRequestedAttachSize - size limit failed. finish. requestedRecordingSizeLimit : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", minBytesToRecordOneSec : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordingSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$prepareStartRecording$1(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    return-void
.end method

.method public static synthetic e(ILjava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$updateOrientationHint$10(ILjava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic f()Ljava/lang/RuntimeException;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$getMainSession$11()Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$startRecording$7(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    return-void
.end method

.method private getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/d0;->a:Lcom/sec/android/app/camera/engine/recordingsession/d0;

    .line 2
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/g0;->a:Lcom/sec/android/app/camera/engine/recordingsession/g0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    return-object p0
.end method

.method private getMaxDurationLimitByHal(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    .line 3
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isSlowMotionMode(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {v1, v0, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getHighSpeedRecordingTimeLimit(Landroid/util/Size;I)I

    move-result p0

    :goto_0
    mul-int/lit16 p0, p0, 0x3e8

    return p0

    .line 5
    :cond_0
    invoke-interface {v1, v0, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getRecordingTimeLimit(Landroid/util/Size;I)I

    move-result p0

    goto :goto_0
.end method

.method private getMaxRecordingDuration(ILcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)I
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getMediaRecorderProfile()Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;

    move-result-object p2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedRecordingDurationLimit()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedRecordingDurationLimit()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4
    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getVideoFrameRate()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getRecordingMode()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMaxDurationLimitByHal(II)I

    move-result v2

    if-lez v2, :cond_1

    .line 5
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingTimeLimit(II)I

    move-result v0

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getTotalRecordingDurationInMs()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getTotalRecordingDurationInMs()J

    move-result-wide v3

    long-to-int v0, v3

    sub-int v0, v2, v0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRemainTimeByStorageInMs(ILcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)I

    move-result p1

    const v2, 0x36ee80

    if-ge p1, v2, :cond_2

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingTimeLimit(II)I

    move-result v0

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getMaxDuration()I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingTimeLimit(II)I

    move-result v0

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getMaxRecordingDuration : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordingSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getMaxVideoFileSize(I)J
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedRecordingSizeLimit()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedRecordingSizeLimit()J

    move-result-wide v0

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestedRecordingSize by intent : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "RecordingSessionController"

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/camera/util/StorageUtils;->isUnlimitedVideoFileSizeSupported(I)Z

    move-result p0

    const-wide v2, 0xffffffffL

    if-nez p0, :cond_1

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0
.end method

.method private getMediaBitrate(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->isAudioEncodingDisabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getAudioEncodingBitrate()I

    move-result p0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getVideoEncodingBitrate()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method private getRecordingTimeLimit(II)I
    .locals 0

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getRemainTimeByStorageInMs(ILcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)I
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMediaBitrate(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMediaBitrate(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/StorageUtils;->getRemainTimeInMS(II)J

    move-result-wide p1

    long-to-int p1, p1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    div-int/2addr p1, p0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    return p1
.end method

.method private getSubSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/f0;->a:Lcom/sec/android/app/camera/engine/recordingsession/f0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getVideoFilePostfix(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isMultiRecorderRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->isMainSession()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_A"

    goto :goto_0

    :cond_0
    const-string p0, "_B"

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isSingleTakePictureSupported()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%02d"

    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;Ljava/util/ArrayList;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$registerVideo$3(Ljava/util/ArrayList;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    return-void
.end method

.method public static synthetic i(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$releaseMediaRecorder$4(Ljava/util/Map$Entry;)V

    return-void
.end method

.method private initializeSession(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderProfile:Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile;->createProfile()Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setMediaRecorderProfile(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingStorage()I

    move-result v0

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMaxVideoFileSize(I)J

    move-result-wide v1

    .line 4
    invoke-virtual {p1, v1, v2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setMaxVideoFileSize(J)V

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMaxRecordingDuration(ILcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setMaxRecordingDuration(I)V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->isShutterSoundEnabled()Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setShutterSoundEnabled(Z)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getMediaRecorderProfile()Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->checkRequestedAttachSize(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Lq5/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lq5/a;-><init>(I)V

    throw p0

    .line 11
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "initializeSession  maxFileSize : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", maxRecordingTime : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordingSessionController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isEffectProcessorActivated()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isMultiCameraEffectProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->isEffectProcessorActivated()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isFunVideoMode()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMultiRecorderRunning()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSlowMotionMode(I)Z
    .locals 0

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x15

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

.method public static synthetic j(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$stopCleanupFileHandlerThread$6(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic k(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$startCleanupFileHandlerThread$5(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;ILcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$prepareSwitchMultiCameraFacing$2(ILcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    return-void
.end method

.method private static synthetic lambda$getMainSession$11()Ljava/lang/RuntimeException;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no main session"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$getSubSessions$12(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->isMainSession()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$prepareRecording$0(ZLcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->prepareRecordingSession(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;Z)V

    return-void
.end method

.method private synthetic lambda$prepareStartRecording$1(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getVideoFilePostfix(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$prepareSwitchMultiCameraFacing$2(ILcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isMultiRecorderRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result p0

    if-nez p0, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getRecordingFacing()I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setMainSession(Z)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setRecordingFacing(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$registerVideo$3(Ljava/util/ArrayList;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isMultiRecorderRunning()Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->registerVideo(Z)Landroid/util/Pair;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$releaseMediaRecorder$4(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->releaseMediaRecorder()V

    return-void
.end method

.method private static synthetic lambda$startCleanupFileHandlerThread$5(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->startCleanupFileHandlerThread()V

    return-void
.end method

.method private synthetic lambda$startRecording$7(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->startRecording()V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isFunVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setFunRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->isPreviewRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->startEffectRecording(Landroid/view/Surface;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$stopCleanupFileHandlerThread$6(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->stopCleanupFileHandlerThread()V

    return-void
.end method

.method private synthetic lambda$switchFacing$8(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mInitialRecordingFacing:I

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->switchFacing(I)V

    return-void
.end method

.method private static synthetic lambda$updateLocationInfo$9(Landroid/location/Location;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->updateLocationInfo(Landroid/location/Location;)V

    return-void
.end method

.method private static synthetic lambda$updateOrientationHint$10(ILjava/util/Map$Entry;)V
    .locals 0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->updateOrientationHint(I)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->lambda$switchFacing$8(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    return-void
.end method

.method private prepareRecordingSession(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;Z)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->reset()V

    .line 2
    :cond_0
    sget-object p2, Lu3/b;->K4:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setVideoStabilizationMode(I)V

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->initializeSession(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    const/4 p2, 0x0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->isVideoSavedOnRequestedUri()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object p2

    .line 7
    :cond_2
    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->registerTempVideo(Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->prepareMediaRecorder()V

    return-void
.end method


# virtual methods
.method addRecordingSession(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public cancelRecording()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->CANCEL_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor;->execute(Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;Ljava/util/HashMap;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isFunVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setFunRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->stopEffectRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearSessions()V
    .locals 2

    const-string v0, "RecordingSessionController"

    const-string v1, "clearSessions"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->setMediaRecorder(Ljava/util/ArrayList;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/p0;->a:Lcom/sec/android/app/camera/engine/recordingsession/p0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public closeFileDescriptors()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getSubSessions()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/o0;->a:Lcom/sec/android/app/camera/engine/recordingsession/o0;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->closeFileDescriptor()V

    return-void
.end method

.method public createRecordingSession(IZ)Landroid/view/Surface;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isCameraSwitchingWhileRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->createBuilder(Landroid/content/Context;Landroid/view/Surface;Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->setPreviewRecording(Z)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->setEventListener(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$MediaRecorderEventListener;)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 6
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->setSaveAsPreviewed(I)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;

    move-result-object p2

    .line 7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->setStorage(I)Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession$Builder;->build()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setMainSession(Z)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setRecordingFacing(I)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->addRecordingSession(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V

    .line 12
    invoke-virtual {p2}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getInitialFacing()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mInitialRecordingFacing:I

    return p0
.end method

.method public getMaxRecordingTimeInMs()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getMaxRecordingDurationInMs()I

    move-result p0

    return p0
.end method

.method public getRecordingOrientation()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getRecordingOrientation()I

    move-result p0

    return p0
.end method

.method public getRecordingStorage()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderExternalStorageAvailableFeature(ILcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSdStorageAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTotalRecordingTimeInMs()J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getTotalRecordingDurationInMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAudioRecordingDisabled()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getMediaRecorderProfile()Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->isAudioEncodingDisabled()Z

    move-result p0

    return p0
.end method

.method public isHighSpeedRecording()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->getMediaRecorderProfile()Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile;->getRecordingMode()I

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHighSpeedRecording recordingMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecordingSessionController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

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

.method public isMaxDurationLimited()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->isMaxDurationLimited()Z

    move-result p0

    return p0
.end method

.method public isStopRecordingAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/e0;->a:Lcom/sec/android/app/camera/engine/recordingsession/e0;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isSwitchFacingWhileRecordingSupported()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isMultiRecorderRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lu3/b;->z3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedMediaRecorderProfile()Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result p0

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public onDbUpdatePrepared(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;->onDbUpdatePrepared(Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;->onError()V

    return-void
.end method

.method public onMaxDurationReached()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;->onRecordingMaxDurationReached()V

    return-void
.end method

.method public onMaxFileSizeApproaching()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->isUnlimitedVideoFileSizeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RecordingSessionController"

    if-eqz v0, :cond_0

    const-string p0, "onMaxFileSizeApproaching return - unlimited size recording is supported"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->getAvailableStorage(I)J

    move-result-wide v3

    long-to-float v0, v3

    const v3, 0x4f8ccccd

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    const-string p0, "onMaxFileSizeApproaching return - remain storage is under 4GB"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isMultiRecorderRunning()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "onMaxFileSizeApproaching return -- multirecorder"

    .line 6
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onMaxFileSizeReached()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;->onRecordingMaxFileSizeReached()V

    return-void
.end method

.method public onMediaRecorderPrepared(Landroid/media/MediaRecorder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMediaRecorderPrepared size : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RecordingSessionController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mMediaRecorderList:Ljava/util/ArrayList;

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->setMediaRecorder(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onNextOutputFileStarted(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMaxVideoFileSize(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setMaxVideoFileSize(J)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getRecordingStorage()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMaxRecordingDuration(ILcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setMaxRecordingDuration(I)V

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getVideoFilePostfix(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->setNextFileName(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;->onNextOutputFileStarted()V

    return-void
.end method

.method public onRecordingTick(JJ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;->onRecordingTick(JJ)V

    return-void
.end method

.method public onTrackStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;->onRecordingTrackStarted()V

    return-void
.end method

.method public pauseRecording()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->PAUSE_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor;->execute(Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;Ljava/util/HashMap;)V

    return-void
.end method

.method public prepareRecording(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getSubSessions()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/recordingsession/n0;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/n0;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->prepareRecordingSession(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;Z)V

    return-void
.end method

.method public prepareStartRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mInitialRecordingFacing:I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/recordingsession/i0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/i0;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public prepareSwitchMultiCameraFacing()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/l0;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/engine/recordingsession/l0;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerVideo()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getSubSessions()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/m0;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/camera/engine/recordingsession/m0;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;Ljava/util/ArrayList;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->getMainSession()Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isMultiRecorderRunning()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSession;->registerVideo(Z)Landroid/util/Pair;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public releaseMediaRecorder()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->setMediaRecorder(Ljava/util/ArrayList;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/a0;->a:Lcom/sec/android/app/camera/engine/recordingsession/a0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 3
    sget-object v0, Lu3/b;->Y0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mIsCleanupFileHandlerThreadRunning:Z

    if-nez v0, :cond_1

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void
.end method

.method public resumeRecording()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->RESUME_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor;->execute(Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;Ljava/util/HashMap;)V

    return-void
.end method

.method public setSessionEventListener(Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/RecordingSessionManager$RecordingSessionEventListener;

    return-void
.end method

.method public startCleanupFileHandlerThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/c0;->a:Lcom/sec/android/app/camera/engine/recordingsession/c0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mIsCleanupFileHandlerThreadRunning:Z

    return-void
.end method

.method public startRecording()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/recordingsession/j0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/j0;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public stopCleanupFileHandlerThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/recordingsession/b0;->a:Lcom/sec/android/app/camera/engine/recordingsession/b0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mIsCleanupFileHandlerThreadRunning:Z

    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;->STOP_RECORDING:Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor;->execute(Lcom/sec/android/app/camera/engine/recordingsession/SessionTaskExecutor$SessionTaskId;Ljava/util/HashMap;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isFunVideoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->setFunRecordingSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->isEffectProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->stopEffectRecording()V

    :cond_1
    :goto_0
    return-void
.end method

.method public switchFacing()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/recordingsession/k0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/recordingsession/k0;-><init>(Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateLocationInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/android/app/camera/engine/recordingsession/h0;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/engine/recordingsession/h0;-><init>(Landroid/location/Location;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updateOrientationHint(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/recordingsession/RecordingSessionManagerImpl;->mRecordingSessionMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->parallelStream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/engine/recordingsession/z;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/z;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
