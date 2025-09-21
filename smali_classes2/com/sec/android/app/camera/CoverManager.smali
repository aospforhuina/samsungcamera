.class Lcom/sec/android/app/camera/CoverManager;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "CoverManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CoverManager$EventHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "CoverManager"


# instance fields
.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;

.field private mCoverType:I

.field private mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mEventHandlerMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            "Lcom/sec/android/app/camera/CoverManager$EventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventIdEnumSet:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCoverAttached:Z

.field private mLastOrientation:I

.field private final mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

.field private mLedBackManager:Lz5/a;

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLastOrientation:I

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/r1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/r1;-><init>(Lcom/sec/android/app/camera/CoverManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_RESUMED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STOPPED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_PAUSED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STARTED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_FACING_CHANGED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mEventIdEnumSet:Ljava/util/EnumSet;

    .line 8
    new-instance v1, Lcom/sec/android/app/camera/CoverManager$1;

    const-class v2, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/CoverManager$1;-><init>(Lcom/sec/android/app/camera/CoverManager;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mEventHandlerMap:Ljava/util/EnumMap;

    .line 9
    new-instance v1, Lcom/sec/android/app/camera/CoverManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CoverManager$2;-><init>(Lcom/sec/android/app/camera/CoverManager;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    new-instance v1, Lcom/sec/android/app/camera/CoverManager$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CoverManager$3;-><init>(Lcom/sec/android/app/camera/CoverManager;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;

    .line 11
    iput-object p1, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 12
    iput-object p2, p0, Lcom/sec/android/app/camera/CoverManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 13
    new-instance p1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object p2, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->isFakeCover()Z

    move-result p2

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    .line 17
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    .line 18
    sget-object p1, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager init - mCoverType "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsCoverAttached "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->initLedBackManager()V

    .line 21
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->registerScoverStateListener()V

    .line 22
    iget-object p1, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->launchDummyActivity()V

    return-void
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/CoverManager;)Lz5/a;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/CoverManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isShutterLEDIconRequired()Z

    move-result p0

    return p0
.end method

.method private clearLedBackManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "clearLedBackManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->unregisterCameraLocalBroadcastReceiver()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {v0}, Lz5/a;->f()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    :cond_0
    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->notifyCameraFacingInfo()V

    return-void
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->notifyCancelCameraTimer()V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/CoverManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CoverManager;->notifyStartCameraTimer(I)V

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->notifyStartVideoRecording()V

    return-void
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->notifyStopVideoRecording()V

    return-void
.end method

.method private handleCoverClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "finish secure mCameraContext when cover close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.DummyActivity"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    sget-object p0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v0, "DummyActivity was disabled!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 12
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLaunchDummyActivityRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method static bridge synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initLedBackManager()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "initLedBackManager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lz5/a;

    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lz5/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    .line 4
    invoke-virtual {v0}, Lz5/a;->q()Z

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->registerCameraLocalBroadcastReceiver()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCaptureEventListener:Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->registerCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->notifyCameraFacingInfo()V

    .line 8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CoverManager;->notifyRecordingModeInfo()V

    :cond_0
    return-void
.end method

.method private isLedBackCoverAvailable()Z
    .locals 3

    iget v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isShutterLEDIconRequired()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private launchDummyActivity()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.DummyActivity"

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x40000000    # 2.0f

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object p0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v0, "DummyActivity was disabled!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCameraFacingInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyCameraFacingInfo facing : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lz5/a;->p(Z)Z

    :cond_1
    return-void
.end method

.method private notifyCameraOrientation(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLastOrientation:I

    if-eq v0, p1, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOrientation mLastOrientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/android/app/camera/CoverManager;->mLastOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/CoverManager;->mLastOrientation:I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {p0, p1}, Lz5/a;->k(I)Z

    :cond_0
    return-void
.end method

.method private notifyCancelCameraTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyCancelCameraTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {p0}, Lz5/a;->d()Z

    :cond_0
    return-void
.end method

.method private notifyStartCameraTimer(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    sget-object v2, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyStartCameraTimer countDownTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " beginTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {p0, p1, v0, v1}, Lz5/a;->m(IJ)Z

    :cond_0
    return-void
.end method

.method private notifyStartVideoRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {p0}, Lz5/a;->r()Z

    :cond_0
    return-void
.end method

.method private notifyStopVideoRecording()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "notifyStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {p0}, Lz5/a;->s()Z

    :cond_0
    return-void
.end method

.method private registerCameraLocalBroadcastReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.SHUTTER_TIMER_STARTED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.SHUTTER_TIMER_CANCELED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private registerScoverStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    return-void
.end method

.method private unregisterCameraLocalBroadcastReceiver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method private unregisterScoverStateListener()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mEventIdEnumSet:Ljava/util/EnumSet;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->unregisterScoverStateListener()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->clearLedBackManager()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-void
.end method

.method isCoverAttached()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    return p0
.end method

.method notifyRecordingModeInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRecordingModeInfo isRecordingMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {p0, v0}, Lz5/a;->l(Z)Z

    :cond_0
    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraOrientationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CoverManager;->notifyCameraOrientation(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CoverManager;->notifyCameraOrientation(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CoverManager;->notifyCameraOrientation(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/CoverManager;->mScoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object p1

    const/4 v0, 0x2

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->isFakeCover()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_2

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v1

    const-string v2, " mIsCoverAttached "

    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCoverStateChanged mCoverType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_4

    .line 10
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->initLedBackManager()V

    .line 12
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CoverManager;->registerScoverForegroundLifetimeListeners()V

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CoverManager;->unregisterScoverForegroundLifetimeListeners()V

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->clearLedBackManager()V

    .line 15
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    sget-object p1, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v0, "State Cover Close"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->handleCoverClosed()V

    goto :goto_1

    .line 18
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getAttachState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    if-nez p1, :cond_6

    .line 19
    iput v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    .line 20
    :cond_6
    sget-object p1, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoverStateChanged camera is not running, mCoverType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/CoverManager;->mIsCoverAttached:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void

    .line 21
    :cond_8
    :goto_2
    sget-object p1, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "Cover state is null or fake."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iput v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCoverType:I

    return-void

    .line 23
    :cond_9
    :goto_3
    sget-object p0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string p1, "CameraContext is null or SCoverManger is null return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mEventHandlerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/CoverManager$EventHandler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/s1;->a:Lcom/sec/android/app/camera/s1;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    sget-object p2, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onShootingModeChanged shootingMode : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CoverManager;->notifyRecordingModeInfo()V

    :cond_0
    return-void
.end method

.method registerScoverForegroundLifetimeListeners()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string v1, "registerScoverForegroundLifetimeListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    :cond_0
    return-void
.end method

.method start()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->initLedBackManager()V

    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CoverManager;->isLedBackCoverAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/CoverManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CoverManager;->mLedBackManager:Lz5/a;

    invoke-virtual {p0}, Lz5/a;->d()Z

    :cond_0
    return-void
.end method

.method unregisterScoverForegroundLifetimeListeners()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CoverManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    return-void
.end method
