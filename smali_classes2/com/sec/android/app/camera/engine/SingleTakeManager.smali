.class Lcom/sec/android/app/camera/engine/SingleTakeManager;
.super Ljava/lang/Object;
.source "SingleTakeManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$SingleTakeSessionEventListener;
.implements Lcom/samsung/android/camera/core2/callback/STPictureCallback;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$SlowMotionEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$EventFinderResultListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$ActionShotResultListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/SingleTakeManager$STServiceMessageHandler;,
        Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;,
        Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;
    }
.end annotation


# static fields
.field private static final SINGLE_TAKE_ACTION_SHOT_EVENT_SIZE:I = 0x6

.field private static final SINGLE_TAKE_CAMERA_ID_FRONT:I = 0x1

.field private static final SINGLE_TAKE_CAMERA_ID_REAR:I = 0x2

.field private static final SINGLE_TAKE_CAPTURE_TYPE_BURST:I = 0x1

.field private static final SINGLE_TAKE_CAPTURE_TYPE_NORMAL:I = 0x0

.field private static final SINGLE_TAKE_EVENT_FINDER_TIMED_OUT:I = 0x7d0

.field private static final SINGLE_TAKE_MAIN_CAPTURE_FPS_FOR_RM_DISABLED:I = 0x2

.field private static final SINGLE_TAKE_MAIN_CAPTURE_FPS_FOR_RM_ENABLED:I = 0xa

.field private static final SINGLE_TAKE_NUMBER_OF_BUFFER_FOR_CAPTURE:I = 0x3

.field private static final SINGLE_TAKE_NUMBER_OF_BUFFER_FOR_PREVIEW:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SingleTakeManager"

.field private static final mCommandMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

.field private final mAfInfoListener:Lcom/sec/android/app/camera/interfaces/InternalEngine$AfInfoListener;

.field private mBurstFps:I

.field private final mCameraOrientationEventListener:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCaptureCount:I

.field private mCaptureStartTimeStamp:J

.field private mCaptureType:I

.field private mElapsedProgressCount:I

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mEventFinderExpiredRunnable:Ljava/lang/Runnable;

.field private final mIntervalCaptureToken:Ljava/lang/Object;

.field private mIsCapturing:Z

.field private mIsEnableEventFinder:Z

.field private mIsRapidEngineSupported:Z

.field private mIsVideoMode:Z

.field private mIsWaitFirstMainImage:Z

.field private mIsWaitFirstSubImage:Z

.field private mIsWaitingMotionEvent:Z

.field private mIsWaitingPendingCapture:Z

.field private mIsWaitingRecordingStop:Z

.field private mLatestAfState:Ljava/lang/Integer;

.field private mLatestBrightnessValue:I

.field private mLatestOrientation:I

.field private mLatestPreviewTimeStamp:J

.field private mLatestSceneIndex:I

.field private mMainCamPicSize:Landroid/util/Size;

.field private mMainCameraID:I

.field private mMainCameraImageWriter:Landroid/media/ImageWriter;

.field private mNeedProgressCount:I

.field private mOverHeatLevel:I

.field private final mPendingEvent:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewCallback:Lcom/samsung/android/camera/core2/callback/PreviewCallback;

.field private mPreviewImageWriter:Landroid/media/ImageWriter;

.field private mRapidEngineScore:Ly3/c;

.field private mRecordingFilePath:Ljava/lang/String;

.field private final mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

.field private mRecordingSize:Landroid/util/Size;

.field private final mSTMessageHandlerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/android/app/camera/engine/SingleTakeManager$STServiceMessageHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSTPServiceListener:Lv3/b$b;

.field private mSendImageCount:I

.field private final mServiceCameraIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:I

.field private mSingleTakeEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;

.field private mSingleTakeFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleTakeHandler:Landroid/os/Handler;

.field private mSingleTakeHandlerThread:Landroid/os/HandlerThread;

.field private mStatus:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

.field private mThumbnailSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCommandMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SERVICE_BIND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SERVICE_INITIALIZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SERVICE_DEINITIALIZE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROCESS_START"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROCESS_STOP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PROCESS_CANCEL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x6

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SET_CAM_CAPTURE_INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SET_DEVICE_ORIENTATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SET_MOTION_INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "START_AUDIO_RECORDING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, -0x2

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "STOP_AUDIO_RECORDING"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9

    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SERVICE_UNBIND"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_GET_RECORDER_SURFACE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "COMMAND_SET_JUMP_INFO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Lcom/sec/android/app/camera/engine/RecordingManagerImpl;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewImageWriter:Landroid/media/ImageWriter;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraImageWriter:Landroid/media/ImageWriter;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    .line 5
    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSessionId:I

    .line 6
    new-instance v2, Landroid/util/Range;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v4, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeFps:Landroid/util/Range;

    .line 7
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    .line 8
    iput v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestBrightnessValue:I

    .line 9
    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestSceneIndex:I

    .line 10
    iput-object v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestAfState:Ljava/lang/Integer;

    .line 11
    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestOrientation:I

    .line 12
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsCapturing:Z

    .line 13
    iput v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    .line 14
    iput v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mNeedProgressCount:I

    .line 15
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingPendingCapture:Z

    .line 16
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    .line 17
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstMainImage:Z

    .line 18
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstSubImage:Z

    .line 19
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingRecordingStop:Z

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    .line 21
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsEnableEventFinder:Z

    .line 22
    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->IDLE:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mStatus:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 23
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPendingEvent:Landroid/util/ArraySet;

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mServiceCameraIdMap:Ljava/util/HashMap;

    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIntervalCaptureToken:Ljava/lang/Object;

    .line 26
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    .line 27
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    .line 28
    iput v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mOverHeatLevel:I

    const/4 v0, 0x2

    .line 29
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mBurstFps:I

    .line 30
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsRapidEngineSupported:Z

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    .line 32
    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureStartTimeStamp:J

    .line 33
    iput v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureCount:I

    .line 34
    iput v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSendImageCount:I

    .line 35
    new-instance v0, Lcom/sec/android/app/camera/engine/n8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/n8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraOrientationEventListener:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;

    .line 36
    new-instance v0, Lcom/sec/android/app/camera/engine/s8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/s8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEventFinderExpiredRunnable:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lcom/sec/android/app/camera/engine/w9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/w9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mAfInfoListener:Lcom/sec/android/app/camera/interfaces/InternalEngine$AfInfoListener;

    .line 38
    new-instance v0, Lcom/sec/android/app/camera/engine/q9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/q9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTPServiceListener:Lv3/b$b;

    .line 39
    new-instance v0, Lcom/sec/android/app/camera/engine/l8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/l8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewCallback:Lcom/samsung/android/camera/core2/callback/PreviewCallback;

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 41
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 42
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    .line 43
    iput-object p4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->initializeSTMessageHandlerMap()V

    .line 45
    invoke-virtual {p2, p0}, Lcom/sec/android/app/camera/engine/callback/MakerCallbackHolder;->setSingleTakePictureCallback(Lcom/samsung/android/camera/core2/callback/STPictureCallback;)V

    return-void
.end method

.method public static synthetic A(Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSingleTakeCancelled$25(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/camera/engine/SingleTakeManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleTakePicture()V

    return-void
.end method

.method public static synthetic D(Lcom/sec/android/app/camera/engine/SingleTakeManager;Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$new$4(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic E(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSTMessageError(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$onEventDetectionResult$5(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic G(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$new$1()V

    return-void
.end method

.method public static synthetic H(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$new$3(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic I(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStopped$20()V

    return-void
.end method

.method public static synthetic J(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$onEventFinderResult$7(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic K(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStarted$16(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method

.method public static synthetic L(Lcom/sec/android/app/camera/engine/SingleTakeManager;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$setAeTargetFps$30(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic M(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStarted$17()V

    return-void
.end method

.method public static synthetic N(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStopped$21(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;)V

    return-void
.end method

.method public static synthetic O(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSTMessageServiceDeinitialized(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic P(Lcom/sec/android/app/camera/engine/LastContentData;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStopped$23(Lcom/sec/android/app/camera/engine/LastContentData;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;)V

    return-void
.end method

.method public static synthetic Q(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSTMessageProcessStarted(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic R(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSTMessageProcessCancelled(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic S(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSTMessageServiceInitialized(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$consumePendingEvent$14()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/SingleTakeManager;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$consumePendingEvent$13(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c(Landroid/os/Bundle;Lcom/samsung/srcb/unihal/EventGyroResult;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$onEventFinderResult$6(Landroid/os/Bundle;Lcom/samsung/srcb/unihal/EventGyroResult;)V

    return-void
.end method

.method private consumePendingEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPendingEvent:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "consumePendingEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPendingEvent:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/p8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/p8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private convertCameraId(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convertCameraId: invalid camera id = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SingleTakeManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :cond_0
    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private enableActionShotCallback(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableActionShotResultCallback(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setActionShotResultListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$ActionShotResultListener;)V

    return-void
.end method

.method private enableCallbacks(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCallbacks: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->enableEventDetectionCallback(Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSingleTakePictureCallback(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mAeAfManager:Lcom/sec/android/app/camera/engine/AeAfManagerImpl;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mAfInfoListener:Lcom/sec/android/app/camera/interfaces/InternalEngine$AfInfoListener;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAutoFocusInfoListener(Lcom/sec/android/app/camera/interfaces/InternalEngine$AfInfoListener;)V

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraOrientationEventListener:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraOrientationEventListener:Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    :goto_1
    return-void
.end method

.method private enableEventDetectionCallback(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isActionShotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->enableActionShotCallback(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isEventFinderSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->enableEventFinderCallback(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->enableSlowMotionEventCallback(Z)V

    :goto_0
    return-void
.end method

.method private enableEventFinder(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isEventFinderSupported()Z

    move-result v0

    const-string v1, "SingleTakeManager"

    if-nez v0, :cond_0

    const-string p0, "enableEventFinder : Returned because it is not supported current device."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableEventFinder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsEnableEventFinder:Z

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/m8;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/m8;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private enableEventFinderCallback(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableEventFinderResultCallback(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setEventFinderResultListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$EventFinderResultListener;)V

    return-void
.end method

.method private enableSlowMotionEventCallback(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->enableSlowMotionEventDetection(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableSlowMotionEventCallback(Z)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setSlowMotionEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$SlowMotionEventListener;)V

    return-void
.end method

.method private getCameraIdByDeviceId(I)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mServiceCameraIdMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    return v1

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getImageWriter(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/media/ImageWriter;
    .locals 2

    const-string p0, "getImageWriter: "

    const-string v0, "SingleTakeManager"

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p1, p3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " get success"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " surface get fail - "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method private getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mStatus:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    return-object p0
.end method

.method private handlePictureTakeComplete()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureStartTimeStamp:J

    sub-long/2addr v0, v2

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePictureTakeComplete: capture complete in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    .line 4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_MULTI_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setCapturing(Z)V

    .line 7
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingPendingCapture:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stopSingleTakeSession()V

    goto :goto_0

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->postHandleTakePicture()V

    :goto_0
    return-void
.end method

.method private handleSTMessageError(Landroid/os/Message;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "service_error_code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSTMessageError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->IDLE:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :pswitch_0
    const-string p1, "handleSTMessageError : there is not enough storage"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x9

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    goto :goto_0

    :pswitch_1
    const-string p1, "handleSTMessageError : Permission denied"

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    goto :goto_0

    :pswitch_2
    const-string p1, "handleSTMessageError : there is no capture data"

    .line 9
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x7

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    goto :goto_0

    :pswitch_3
    const-string p1, "handleSTMessageError : there is not enough memory"

    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xa

    .line 12
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSTMessageProcessCancelled(Landroid/os/Message;)V
    .locals 1

    const-string p1, "SingleTakeManager"

    const-string v0, "handleSTMessageProcessCancelled"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "handleSTMessageProcessCancelled : waiting for capture completion"

    .line 3
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSingleTakeCancelled()V

    :goto_0
    return-void
.end method

.method private handleSTMessageProcessStarted(Landroid/os/Message;)V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "handleSTMessageProcessStarted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "current_sessionid"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSessionId:I

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/u8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/u8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleSTMessageProcessStopped(Landroid/os/Message;)V
    .locals 10

    const-string v0, "SingleTakeManager"

    const-string v1, "handleSTMessageProcessStopped"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/l9;->a:Lcom/sec/android/app/camera/engine/l9;

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/t8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/t8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {p1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "thumbnail_data"

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "thumbnail_size"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v2

    const-string/jumbo v3, "thumbnail_format"

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 10
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 11
    new-instance v4, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;

    invoke-direct {v4, v3, v2}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;-><init>(ILandroid/util/Size;)V

    .line 12
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailCallback()Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/camera/engine/k9;

    invoke-direct {v3, v1, v4}, Lcom/sec/android/app/camera/engine/k9;-><init>(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const-string v1, "handleSTMessageProcessStopped : thumbnail data is null!"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "first_capture_uri"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_2

    const-string v0, "current_sessionid"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/camera/engine/LastContentData;

    .line 17
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/LastContentData;->clear()V

    .line 18
    invoke-virtual {p1, v1}, Lcom/sec/android/app/camera/engine/LastContentData;->setContentSecMpUri(Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 19
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->getCurrentTimeInMillis()J

    move-result-wide v5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v7

    sget-object v8, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    move-object v2, p1

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/app/camera/engine/LastContentData;->updateLastContentData(Ljava/nio/ByteBuffer;Ljava/lang/String;JILcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;I)V

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/x8;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/x8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;Lcom/sec/android/app/camera/engine/LastContentData;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const-string p1, "handleSTMessageProcessStopped : uri is null!"

    .line 21
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :goto_2
    return-void
.end method

.method private handleSTMessageRecordingStarted(Landroid/os/Message;)V
    .locals 1

    const-string p1, "SingleTakeManager"

    const-string v0, "handleSTMessageRecordingStarted"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    :cond_0
    return-void
.end method

.method private handleSTMessageServiceDeinitialized(Landroid/os/Message;)V
    .locals 1

    const-string p1, "SingleTakeManager"

    const-string v0, "handleSTMessageServiceDeinitialized"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->IDLE:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    const/4 p1, 0x2

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    return-void
.end method

.method private handleSTMessageServiceInitialized(Landroid/os/Message;)V
    .locals 4

    const-string v0, "SingleTakeManager"

    const-string v1, "handleSTMessageServiceInitialized"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "preview_surface"

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getImageWriter(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewImageWriter:Landroid/media/ImageWriter;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "main_cap_surface"

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getImageWriter(Landroid/os/Bundle;Ljava/lang/String;I)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraImageWriter:Landroid/media/ImageWriter;

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 5
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 7
    iget v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestOrientation:I

    const-string v3, "device_orientation"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 10
    sget-object v0, Lu3/b;->T3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "support_rapid_moment_process"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsRapidEngineSupported:Z

    if-eqz p1, :cond_1

    .line 12
    new-instance p1, Ly3/c;

    invoke-direct {p1}, Ly3/c;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    const/16 p1, 0xa

    .line 13
    iput p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mBurstFps:I

    .line 14
    :cond_1
    sget-object p1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    const/4 p1, 0x1

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    return-void
.end method

.method private handleSingleTakeCancelled()V
    .locals 4

    const-string v0, "SingleTakeManager"

    const-string v1, "handleSingleTakeCancelled"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    .line 4
    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_MULTI_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setCapturing(Z)V

    const/4 v0, 0x6

    .line 7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 8
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/m9;->a:Lcom/sec/android/app/camera/engine/m9;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private handleTakePicture()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-eq v0, v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->isCapturing()Z

    move-result v0

    const-string v1, "SingleTakeManager"

    if-nez v0, :cond_c

    .line 5
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string p0, "handleTakePicture: this function didn\'t supported in burst capture mode"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 8
    sget-object v0, Lu3/h;->S:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lu3/h;->N:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 11
    sget-object v0, Lu3/h;->U:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    .line 12
    :cond_4
    iget v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mOverHeatLevel:I

    const/4 v4, 0x4

    if-lt v3, v4, :cond_5

    .line 13
    sget-object v0, Lu3/h;->T:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    .line 14
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureStartTimeStamp:J

    sub-long/2addr v5, v7

    int-to-long v7, v0

    sub-long v9, v7, v5

    const-wide/16 v11, 0x0

    cmp-long v3, v9, v11

    if-gez v3, :cond_6

    move-wide v9, v11

    :cond_6
    cmp-long v3, v5, v7

    if-gez v3, :cond_8

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTakePicture capture sequence comes too shortly. wait "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    .line 17
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIntervalCaptureToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Lcom/sec/android/app/camera/engine/r8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/r8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIntervalCaptureToken:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_7
    return-void

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleTakePicture : focusMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", afState="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestAfState:Ljava/lang/Integer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v4, :cond_b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    if-ne v0, v2, :cond_a

    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->takeCapture()V

    goto :goto_2

    .line 22
    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTakePicture : unsupported AF mode "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 23
    :cond_b
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->takeCapture()V

    goto :goto_2

    :cond_c
    const-string p0, "handleTakePicture : there are any capture left on hold. waiting for done"

    .line 24
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/engine/SingleTakeManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$sendSingleTakeInfo$28(I)V

    return-void
.end method

.method private initializeSTMessageHandlerMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/engine/v9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/v9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/engine/s9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/s9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/engine/w8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/w8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    const/16 v2, 0x39

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/engine/t9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/t9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/engine/h9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/h9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/engine/u9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/u9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/android/app/camera/engine/r9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/r9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    const/16 p0, 0x38

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private isCapturing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsCapturing:Z

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$stopSingleTakeSession$11(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStopped$19(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method

.method private static synthetic lambda$consumePendingEvent$12(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;->onInfo(I)V

    return-void
.end method

.method private synthetic lambda$consumePendingEvent$13(Ljava/lang/Integer;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/engine/j9;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/j9;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$consumePendingEvent$14()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPendingEvent:Landroid/util/ArraySet;

    new-instance v1, Lcom/sec/android/app/camera/engine/i9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/i9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPendingEvent:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private static synthetic lambda$enableEventFinder$15(ZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->W:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$handleSTMessageProcessStarted$16(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "handleSTMessageProcessStarted onCaptureStarted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureStarted()V

    return-void
.end method

.method private synthetic lambda$handleSTMessageProcessStarted$17()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/p9;->a:Lcom/sec/android/app/camera/engine/p9;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handleSTMessageProcessStopped$18(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic lambda$handleSTMessageProcessStopped$19(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureCompleted()V

    return-void
.end method

.method private synthetic lambda$handleSTMessageProcessStopped$20()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/n9;->a:Lcom/sec/android/app/camera/engine/n9;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handleSTMessageProcessStopped$21(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;)V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "send onThumbnailTaken"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, p0, p1, v0}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback;->onThumbnailTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private static synthetic lambda$handleSTMessageProcessStopped$22(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;->onCaptureCompleted()V

    return-void
.end method

.method private static synthetic lambda$handleSTMessageProcessStopped$23(Lcom/sec/android/app/camera/engine/LastContentData;Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;)V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "handleSTMessageProcessStopped: send onPictureSaved"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onPictureSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;)V

    return-void
.end method

.method private synthetic lambda$handleSTMessageProcessStopped$24(Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCaptureEventListeners()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/o9;->a:Lcom/sec/android/app/camera/engine/o9;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/engine/a9;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/a9;-><init>(Lcom/sec/android/app/camera/engine/LastContentData;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$handleSingleTakeCancelled$25(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->roundOrientation(I)I

    move-result p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestOrientation:I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 6
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-string v2, "device_orientation"

    .line 7
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "mEventFinderExpiredRunnable.run: event finder result did not comes in 2000ms"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendToStop()V

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAfInfoChanged : afMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", AfState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;->c()Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestAfState:Ljava/lang/Integer;

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->postHandleTakePicture()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$3(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTMessageHandlerMap:Landroid/util/SparseArray;

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/SingleTakeManager$STServiceMessageHandler;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager$STServiceMessageHandler;->handle(Landroid/os/Message;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceiveCallback : unknown message "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SingleTakeManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$4(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 6

    .line 1
    iget-boolean p3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-nez p3, :cond_3

    .line 2
    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->b()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    sub-long/2addr v0, v4

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->b()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/callback/PreviewCallback$DataInfo;->b()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object p2

    sget-object p3, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-eq p2, p3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object p2

    sget-object p3, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-ne p2, p3, :cond_3

    .line 5
    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewImageWriter:Landroid/media/ImageWriter;

    const-string p3, "SingleTakeManager"

    if-eqz p2, :cond_2

    .line 6
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewFrame: send preview timeStamp = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    sget-object p2, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->PREVIEW:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    iget-wide v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendBuffer(Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewFrame: exception occur on way to send preview to service"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 9
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 10
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stop()V

    goto :goto_0

    :cond_2
    const-string p0, "onPreviewFrame: not ready to write into the previewImageWriter"

    .line 11
    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$onEventDetectionResult$5(Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEventFinderExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic lambda$onEventFinderResult$6(Landroid/os/Bundle;Lcom/samsung/srcb/unihal/EventGyroResult;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/samsung/srcb/unihal/EventGyroResult;->panTiltCount:I

    const-string v1, "pan_tilt_count"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p1, Lcom/samsung/srcb/unihal/EventGyroResult;->panTiltTimestampList:[J

    const-string v1, "pan_tilt_timestamp_info"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 3
    iget-object p1, p1, Lcom/samsung/srcb/unihal/EventGyroResult;->panTiltInfoList:[I

    const-string v0, "pan_tilt_info"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-void
.end method

.method private synthetic lambda$onEventFinderResult$7(Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEventFinderExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onSingleTakeVideoStarted$8(Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V
    .locals 0

    const/4 p1, 0x4

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    return-void
.end method

.method private synthetic lambda$onSingleTakeVideoStarted$9()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/g9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/g9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$sendMessageToSTService$26(Landroid/os/Message;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCommandMap:Ljava/util/HashMap;

    iget v1, p0, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SingleTakeManager"

    if-eqz v1, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessageToSTService : ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/os/Message;->what:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessageToSTService : unknown msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :goto_0
    invoke-static {}, Lv3/b;->n()Lv3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lv3/b;->A(Landroid/os/Message;)V

    return-void
.end method

.method private static synthetic lambda$sendMessageToSTService$27(Landroid/os/Message;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/engine/o8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/o8;-><init>(Landroid/os/Message;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$sendSingleTakeInfo$28(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->consumePendingEvent()V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;->onInfo(I)V

    goto :goto_0

    :cond_0
    const-string v0, "SingleTakeManager"

    const-string v1, "onSingleTakeEvent: shooting-mode is not activated"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPendingEvent:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$sendToStop$29(Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEventFinderExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setAeTargetFps$30(Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeFps:Landroid/util/Range;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$stop$10(Landroid/os/Handler;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEventFinderExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stopSingleTakeSession$11(Landroid/os/Handler;)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEventFinderExpiredRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/engine/SingleTakeManager;Lcom/sec/android/app/camera/engine/LastContentData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStopped$24(Lcom/sec/android/app/camera/engine/LastContentData;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$onSingleTakeVideoStarted$9()V

    return-void
.end method

.method public static synthetic o(Landroid/os/Message;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$sendMessageToSTService$26(Landroid/os/Message;)V

    return-void
.end method

.method private onPictureSequenceProgressed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureSequenceProgressed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mNeedProgressCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mNeedProgressCount:I

    if-ne v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->CANCELLING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSingleTakeCancelled()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handlePictureTakeComplete()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStopped$22(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method

.method private postHandleTakePicture()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/sec/android/app/camera/engine/r8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/r8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static synthetic q(Landroid/os/Message;Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$sendMessageToSTService$27(Landroid/os/Message;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$stop$10(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/engine/SingleTakeManager;Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$new$2(Lcom/samsung/android/camera/core2/callback/AfInfoCallback$AfInfo;)V

    return-void
.end method

.method private sendBuffer(Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;Ljava/nio/ByteBuffer;J)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "sendBuffer: "

    const-string v3, "SingleTake-sendBuffer"

    .line 1
    invoke-static {v3}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBuffer : send ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] start"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "SingleTakeManager"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4
    sget-object v3, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$BuffType:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v3, v3, v8

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v3, v9, :cond_1

    if-eq v3, v8, :cond_0

    const-string v0, "sendBuffer : unknown buffer type"

    .line 5
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    iget-object v3, v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    .line 7
    iget-object v10, v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraImageWriter:Landroid/media/ImageWriter;

    .line 8
    iget v11, v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSendImageCount:I

    add-int/2addr v11, v9

    iput v11, v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSendImageCount:I

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    .line 10
    iget-object v10, v0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewImageWriter:Landroid/media/ImageWriter;

    .line 11
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 12
    :try_start_0
    invoke-virtual {v10}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 14
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v13

    const/4 v14, 0x0

    .line 15
    aget-object v15, v13, v14

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 16
    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v14

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v16

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    mul-int v3, v3, v16

    invoke-virtual {v14, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 17
    invoke-virtual {v15, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 18
    aget-object v3, v13, v9

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 19
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v14

    sub-int/2addr v14, v9

    invoke-virtual {v1, v14}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 20
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 21
    aget-object v8, v13, v8

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 22
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 23
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 24
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-wide/from16 v8, p3

    .line 25
    invoke-virtual {v0, v8, v9}, Landroid/media/Image;->setTimestamp(J)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 27
    :try_start_1
    invoke-virtual {v10, v0}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 28
    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] end ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms] / dequeue["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v11, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms] put["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v8, v11

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 31
    invoke-static {v5, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 33
    invoke-static {v5, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method private sendCaptureData(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->MAIN_CAM:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendCaptureData(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;ILcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;)V

    return-void
.end method

.method private sendCaptureData(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;ILcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SingleTakeManager"

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCaptureData: ignore this capture data. status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move/from16 v2, p3

    .line 5
    invoke-direct {v1, v2}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->convertCameraId(I)I

    move-result v2

    .line 6
    iget v6, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 7
    sget-object v6, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->MAIN_CAM:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-virtual {v0, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    iget v6, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureCount:I

    add-int/2addr v6, v7

    iput v6, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureCount:I

    .line 9
    :cond_1
    iget-boolean v6, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsRapidEngineSupported:Z

    if-eqz v6, :cond_2

    const-string v6, "SingleTake-RMEngine"

    .line 10
    invoke-static {v6}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 12
    new-instance v12, Lz3/d;

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    iget-object v6, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v6, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v9

    move-object v6, v12

    move-wide v4, v10

    move-wide v10, v13

    move-object v15, v12

    move v12, v2

    invoke-direct/range {v6 .. v12}, Lz3/d;-><init>([BIIJI)V

    .line 13
    iget-object v6, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    invoke-virtual {v6, v15}, Ly3/c;->h(Lz3/d;)Lz3/e;

    move-result-object v6

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendCaptureData() RapidEngineScorerSync isAccepted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lz3/e;->b()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    neg-long v4, v4

    add-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    .line 16
    invoke-virtual {v6}, Lz3/e;->b()Z

    move-result v4

    if-nez v4, :cond_2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCaptureData: RapidEngineScorerSync reject this image. reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lz3/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    move-object/from16 v4, p1

    goto :goto_1

    .line 18
    :cond_3
    sget-object v4, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->MAIN_CAM:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 19
    iget-boolean v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstMainImage:Z

    if-nez v4, :cond_4

    return-void

    .line 20
    :cond_4
    iget v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureCount:I

    add-int/2addr v4, v7

    iput v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureCount:I

    const/4 v4, 0x0

    .line 21
    iput-boolean v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstMainImage:Z

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 22
    iget-boolean v5, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstSubImage:Z

    if-nez v5, :cond_6

    return-void

    .line 23
    :cond_6
    iput-boolean v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstSubImage:Z

    goto :goto_0

    .line 24
    :goto_1
    :try_start_0
    invoke-direct {v1, v0, v4, v13, v14}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendBuffer(Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const/4 v3, 0x6

    .line 25
    invoke-static {v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 26
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "timestamp"

    .line 27
    invoke-virtual {v3, v4, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "exposureTime"

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 29
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v6, "lens_aperture"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 30
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "sensor_sensitivity"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const-string v5, "focal_length"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "awb_mode"

    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "flash_state"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->a()Landroid/hardware/camera2/CaptureResult;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    const-string v5, "location"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 35
    iget v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestSceneIndex:I

    const-string v5, "scene_index"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    iget v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestBrightnessValue:I

    const-string v5, "brightness"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    iget-object v4, v1, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationForCapture()I

    move-result v4

    const-string v5, "jpeg_orientation"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "cam_id"

    .line 38
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception occur on way to send image to service "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 42
    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stop()V

    return-void
.end method

.method private sendMessageToSTService(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/engine/z8;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/z8;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private sendSingleTakeInfo(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/v8;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/engine/v8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendToStart()V
    .locals 11

    const-string v0, "SingleTakeManager"

    const-string v1, "sendToStart"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 2
    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 6
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v7, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v7

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    const-string v8, "scaler_flip_mode"

    .line 7
    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "sensor_flip_mode"

    .line 9
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v5, :cond_1

    .line 11
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->getRecordingStorage()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/util/RecordingUtil;->createVideoDirectory(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 12
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v9, Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;->JPEG:Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/engine/CommonEngine;->createNewOutputFilePath(Lcom/sec/android/app/camera/interfaces/InternalEngine$PictureSavingType;)V

    .line 13
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->getNewOutputFilePath()Ljava/lang/String;

    move-result-object v5

    .line 14
    :goto_1
    iget v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    if-ne v9, v6, :cond_2

    .line 15
    iget v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mBurstFps:I

    const-string v10, "burst_shot_fps"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mBurstFps:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_2
    sget-object v9, Lu3/b;->R3:Lu3/b;

    invoke-static {v9}, Lu3/d;->e(Lu3/b;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 18
    iget-object v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeFps:Landroid/util/Range;

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const-string v10, "main_rec_fps"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeFps:Landroid/util/Range;

    invoke-virtual {v9}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v9, "cam_storage_path"

    .line 20
    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    const-string v9, "capture_type"

    invoke-virtual {v2, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-wide v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    const-string v5, "latest_timestamp"

    invoke-virtual {v2, v5, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 25
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraLocationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/provider/CameraLocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v5

    const-string v7, "location"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 27
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->writeBundleDataForCustomizedOption(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    if-ne v4, v6, :cond_4

    .line 28
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    goto :goto_2

    .line 29
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    :goto_2
    const-string v5, "beauty_level"

    .line 30
    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendToStart() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    return-void
.end method

.method private sendToStop()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    const-string v1, "SingleTakeManager"

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingRecordingStop:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToStop: ignore it. waiting for recording done. recording state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    if-eqz v0, :cond_1

    const-string p0, "sendToStop: ignore it. waiting for motion event."

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCurrentState()Lcom/sec/android/app/camera/interfaces/Engine$State;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$State;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$State;

    if-ne v0, v2, :cond_2

    const-string p0, "sendToStop: Shutdown state. stop command will be called another stop processor."

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STOPPING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    if-eq v0, v2, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToStop: ignore it. status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is invalid for stopping"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/camera/engine/d9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/d9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 11
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 12
    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v2, :cond_5

    .line 13
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    const-string/jumbo v4, "video_file_path"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, "sendToStop: this message have not video file path"

    .line 16
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :cond_4
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 18
    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    return-void
.end method

.method private setAeTargetFps(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAeTargetFps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeFps:Landroid/util/Range;

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance p2, Lcom/sec/android/app/camera/engine/x9;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/x9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setCapturing(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCapturing: set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsCapturing:Z

    return-void
.end method

.method private setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mStatus:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mStatus:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mStatus:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    return-void
.end method

.method private startHandlerThreads()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "STThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private stopHandlerThreads()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SingleTakeManager"

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopHandlerThreads: mSingleTakeHandlerThread - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 8
    :goto_1
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandlerThread:Landroid/os/HandlerThread;

    .line 9
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    .line 10
    throw v1

    :cond_0
    :goto_2
    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSTMessageRecordingStarted(Landroid/os/Message;)V

    return-void
.end method

.method private takeCapture()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "takeCapture: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setCapturing(Z)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->updateSceneDetectInfo()V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getBrightnessValueForCapture()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestBrightnessValue:I

    const/4 v1, 0x2

    .line 6
    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mNeedProgressCount:I

    .line 7
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_MULTI_VIDEO_SNAPSHOT:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoListForCapture()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/engine/request/RequestId;->TAKE_SINGLE_TAKE_CAPTURE:Lcom/sec/android/app/camera/engine/request/RequestId;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getDynamicShotInfoForCapture()Lcom/samsung/android/camera/core2/container/DynamicShotInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;Ljava/lang/Object;)V

    .line 10
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstSubImage:Z

    .line 11
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitFirstMainImage:Z

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureStartTimeStamp:J

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/engine/SingleTakeManager;Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$onSingleTakeVideoStarted$8(Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V

    return-void
.end method

.method private updateBundleData(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    .line 3
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    const/4 v5, 0x1

    aput v3, v2, v5

    iget v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->convertCameraId(I)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Capability;->getLensFacing()I

    move-result v3

    const/4 v7, 0x3

    aput v3, v2, v7

    const-string v3, "main_rec_info"

    .line 4
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v2, "recorder["

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->convertCameraId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 6
    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/Capability;->getLensFacing()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-boolean v8, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-nez v8, :cond_0

    new-array v1, v1, [I

    .line 8
    iget-object v8, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    .line 9
    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    aput v8, v1, v4

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    aput v8, v1, v5

    iget v8, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    invoke-direct {p0, v8}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->convertCameraId(I)I

    move-result v8

    aput v8, v1, v6

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Capability;->getLensFacing()I

    move-result v8

    aput v8, v1, v7

    const-string v8, "preview_info"

    .line 10
    invoke-virtual {p1, v8, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v1, "preview["

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->convertCameraId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 12
    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Capability;->getLensFacing()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mThumbnailSize:Landroid/util/Size;

    const-string/jumbo v2, "thumbnail_size"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    const-string v1, ",thumb["

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "CamInfo["

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    const-string/jumbo v2, "updateBundleData: "

    const-string v8, "SingleTakeManager"

    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_1

    const/16 v9, 0x67

    if-eq v1, v9, :cond_1

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateBundleData: Invalid CameraId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 21
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stop()V

    return-void

    :cond_1
    new-array v7, v7, [I

    .line 22
    iget-object v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    aput v9, v7, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    aput v4, v7, v5

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->convertCameraId(I)I

    move-result v4

    aput v4, v7, v6

    const-string v4, "main_cap_info"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string p1, "mainId="

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->convertCameraId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",mainSize="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSceneDetectInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSceneDetectInfo index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleTakeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v0}, Lcom/sec/android/app/camera/util/IntelligentUtil;->convertToSceneIndex(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestSceneIndex:I

    :cond_0
    return-void
.end method

.method private updateSessionInformation()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mServiceCameraIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 5
    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    :goto_0
    const-string v2, "recordingSize="

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    iget-boolean v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-nez v2, :cond_1

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableThumbnailSizes()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingSize:Landroid/util/Size;

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/util/Util;->findThumbnailSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mThumbnailSize:Landroid/util/Size;

    const-string v2, ",thumbSize="

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mThumbnailSize:Landroid/util/Size;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, ",pic size["

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v2

    const-string/jumbo v3, "updateSessionInformation: "

    const-string v4, "]"

    const-string v5, "]="

    const-string v6, "main["

    const-string v7, "SingleTakeManager"

    if-eqz v2, :cond_4

    const/4 v8, 0x1

    if-eq v2, v8, :cond_2

    const/16 v8, 0x67

    if-eq v2, v8, :cond_2

    .line 14
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSessionInformation: Invalid CameraId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 18
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stop()V

    return-void

    .line 19
    :cond_2
    iput v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    .line 20
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    .line 21
    iget-object v8, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget v9, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability(I)Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/Capability;->isDynamicFovSupported()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 22
    invoke-static {v1}, Lcom/sec/android/app/camera/util/CameraResolution;->getNormalAngleResolutionBySensorCropAngle(Lcom/sec/android/app/camera/interfaces/Resolution;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    goto :goto_1

    .line 23
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    .line 24
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mServiceCameraIdMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/request/CameraId;->getDeviceId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 26
    :cond_4
    iput v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    .line 27
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v8, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    .line 28
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mServiceCameraIdMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Lcom/sec/android/app/camera/engine/request/CameraId;->getDeviceId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCamPicSize:Landroid/util/Size;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$sendToStop$29(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic w(ZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$enableEventFinder$15(ZLcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method private writeBundleDataForCustomizedOption(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 7

    const-string v0, "output_customization_version"

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    sget-object v2, Lu3/b;->Y3:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_HIGHLIGHT_VIDEOS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 5
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v6, "generate_highlight_video"

    .line 6
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 8
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_2
    sget-object v2, Lu3/b;->W3:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_DYNAMIC_SLOW_MO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 11
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    const-string v6, "generate_dynamic_video"

    .line 12
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 14
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_BOOMERANG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 16
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    const-string v6, "generate_boomerang"

    .line 17
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 19
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_FILTERED_PHOTOS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 21
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_8

    move v2, v4

    goto :goto_6

    :cond_8
    move v2, v3

    :goto_6
    const-string v6, "generate_filtered_photo"

    .line 22
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 24
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_9

    move v2, v4

    goto :goto_7

    :cond_9
    move v2, v3

    :goto_7
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    sget-object v2, Lu3/b;->U3:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 26
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_COLLAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 27
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_a

    move v2, v4

    goto :goto_8

    :cond_a
    move v2, v3

    :goto_8
    const-string v6, "generate_collage"

    .line 28
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 30
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_b

    move v2, v4

    goto :goto_9

    :cond_b
    move v2, v3

    :goto_9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_CROPPED_SHOT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 32
    invoke-interface {v2, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v4, :cond_d

    move v2, v4

    goto :goto_a

    :cond_d
    move v2, v3

    :goto_a
    const-string v6, "generate_crop_photo"

    .line 33
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 35
    invoke-interface {p0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v4, :cond_e

    move v3, v4

    :cond_e
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/camera/engine/SingleTakeManager;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->handleSTMessageProcessStopped(Landroid/os/Message;)V

    return-void
.end method

.method public static synthetic y(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$consumePendingEvent$12(Ljava/lang/Integer;Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V

    return-void
.end method

.method public static synthetic z(Landroid/os/Handler;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->lambda$handleSTMessageProcessStopped$18(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method cancelSingleTakeSession()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSingleTakeSession: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    :cond_0
    sget-object v0, Ls5/d;->l:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->CANCELLING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 6
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->cancelSingleTakeRecording()V

    .line 8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsRapidEngineSupported:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    invoke-virtual {v0}, Ly3/c;->j()V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    invoke-virtual {v0}, Ly3/c;->d()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->cancelVideoRecording(Z)V

    .line 12
    :cond_2
    :goto_0
    sget-object v0, Lu3/b;->R3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1e

    const/16 v1, 0x3c

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setAeTargetFps(II)V

    goto :goto_1

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->enablePalmDetection(Z)V

    .line 16
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setMainPreviewCallback(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)V

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->notifyRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_5
    :goto_1
    return-void
.end method

.method getBurstCaptureFps()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mBurstFps:I

    return p0
.end method

.method isBurstRecordingStarted()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method public onActionShotResult([J)V
    .locals 4

    const-string v0, "SingleTakeManager"

    if-nez p1, :cond_0

    const-string p0, "onActionShotResult: no action event"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActionShotResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0xb

    .line 3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 5
    array-length v2, p1

    div-int/lit8 v2, v2, 0x6

    const-string v3, "jump_action_count"

    .line 6
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "jump_action_info"

    .line 7
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    return-void
.end method

.method public onError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "STPictureCallback.onError : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SingleTakeManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    move-result-object p0

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->onError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public onEventDetectionResult([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;)V
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    move v4, v3

    .line 4
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    .line 5
    aget-object v6, p1, v4

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/container/SlowMotionEvent;->getStartMillisecond()J

    move-result-wide v6

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    .line 6
    aget-object v6, p1, v4

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/container/SlowMotionEvent;->getEndMillisecond()J

    move-result-wide v6

    aput-wide v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "motion_info"

    .line 7
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/e9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/e9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 11
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendToStop()V

    return-void
.end method

.method public onEventFinderResult([B)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/samsung/srcb/unihal/EventUnihalJNI;->getEventSlowFastResult([B)Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEventFinderResult : event["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleTakeManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    new-array v1, v1, [J

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/srcb/unihal/EventSlowFastResult;

    mul-int/lit8 v5, v3, 0x3

    .line 5
    iget-wide v6, v4, Lcom/samsung/srcb/unihal/EventSlowFastResult;->startTime:J

    aput-wide v6, v1, v5

    add-int/lit8 v6, v5, 0x1

    .line 6
    iget-wide v7, v4, Lcom/samsung/srcb/unihal/EventSlowFastResult;->endTime:J

    aput-wide v7, v1, v6

    add-int/lit8 v5, v5, 0x2

    .line 7
    iget v4, v4, Lcom/samsung/srcb/unihal/EventSlowFastResult;->typeId:I

    int-to-long v6, v4

    aput-wide v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "motion_info"

    .line 9
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 10
    invoke-static {p1}, Lcom/samsung/srcb/unihal/EventUnihalJNI;->decodeGyroInfo([B)Lcom/samsung/srcb/unihal/EventGyroResult;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/camera/engine/y8;

    invoke-direct {v1, v0}, Lcom/sec/android/app/camera/engine/y8;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    const/16 v1, 0x8

    .line 11
    invoke-static {p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/f9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/f9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 15
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendToStop()V

    return-void
.end method

.method public onPictureSequenceCompleted(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPictureSequenceCompleted: cameraId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "null"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SingleTakeManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->onPictureSequenceProgressed()V

    return-void
.end method

.method public onPictureTakeCompleted(Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureTakeCompleted: cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SingleTakeManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->onPictureSequenceProgressed()V

    return-void
.end method

.method public onPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 3

    const-string v0, "SingleTakeManager"

    const-string v1, "onPictureTaken"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p3}, Lcom/sec/android/app/camera/engine/request/CameraId;->getDeviceId(Lcom/samsung/android/camera/core2/CamDevice;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getCameraIdByDeviceId(I)I

    move-result p3

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b()I

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_0

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onPictureTaken: this format does not support in single take. format="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/container/PictureDataInfo;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->updateSceneDetectInfo()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    .line 8
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;->MAIN_CAM:Lcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendCaptureData(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;ILcom/sec/android/app/camera/engine/SingleTakeManager$BuffType;)V

    return-void
.end method

.method public onPictureTakenWithError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureTakenWithError: error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cameraId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/CamDevice;->r()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SingleTakeManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->onPictureSequenceProgressed()V

    return-void
.end method

.method public onSessionError()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stop()V

    return-void
.end method

.method public onShutter(Ljava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 1

    const-string p1, "SingleTakeManager"

    const-string p2, "STPictureCallback.onShutter"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->isCapturing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 4
    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestAfState:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestAfState:Ljava/lang/Integer;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSingleTakePhotoCancelled()V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "onSingleTakePhotoCancelled"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, -0x2

    .line 2
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    const/4 v1, 0x5

    .line 3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    return-void
.end method

.method public onSingleTakePhotoStarted()V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "onSingleTakePhotoStarted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewCallback:Lcom/samsung/android/camera/core2/callback/PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setMainPreviewCallback(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)V

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendToStart()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->postHandleTakePicture()V

    return-void
.end method

.method public onSingleTakePhotoStopped()V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "onSingleTakePhotoStopped"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    return-void
.end method

.method public onSingleTakeVideoCancelled()V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "onSingleTakeVideoCancelled"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 2
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    return-void
.end method

.method public onSingleTakeVideoStarted()V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "onSingleTakeVideoStarted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/q8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/q8;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->postHandleTakePicture()V

    :cond_0
    return-void
.end method

.method public onSingleTakeVideoStopped()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSingleTakeVideoStopped : mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSessionId:I

    .line 4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "Single_Take_Camera_Info"

    const/16 v3, 0xb81

    .line 5
    invoke-static {v0, v2, v1, v3}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->addData(Ljava/io/File;Ljava/lang/String;[BI)I

    .line 6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSessionId:I

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v2, "Single_Take_Content_Type_Info"

    const/16 v3, 0xb84

    .line 8
    invoke-static {v0, v2, v1, v3}, Lcom/sec/android/app/camera/util/SemExtendedFormatUtils;->addData(Ljava/io/File;Ljava/lang/String;[BI)I

    const/4 v0, 0x5

    .line 9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendSingleTakeInfo(I)V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingRecordingStop:Z

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendToStop()V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->enableSlowMotionEventDetection(Z)V

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 0

    return-void
.end method

.method public onUnProcessedPictureTaken(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    const-string v0, "SingleTakeManager"

    const-string v1, "onUnProcessedPictureTaken"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p3}, Lcom/sec/android/app/camera/engine/request/CameraId;->getDeviceId(Lcom/samsung/android/camera/core2/CamDevice;)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getCameraIdByDeviceId(I)I

    move-result p3

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->updateSceneDetectInfo()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateOrientationForCapture()V

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendCaptureData(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/container/PictureDataInfo;I)V

    return-void
.end method

.method setSingleTakeEventListener(Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSingleTakeEventListener : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeEventListener:Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->consumePendingEvent()V

    return-void
.end method

.method start()V
    .locals 5

    const-string v0, "SingleTakeManager"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->startHandlerThreads()V

    .line 5
    invoke-static {}, Lv3/b;->n()Lv3/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv3/b;->B(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lv3/b;->n()Lv3/b;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSTPServiceListener:Lv3/b$b;

    invoke-virtual {v0, v1}, Lv3/b;->z(Lv3/b$b;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    const-string/jumbo v4, "video_base"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->updateSessionInformation()V

    .line 11
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->updateBundleData(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 14
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->enableCallbacks(Z)V

    return-void
.end method

.method startSingleTakeSession()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getOverheatLevel()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mOverHeatLevel:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSingleTakeSession: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", BV level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getBrightnessValueForCapture()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", OverHeat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mOverHeatLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->INITIALIZED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4
    sget-object v0, Ls5/d;->k:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->updateCaptureInfo(Z)V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    .line 8
    sget-object v3, Lu3/b;->T3:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mOverHeatLevel:I

    if-ge v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 9
    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getBrightnessValueForCapture()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x44a00000    # 1280.0f

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 10
    invoke-interface {v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    if-nez v3, :cond_0

    .line 11
    iput v2, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    const-string/jumbo v3, "startSingleTakeSession: Do burst capture"

    .line 12
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsRapidEngineSupported:Z

    if-eqz v1, :cond_0

    .line 14
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_mode"

    .line 15
    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 16
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5, v1}, Ly3/c;->e(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 17
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    invoke-virtual {v1}, Ly3/c;->i()V

    :cond_0
    const-wide/16 v5, 0x0

    .line 18
    iput-wide v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureStartTimeStamp:J

    .line 19
    iput-wide v5, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mLatestPreviewTimeStamp:J

    .line 20
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureCount:I

    .line 21
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSendImageCount:I

    .line 22
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingPendingCapture:Z

    .line 23
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setCapturing(Z)V

    .line 24
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSessionId:I

    .line 27
    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    if-eqz v1, :cond_5

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendToStart()V

    .line 29
    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mOverHeatLevel:I

    if-ge v1, v4, :cond_1

    move v0, v2

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->enableEventFinder(Z)V

    .line 30
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    if-ne v0, v2, :cond_3

    .line 31
    sget-object v0, Lu3/b;->R3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3c

    .line 32
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setAeTargetFps(II)V

    .line 33
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->startSingleTakeRecording()V

    goto :goto_0

    .line 34
    :cond_3
    sget-object v0, Lu3/b;->R3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1e

    .line 35
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setAeTargetFps(II)V

    .line 36
    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->startVideoRecording()V

    goto :goto_0

    .line 37
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->enablePalmDetection(Z)V

    .line 39
    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/request/RequestId;->START_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    :cond_7
    :goto_0
    return-void
.end method

.method stop()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stop : current status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->IDLE:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$1;->$SwitchMap$com$sec$android$app$camera$engine$SingleTakeManager$Status:[I

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    invoke-static {v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    .line 5
    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 6
    invoke-static {v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    goto :goto_0

    .line 7
    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 8
    invoke-static {v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 9
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 10
    iget-object v6, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    const-string/jumbo v7, "video_file_path"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v6, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingFilePath:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string/jumbo v6, "stop: this message have not video file path"

    .line 12
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 14
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 15
    :cond_2
    invoke-static {v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 16
    :goto_0
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 17
    invoke-static {}, Lv3/b;->n()Lv3/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lv3/b;->z(Lv3/b$b;)V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->enableCallbacks(Z)V

    .line 19
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setCapturing(Z)V

    .line 20
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/c9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/c9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 21
    iput v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mElapsedProgressCount:I

    .line 22
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    .line 23
    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingRecordingStop:Z

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->stopHandlerThreads()V

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_3

    .line 26
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 27
    iput-object v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mPreviewImageWriter:Landroid/media/ImageWriter;

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraImageWriter:Landroid/media/ImageWriter;

    if-eqz v0, :cond_4

    .line 29
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    .line 30
    iput-object v4, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mMainCameraImageWriter:Landroid/media/ImageWriter;

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method stopSingleTakeSession()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopSingleTakeSession: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSendImageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SingleTakeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->getStatus()Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->RECORDING_STARTED:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3
    :cond_0
    sget-object v0, Ls5/d;->l:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->c()V

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;->STOPPING:Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setStatus(Lcom/sec/android/app/camera/engine/SingleTakeManager$Status;)V

    .line 5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsVideoMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 6
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsEnableEventFinder:Z

    if-eqz v0, :cond_1

    .line 7
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingMotionEvent:Z

    .line 8
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsWaitingRecordingStop:Z

    .line 9
    iget v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mCaptureType:I

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stopSingleTakeRecording()V

    .line 11
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mIsRapidEngineSupported:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    invoke-virtual {v0}, Ly3/c;->j()V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRapidEngineScore:Ly3/c;

    invoke-virtual {v0}, Ly3/c;->d()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mRecordingManager:Lcom/sec/android/app/camera/engine/RecordingManagerImpl;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/RecordingManagerImpl;->stopVideoRecording()V

    .line 15
    :cond_3
    :goto_0
    sget-object v0, Lu3/b;->R3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x1e

    const/16 v1, 0x3c

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->setAeTargetFps(II)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isPalmDetectionAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->enablePalmDetection(Z)V

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getMakerHolder()Lcom/sec/android/app/camera/engine/request/MakerHolder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setMainPreviewCallback(Lcom/samsung/android/camera/core2/callback/PreviewCallback;)V

    const/4 v0, -0x2

    .line 20
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->sendMessageToSTService(Landroid/os/Message;)V

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/engine/request/RequestQueue;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/engine/request/RequestId;->STOP_SINGLE_TAKE_PHOTO:Lcom/sec/android/app/camera/engine/request/RequestId;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/request/RequestQueue;->addRequest(Lcom/sec/android/app/camera/engine/request/RequestId;)V

    .line 22
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/SingleTakeManager;->mSingleTakeHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/b9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/b9;-><init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_7
    return-void
.end method
