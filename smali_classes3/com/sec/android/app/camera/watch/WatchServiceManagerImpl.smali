.class public Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;
.super Ljava/lang/Object;
.source "WatchServiceManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/WatchServiceManager;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;
.implements Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewLayoutChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

.field private static final CONNECTED:I = 0x3e9

.field private static final EXTRA_WATCH_PLUGIN_PACKAGE:Ljava/lang/String; = "plugin_package"

.field private static final LONG_EV_SHOT_DELAY_MSEC:I = 0x3e8

.field private static final NOTIFY_ZOOM_LEVEL_DELAY_MSEC:I = 0x12c

.field private static final NO_CONNECTION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WatchServiceManager"

.field private static final THUMBNAIL_HEIGHT:F = 480.0f

.field private static final TYPE_IMAGE:I = 0x0

.field private static final TYPE_VIDEO:I = 0x1

.field private static final WATCH_ZOOM_RATIO_FACTOR:I = 0xa


# instance fields
.field private final mAttachedDisplaySize:Landroid/graphics/Point;

.field private mBurstShotStarted:Z

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mConnectionState:I

.field private final mControllerServiceCallback:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

.field private mControllerVersion:I

.field private final mDimArray:[Z

.field private final mDimChangedListener:Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;

.field private final mDisplayRotationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mEventHandlerMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            "Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$EventHandler;",
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

.field private final mEventListener:Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEventListener;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMirroringCompleted:Z

.field private mIsNeedToCheckProCaptureTime:Z

.field private mIsNeedToSwitchToPhoto:Z

.field private mLastZoomLevel:I

.field private mLightCondition:I

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotifyZoomLevelRunnable:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mPackageName:Ljava/lang/String;

.field private mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

.field private mPreviousOrientation:I

.field private final mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

.field private final mSettingChangedListenerKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

.field private mShootingMode:I

.field private mShootingModeString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEventListener;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v4, 0x3e8

    .line 2
    iput v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLastZoomLevel:I

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create()Landroid/graphics/Point;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mAttachedDisplaySize:Landroid/graphics/Point;

    const/4 v5, 0x0

    .line 4
    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    .line 5
    iput v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mConnectionState:I

    const/4 v4, -0x1

    .line 6
    iput v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    .line 7
    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    .line 8
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->values()[Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Z

    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimArray:[Z

    .line 9
    new-instance v5, Lcom/sec/android/app/camera/watch/e0;

    invoke-direct {v5, v0}, Lcom/sec/android/app/camera/watch/e0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mNotifyZoomLevelRunnable:Ljava/lang/Runnable;

    .line 10
    new-instance v5, Lcom/sec/android/app/camera/watch/a0;

    invoke-direct {v5, v0}, Lcom/sec/android/app/camera/watch/a0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimChangedListener:Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;

    .line 11
    iput v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLightCondition:I

    const/4 v4, 0x0

    .line 12
    iput-boolean v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsMirroringCompleted:Z

    .line 13
    iput-boolean v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mBurstShotStarted:Z

    .line 14
    iput-boolean v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToSwitchToPhoto:Z

    .line 15
    iput-boolean v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToCheckProCaptureTime:Z

    .line 16
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    .line 17
    new-instance v5, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$1;

    invoke-direct {v5, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$1;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDisplayRotationMap:Ljava/util/HashMap;

    .line 18
    new-instance v5, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;

    invoke-direct {v5, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$2;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    iput-object v5, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/16 v5, 0x9

    new-array v6, v5, [Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 19
    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    aput-object v7, v6, v4

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v11, 0x4

    aput-object v7, v6, v11

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v12, 0x5

    aput-object v7, v6, v12

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v13, 0x6

    aput-object v7, v6, v13

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v14, 0x7

    aput-object v7, v6, v14

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/16 v15, 0x8

    aput-object v7, v6, v15

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mSettingChangedListenerKeys:Ljava/util/List;

    .line 20
    new-instance v6, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;

    const-class v7, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {v6, v0, v7}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$3;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/lang/Class;)V

    iput-object v6, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEventHandlerMap:Ljava/util/EnumMap;

    .line 21
    new-instance v6, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;

    invoke-direct {v6, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$4;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    iput-object v6, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    .line 22
    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CHANGE_EXTRA_SURFACE_LAYOUT:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    new-array v5, v5, [Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_TERMINATED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v7, v5, v4

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->THUMBNAIL_UPDATE:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v8

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_SETTING_ACTIVITY_STARTED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v9

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_RESUMED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v10

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STARTED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v11

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_PAUSED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v12

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STOPPED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v13

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_FACING_CHANGED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v14

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->START_PREVIEW_COMPLETED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    aput-object v4, v5, v15

    invoke-static {v6, v5}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEventIdEnumSet:Ljava/util/EnumSet;

    .line 23
    iput-object v1, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 24
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 25
    iput-object v2, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 26
    iput-object v3, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    move-object/from16 v4, p4

    .line 27
    iput-object v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEventListener;

    .line 28
    new-instance v4, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    iput-object v4, v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerServiceCallback:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    .line 29
    invoke-interface/range {p1 .. p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getWatchPluginPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

    invoke-static {v1, v3, v2}, Lcom/sec/android/app/camera/util/PackageUtil;->findServicePackageName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic A(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraSettingActivityStarted()V

    return-void
.end method

.method static bridge synthetic B(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraStarted()V

    return-void
.end method

.method static bridge synthetic C(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraTerminated()V

    return-void
.end method

.method static bridge synthetic D(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyPresentationInitialized()V

    return-void
.end method

.method static bridge synthetic E(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyRecordingPaused()V

    return-void
.end method

.method static bridge synthetic F(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyRecordingResumed()V

    return-void
.end method

.method static bridge synthetic G(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyRecordingStarted()V

    return-void
.end method

.method static bridge synthetic H(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyRecordingStopped()V

    return-void
.end method

.method static bridge synthetic I(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic J(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySupportPhotoVideoModeChange()V

    return-void
.end method

.method static bridge synthetic K(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyThumbnailUpdated()V

    return-void
.end method

.method static bridge synthetic L(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyTimerCanceled()V

    return-void
.end method

.method static bridge synthetic M(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyTimerStarted()V

    return-void
.end method

.method static bridge synthetic N(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyZoomRange()V

    return-void
.end method

.method static bridge synthetic O(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->startPreviewCompleted()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$unregisterListener$9(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$connectExtraPreviewToWatchDisplay$4(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private bindService()V
    .locals 4

    const-string v0, "WatchServiceManager"

    const-string v1, "bindService"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    const-string p0, "WatchServiceManager"

    const-string v0, "fail to bindService by null"

    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->createBrokenBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private calculateScaleFactor(Landroid/graphics/Bitmap;)F
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/high16 v1, 0x43f00000    # 480.0f

    if-le p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1
.end method

.method private changeExtraSurfaceLayout(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WatchServiceManager"

    const-string p1, "changeExtraSurfaceLayout : Returned because extra surfaceview is not created yet"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeExtraSurfaceViewCoverVisibility(Z)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->setExtraSurfaceLayoutParams()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->setExtraSurfaceLayoutParams()V

    :goto_0
    return-void
.end method

.method private changeExtraSurfaceViewCoverVisibility(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeExtraSurfaceViewCoverVisibility: visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    const v0, 0x7f0a00e6

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private changeShootingModeToPhoto()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "changeShootingModeToPhoto"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToSwitchToPhoto:Z

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getShootingModeShortcut()Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeShortcut;->translateList(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0, v0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->changeShootingMode(IZ)Z

    return-void
.end method

.method private connectExtraPreviewToWatchDisplay()V
    .locals 5

    const-string v0, "WatchServiceManager"

    const-string v1, "connectExtraPreviewToWatchDisplay"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    const-string v2, "media_router"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter;

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mAttachedDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 6
    new-instance v2, Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    iget-object v3, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/Util;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x7d9

    goto :goto_0

    :cond_0
    const/16 v4, 0x7f5

    .line 7
    :goto_0
    invoke-direct {v2, v3, v1, v4}, Lcom/sec/android/app/camera/watch/WatchPresentationDialog;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    iput-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    .line 8
    new-instance v1, Lcom/sec/android/app/camera/watch/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/r;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    new-instance v2, Lcom/sec/android/app/camera/watch/z;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/watch/z;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    const v2, 0x7f0d00ac

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    const v3, 0x7f0a00e5

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->createExtraSurface(Landroid/view/SurfaceView;)V

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeExtraSurfaceLayout(Z)V

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/watch/WatchPresentationDialog;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "connectExtraPreviewToDisplay : Couldn\'t show presentation. Display was removed"

    .line 14
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    :cond_1
    :goto_1
    return-void
.end method

.method private createBitmapForThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createBrokenBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "createBrokenBitmap : thumbnail bitmap is invalid, so send the broken bitmap"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentData()Lcom/sec/android/app/camera/interfaces/Engine$ContentData;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentType()Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;->IMAGE:Lcom/sec/android/app/camera/interfaces/Engine$ContentData$Type;

    if-ne p0, v1, :cond_0

    const p0, 0x7f080440

    goto :goto_0

    :cond_0
    const p0, 0x7f080442

    :goto_0
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private createMatrixForThumbnail(IF)Landroid/graphics/Matrix;
    .locals 0

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/MatrixFactory;->create()Landroid/graphics/Matrix;

    move-result-object p0

    int-to-float p1, p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 3
    invoke-virtual {p0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/util/Optional;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$updateThumbnail$11(Ljava/util/Optional;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private disconnectExtraPreviewFromWatchDisplay()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    :cond_0
    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;ILjava/lang/Float;)Landroid/graphics/Matrix;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$updateThumbnail$10(ILjava/lang/Float;)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$registerListener$8(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyZoomInfo()V

    return-void
.end method

.method private getCalculatedExtraSurfaceParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-double v1, v1

    iget-object v3, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-double v5, v4

    mul-double/2addr v5, v1

    double-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget v3, v3, Landroid/graphics/Point;->x:I

    if-le v5, v3, :cond_0

    .line 6
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v3, v3

    div-double/2addr v3, v1

    double-to-int v3, v3

    .line 7
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    double-to-int v3, v3

    .line 10
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isReversePortrait()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isLandscapeBefore()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mAttachedDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-double v3, p0

    mul-double/2addr v3, v1

    double-to-int p0, v3

    .line 13
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    return-object v0
.end method

.method private getCallStatus()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "call_state_on"

    goto :goto_0

    :cond_0
    const-string p0, "call_state_off"

    :goto_0
    return-object p0
.end method

.method private getCameraButtonToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "burst_shots"

    return-object p0

    :cond_0
    const-string p0, "create_gif"

    return-object p0

    :cond_1
    const-string p0, "take_picture"

    return-object p0
.end method

.method private getControllerVersionFromService()I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->C0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->getVersion()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->C0(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "WatchServiceManager"

    const-string v0, "getControllerVersionFromService fail : RemoteException"

    .line 4
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private getFlashState()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getTorchString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getFlashString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getFlashString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "auto_off"

    return-object p0

    :cond_0
    const-string p0, "on"

    return-object p0

    :cond_1
    const-string p0, "off"

    return-object p0
.end method

.method private getMaxZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private getMinZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getMinZoomLevel()I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private getTimerString(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isTimerAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "disabled"

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const-string p0, "0"

    return-object p0

    :cond_1
    const-string p0, "10"

    return-object p0

    :cond_2
    const-string p0, "5"

    return-object p0

    :cond_3
    const-string p0, "2"

    return-object p0
.end method

.method private getTorchString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "auto_off"

    return-object p0

    :cond_0
    const-string p0, "on"

    return-object p0

    :cond_1
    const-string p0, "off"

    return-object p0
.end method

.method private getTotalZoomLevel()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getTotalZoomLevel()I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private getWatchPluginPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "plugin_package"

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getZoomValue()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    div-int/lit8 p0, p0, 0xa

    return p0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Landroid/graphics/Bitmap;)F
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->calculateScaleFactor(Landroid/graphics/Bitmap;)F

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$onRequestStopAndSwitchToPhoto$3()V

    return-void
.end method

.method private isAutoFlashSetting()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isConnected()Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mConnectionState:I

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLandscape()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

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

.method private isLandscapeBefore()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPreviousOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

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

.method private isNotifyNotAvailable(Z)Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "WatchServiceManager"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatchSupported()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isNotifyNotAvailable : Returned because watch mode is not supported"

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const-string p0, "isNotifyNotAvailable : Returned because service is not available"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private isNotifyThumbnailAvailable()Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mBurstShotStarted:Z

    if-eqz p0, :cond_1

    const-string p0, "WatchServiceManager"

    const-string v0, "notifyThumbnailUpdated : Returned because ignore during burst"

    .line 3
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    return v0
.end method

.method private isOrientationLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isReversePortrait()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mOrientation:I

    const/16 v0, 0xb4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportTouchFocus()Z
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->Z:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isTouchAfSupported()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isTouchAeSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    move v1, v0

    :cond_2
    return v1
.end method

.method private isTimerAvailable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimArray:[Z

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-boolean v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimArray:[Z

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 3
    :cond_2
    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingMode:I

    const/16 v0, 0x22

    if-eq p0, v0, :cond_4

    const/16 v0, 0x25

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method private isZoomRestrictionPopupRequestCondition()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    .line 2
    :cond_0
    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingMode:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$connectExtraPreviewToWatchDisplay$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$onNotifySuccessMirroring$2()V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyZoomLevel()V

    return-void
.end method

.method private synthetic lambda$connectExtraPreviewToWatchDisplay$4(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$connectExtraPreviewToWatchDisplay$5(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "WatchServiceManager"

    const-string v0, "connectExtraPreviewToDisplay : Presentation dialog is shown."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyPresentationInitialized()V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimArray:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-boolean p2, p0, p1

    return-void
.end method

.method private synthetic lambda$notifyThumbnailUpdated$1(ILandroid/graphics/Bitmap;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyThumbnailAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit16 p1, p1, 0x10e

    .line 2
    rem-int/lit16 p1, p1, 0x168

    .line 3
    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    xor-int/lit8 p3, p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->updateThumbnail(Ljava/util/Optional;II)V

    return-void
.end method

.method private synthetic lambda$notifyThumbnailUpdated$6()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyThumbnailAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->isImageType()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyThumbnailUpdated : thumbnailContentType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatchServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    const/16 v2, 0x10e

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->updateThumbnail(Ljava/util/Optional;II)V

    return-void
.end method

.method private synthetic lambda$notifyZoomInfo$7(Ljava/util/List;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v2}, Lm5/f0;->d(Lcom/sec/android/app/camera/interfaces/CommandId;)I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    const-string v2, ","

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "zoomShortCutList"

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onNotifySuccessMirroring$2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    const-string v1, "WatchServiceManager"

    if-nez v0, :cond_0

    const-string p0, "notifySuccessMirroring : Returned because camera is not running"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "notifySuccessMirroring : Returned because presentation dialog is already shown"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->connectExtraPreviewToWatchDisplay()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->reconnectMaker()V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsMirroringCompleted:Z

    return-void
.end method

.method private synthetic lambda$onRequestStopAndSwitchToPhoto$3()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeShootingModeToPhoto()V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToSwitchToPhoto:Z

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEventListener:Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEventListener;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEvent;->CANCEL_SHOOTING:Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEvent;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEventListener;->onWatchEvent(Lcom/sec/android/app/camera/interfaces/WatchServiceManager$WatchEvent;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$registerListener$8(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private synthetic lambda$unregisterListener$9(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private synthetic lambda$updateThumbnail$10(ILjava/lang/Float;)Landroid/graphics/Matrix;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->createMatrixForThumbnail(IF)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateThumbnail$11(Ljava/util/Optional;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->createBitmapForThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$new$0(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$notifyZoomInfo$7(Ljava/util/List;)V

    return-void
.end method

.method private notifyBurstShotStarted()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "WatchServiceManager"

    const-string v2, "notifyBurstShotStarted"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mBurstShotStarted:Z

    .line 5
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->D0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyBurstShotStarted fail : RemoteException"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyBurstShotStopped()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mBurstShotStarted:Z

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyBurstShotStopped"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLatestMedia()Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext$LatestMedia;->getImagePath()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyBurstShotStopped fail : RemoteException"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCameraFacing(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraFacing : facing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    const-string p1, "back"

    goto :goto_0

    :cond_1
    const-string p1, "front"

    .line 3
    :goto_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->j0(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "notifyCameraFacing fail : RemoteException"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private notifyCameraSettingActivityStarted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCameraSettingActivityStarted"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "cameraSettingStatus"

    const-string v1, "1"

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private notifyCameraStarted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const-string v1, "WatchServiceManager"

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "notifyCameraStarted"

    .line 3
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "apiVersion"

    const/4 v4, 0x6

    .line 5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget v3, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    const-string v3, "cameraVersion"

    const/4 v4, 0x4

    .line 7
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "notifyCameraStarted fail : JSONException"

    .line 8
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->G(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "notifyCameraStarted fail : RemoteException"

    .line 10
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v1, "ro.build.version.oneui"

    .line 11
    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "oneui"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->registerListener()V

    return-void

    :cond_3
    :goto_2
    const-string p0, "notifyCameraStarted : Returned because camera is not running"

    .line 13
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyCameraTerminated()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isConnected()Z

    move-result v0

    const-string v1, "WatchServiceManager"

    if-nez v0, :cond_0

    const-string p0, "notifyCameraTerminated : Returned because service is not available"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "notifyCameraTerminated"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->U()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "notifyCameraTerminated fail : RemoteException"

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->unregisterListener()V

    return-void
.end method

.method private notifyCancelCapture()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCancelCapture"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->r()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCancelCapture fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCaptureInfo()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyDynamicShotCaptureDuration()V

    return-void
.end method

.method private notifyCaptureStarted()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCaptureStarted"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCaptureInfo()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->w()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCaptureStarted fail : RemoteException"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyCompleteQuickTakeRecording()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyCompleteQuickTakeRecording"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->D()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCompleteQuickTakeRecording fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyDynamicShotCaptureDuration()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToCheckProCaptureTime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/MakerParameter;->getExposureTime(I)J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "proDynamicShotCaptureDuration"

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getEstimatedCaptureDuration()I

    move-result v0

    const-string v2, "dynamicShotCaptureDuration"

    .line 6
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyDynamicShotCaptureDuration : estimatedCaptureDurationTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WatchServiceManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e8

    if-lt v0, v3, :cond_2

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 8
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private notifyFlashState(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFlashState : flashState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyFlashState fail : RemoteException"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyOrientationState(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOrientationState : orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatchServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isOrientationLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeExtraSurfaceLayout(Z)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDisplayRotationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDisplayRotationMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOrientationState : display rotation = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {v1, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->P(I)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->K0(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyOrientationState fail : RemoteException"

    .line 10
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyPictureCount(I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyPictureCount"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->o(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPictureCount fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyPictureTaken()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mBurstShotStarted:Z

    const-string v1, "WatchServiceManager"

    if-eqz v0, :cond_1

    const-string p0, "notifyPictureTaken : Returned because burst shot is progressing"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "notifyPictureTaken"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->A(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPictureTaken fail : RemoteException"

    .line 6
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyPresentationInitialized()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyPresentationInitialized"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->B0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPresentationInitialized fail: RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyPreviewState()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const-string v2, "WatchServiceManager"

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "notifyPreviewState : Returned because previewSize is not available"

    .line 4
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v1, "notifyPreviewState"

    .line 5
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->X(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyPreviewState fail : RemoteException"

    .line 7
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyQuickTakeRecordingLocked()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyQuickTakeRecordingLocked"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "isRecordingSnapshotAvailable"

    .line 3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->x()V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/camera/watch/b0;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/watch/b0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/camera/watch/h;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/watch/h;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyQuickTakeRecordingLocked fail : RemoteException"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyRecordingPaused()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyRecordingPaused"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "notifyRecordingPaused fail : RemoteException"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "recordingTime"

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;)V

    return-void
.end method

.method private notifyRecordingResumed()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyRecordingResumed"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "isRecordingSnapshotAvailable"

    .line 3
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->u()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyRecordingResumed fail : RemoteException"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyRecordingStarted()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "WatchServiceManager"

    const-string v2, "notifyRecordingStarted"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyStartQuickTakeRecording()V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyQuickTakeRecordingLocked()V

    goto :goto_0

    :cond_1
    const-string v0, "isRecordingSnapshotAvailable"

    .line 7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->H0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyRecordingStarted fail : RemoteException"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyRecordingStopped()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyRecordingStopped"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeExtraSurfaceLayout(Z)V

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCompleteQuickTakeRecording()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyRecordingStopped fail : RemoteException"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifySpecificState(Ljava/lang/String;)V
    .locals 3

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "callStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "isRecordingSnapshotAvailable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :sswitch_2
    const-string v0, "recordingTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string p0, "WatchServiceManager"

    const-string p1, "notifySpecificState : invalid state key!"

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "call_state_on"

    goto :goto_1

    :cond_3
    const-string v0, "call_state_off"

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isSnapshotAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 12
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getTotalRecordingTimeInMs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x31e21ba2 -> :sswitch_2
        -0xf6583c2 -> :sswitch_1
        0x5ea777f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyStartQuickTakeRecording()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyStartQuickTakeRecording"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->V()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyStartQuickTakeRecording fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyStopCapture()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyStopCapture"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->m0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyStopCapture fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifySupportPhotoVideoModeChange()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifySupportPhotoVideoModeChange"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->c0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifySupportPhotoVideoModeChange fail: RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyThumbnailUpdated()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/watch/f0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/f0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyTimerCanceled()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyTimerCanceled"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->n0()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyTimerCanceled fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyTimerStarted()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyTimerStarted"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyTimerStarted fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyTimerState(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyTimerState : timer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->S(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyTimerState fail : RemoteException"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyUpdateThumbnail(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->q(Landroid/graphics/Bitmap;I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->E0(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "WatchServiceManager"

    const-string p1, "notifyThumbnailUpdated fail : RemoteException"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyZoomInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->isPreviewAnimationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/b0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/b0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0b0138

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "supportZoom"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isAngleChangeSupported()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "supportAngleChange"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isZoomAvailable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "isZoomAvailable"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->getZoomCategory()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zoomCategory"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->getShortCutList()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/watch/t;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/t;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyZoomLevel()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyZoomLevel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLastZoomLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLastZoomLevel:I

    div-int/lit8 v0, v0, 0xa

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    int-to-double v2, v0

    invoke-interface {p0, v2, v3}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->T(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyZoomLevel fail : RemoteException"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyZoomRange()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "notifyZoomRange"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getMinZoomLevel()I

    move-result v1

    int-to-double v3, v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getMaxZoomLevel()I

    move-result v1

    int-to-double v5, v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getTotalZoomLevel()I

    move-result p0

    int-to-double v7, p0

    invoke-interface/range {v2 .. v8}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->u0(DDD)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyZoomRange fail : RemoteException"

    .line 4
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;ILandroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$notifyThumbnailUpdated$1(ILandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->lambda$notifyThumbnailUpdated$6()V

    return-void
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    return-object p0
.end method

.method private registerListener()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "registerListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->registerPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewLayoutChangedListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mSettingChangedListenerKeys:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/camera/watch/s;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/s;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimChangedListener:Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimChangedListener:Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->registerLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->registerCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->registerListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "registerReceiver"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.SHUTTER_TIMER_STARTED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.SHUTTER_TIMER_CANCELED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.RECORDING_START_TIMER_TICK"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_IDLE"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEventIdEnumSet:Ljava/util/EnumSet;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->registerGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    return-void
.end method

.method private resetFlags()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mBurstShotStarted:Z

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToSwitchToPhoto:Z

    return-void
.end method

.method static bridge synthetic s(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerServiceCallback:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    return-object p0
.end method

.method private setExtraSurfaceLayoutParams()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getCalculatedExtraSurfaceParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExtraSurfaceLayoutParams : width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WatchServiceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private startPreviewCompleted()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "startPreviewCompleted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCurrentState()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyZoomInfo()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatchSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeExtraSurfaceViewCoverVisibility(Z)V

    return-void
.end method

.method static bridge synthetic t(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    return p0
.end method

.method static bridge synthetic u(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)Lcom/sec/android/app/camera/watch/WatchPresentationDialog;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPresentationDialog:Lcom/sec/android/app/camera/watch/WatchPresentationDialog;

    return-object p0
.end method

.method private unbindService()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-nez v0, :cond_0

    const-string p0, "WatchServiceManager"

    const-string v0, "unbindService : Returned because it is failed to unbind service because appContext is not existed."

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "WatchServiceManager"

    const-string v1, "unbindService"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerServiceCallback:Lcom/sec/android/app/camera/watch/CameraControlAidlCallback;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->b0(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/b;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "WatchServiceManager"

    const-string v1, "unbindService fail : RemoteException"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mRemoteControllerServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 9
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    const-string v0, "WatchServiceManager"

    const-string v1, "unbindService fail : service is not connected."

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/16 v0, 0x3e8

    .line 11
    iput v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mConnectionState:I

    return-void
.end method

.method private unregisterListener()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "unregisterListener"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/provider/CameraOrientationEventManager;->unregisterListener(Lcom/sec/android/app/camera/provider/CameraOrientationEventManager$CameraOrientationEventListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterShootingModeChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$ShootingModeChangedListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->unregisterPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewLayoutChangedListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterAgifBurstCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mSettingChangedListenerKeys:Ljava/util/List;

    new-instance v1, Lcom/sec/android/app/camera/watch/h0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/h0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimChangedListener:Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mDimChangedListener:Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterDimChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->unregisterLightConditionListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$LightConditionListener;)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->unregisterCaptureEventListener(Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "unregisterReceiver"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEventIdEnumSet:Ljava/util/EnumSet;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->unregisterGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    return-void
.end method

.method private updateThumbnail(Ljava/util/Optional;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Landroid/graphics/Bitmap;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "WatchServiceManager"

    const-string v1, "updateThumbnail"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/watch/v;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/watch/v;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/watch/w;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/camera/watch/w;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/camera/watch/x;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/watch/x;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Ljava/util/Optional;)V

    .line 4
    invoke-virtual {p2, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/watch/y;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/watch/y;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    .line 5
    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyUpdateThumbnail(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private updateZoomValue(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLastZoomLevel:I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->getZoomManager()Lcom/sec/android/app/camera/interfaces/ZoomManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ZoomManager;->getZoomCategory()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mNotifyZoomLevelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mNotifyZoomLevelRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$5;->$SwitchMap$com$sec$android$app$camera$interfaces$ZoomManager$ZoomCategory:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->SWITCHING_FACING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mNotifyZoomLevelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 8
    :cond_2
    iget p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLastZoomLevel:I

    div-int/lit8 p1, p1, 0xa

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getMinZoomLevel()I

    move-result v0

    if-eq v0, p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getMaxZoomLevel()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mNotifyZoomLevelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 11
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyZoomLevel()V

    return-void
.end method

.method static bridge synthetic v(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    return-void
.end method

.method static bridge synthetic w(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mConnectionState:I

    return-void
.end method

.method static bridge synthetic x(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    return-void
.end method

.method static bridge synthetic y(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeExtraSurfaceLayout(Z)V

    return-void
.end method

.method static bridge synthetic z(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getControllerVersionFromService()I

    move-result p0

    return p0
.end method


# virtual methods
.method convertWatchZoomLevelToCameraZoomLevel(I)I
    .locals 0

    mul-int/lit8 p1, p1, 0xa

    return p1
.end method

.method getControllerVersion()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    return p0
.end method

.method isStorageCameraDialogVisible()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->SINGLE_TAKE_STORAGE_STATUS:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z

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

.method isZoomAvailable()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isZoomRestrictionPopupRequestCondition()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isZoomAvailable()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    if-eq p0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method notifyCameraError(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraError : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->F0(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "notifyCameraError fail : RemoteException"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method notifyCurrentState()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v1

    const-string v2, "WatchServiceManager"

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsMirroringCompleted:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v1

    sget-object v4, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->RECORDING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v1, v4, :cond_1

    const-string p0, "notifyCurrentState : Returned because quick take recording running."

    .line 3
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "back"

    goto :goto_0

    :cond_2
    const-string v1, "front"

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isWatchSupported()Z

    move-result v4

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCurrentState : modeSupported = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mShootingModeString = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingModeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :try_start_0
    iget v6, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mControllerVersion:I

    if-lt v6, v3, :cond_3

    const-string v3, "isRecordingMode"

    .line 9
    iget-object v6, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :cond_3
    const-string v3, "holdShotType"

    .line 10
    iget-object v6, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v7, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getCameraButtonToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string v3, "modeName"

    .line 11
    iget-object v6, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingModeString:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "isSupported"

    .line 12
    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "lensState"

    .line 13
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flashState"

    .line 14
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getFlashState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timerState"

    .line 15
    iget-object v3, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TIMER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getTimerString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "zoomLevel"

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getZoomValue()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "zoomMin"

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getMinZoomLevel()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "zoomMax"

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getMaxZoomLevel()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "zoomStep"

    .line 19
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getTotalZoomLevel()I

    move-result v3

    invoke-virtual {v5, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    .line 20
    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "previewWidth"

    .line 21
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "previewHeight"

    .line 22
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "orientation"

    .line 23
    iget v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mOrientation:I

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "callStatus"

    .line 24
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getCallStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "isStorageAvailable"

    .line 25
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "supportTouchFocus"

    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isSupportTouchFocus()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "supportNewTimerConcept"

    const/4 v1, 0x1

    .line 27
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "isStorageFull"

    .line 28
    invoke-virtual {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isStorageCameraDialogVisible()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 29
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->Q(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p0, "notifyCurrentState fail : RemoteException"

    .line 30
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string p0, "notifyCurrentState fail : JSONException"

    .line 31
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string p0, "notifyCurrentState : Returned because service is not ready."

    .line 32
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isNotifyNotAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySpecificState : stateKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "notifySpecificState fail : JSONException"

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraControlService:Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/a;->r0(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "notifySpecificState fail : RemoteException"

    .line 7
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public notifyThumbnailUpdated(Landroid/graphics/Bitmap;IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/watch/g0;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sec/android/app/camera/watch/g0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;ILandroid/graphics/Bitmap;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBurstCaptureCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyBurstShotStopped()V

    return-void
.end method

.method public onBurstCaptureProgress(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mBurstShotStarted:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyPictureCount(I)V

    :cond_0
    return-void
.end method

.method public onBurstCaptureStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyBurstShotStarted()V

    return-void
.end method

.method public onCameraOrientationChanged(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraOrientationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mOrientation:I

    iput v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mPreviousOrientation:I

    .line 4
    iput p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mOrientation:I

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyOrientationState(I)V

    :cond_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraSettingChanged : key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WatchServiceManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p2, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$5;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "supportTouchFocus"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifySpecificState(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    if-ne p3, p2, :cond_4

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p1

    sget-object p2, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq p1, p2, :cond_4

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyQuickTakeRecordingLocked()V

    goto :goto_1

    .line 7
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->updateZoomValue(I)V

    goto :goto_1

    :pswitch_3
    if-ne p3, p2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getTorchString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyFlashState(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    if-ne p3, p2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getFlashString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyFlashState(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->getTimerString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyTimerState(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptureCancelled()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToSwitchToPhoto:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->changeShootingModeToPhoto()V

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCancelCapture()V

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyPictureTaken()V

    return-void
.end method

.method public onCaptureInterrupted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCancelCapture()V

    return-void
.end method

.method public onCaptureRequested()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCaptureStarted()V

    return-void
.end method

.method public onCaptureStopped()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyStopCapture()V

    return-void
.end method

.method public onGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGenericEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mEventHandlerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$EventHandler;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/watch/u;->a:Lcom/sec/android/app/camera/watch/u;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onLightConditionChanged(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLightCondition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->isAutoFlashSetting()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mLightCondition:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    const-string p1, "auto_on"

    goto :goto_2

    :cond_4
    const-string p1, "auto_off"

    .line 4
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyFlashState(Ljava/lang/String;)V

    return-void
.end method

.method onNotifySuccessMirroring()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/d0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/d0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPostPictureProcessingCompleted()V
    .locals 0

    return-void
.end method

.method public onPreviewLayoutChanged()V
    .locals 2

    const-string v0, "WatchServiceManager"

    const-string v1, "onPreviewLayoutChanged"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyPreviewState()V

    return-void
.end method

.method onRequestStopAndSwitchToPhoto()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/camera/watch/c0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/watch/c0;-><init>(Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShootingModeChanged : shootingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", facing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WatchServiceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToCheckProCaptureTime:Z

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingMode:I

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingModeString:Ljava/lang/String;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v0, v1

    .line 5
    :cond_0
    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingModeCommandIdByModeName(Ljava/lang/String;Z)Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl$5;->$SwitchMap$com$sec$android$app$camera$interfaces$CommandId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mIsNeedToCheckProCaptureTime:Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f1200c8

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingModeString:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f1200c7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mShootingModeString:Ljava/lang/String;

    :goto_0
    if-eqz p3, :cond_4

    .line 10
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->notifyCameraFacing(I)V

    :cond_4
    return-void
.end method

.method public onShutter()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->bindService()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->registerReceiver()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDoNotDisturbMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera launched from watch"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/Util;->requestDeviceWakeUp(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->requestDismissKeyguard(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    const-string v0, "WatchServiceManager"

    const-string v1, "stop - E"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->unregisterReceiver()V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->unbindService()V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->resetFlags()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->disconnectExtraPreviewFromWatchDisplay()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/watch/WatchServiceManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz p0, :cond_0

    .line 8
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->WATCH_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_0
    const-string p0, "stop - X"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
