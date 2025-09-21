.class Lcom/sec/android/app/camera/CameraGenericEventHandler;
.super Ljava/lang/Object;
.source "CameraGenericEventHandler.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraGenericEventHandler"


# instance fields
.field private final DELAY_TIME_TO_INITIALIZE_LAYER:I

.field private final mBestPhotoContentObserver:Landroid/database/ContentObserver;

.field private final mCameraContext:Lcom/sec/android/app/camera/Camera;

.field private final mFaceDetectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstStartingPreviewCompleted:Z

.field private mIsFirstStartingPreviewRequested:Z

.field private final mListenerMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationService:Lcom/sec/android/app/camera/service/NotificationService;

.field private mPictureSavingEventListener:Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lu3/h;->q:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->DELAY_TIME_TO_INITIALIZE_LAYER:I

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mFaceDetectionListeners:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mListenerMap:Ljava/util/EnumMap;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler$1;-><init>(Lcom/sec/android/app/camera/CameraGenericEventHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mBestPhotoContentObserver:Landroid/database/ContentObserver;

    .line 7
    invoke-static {}, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->values()[Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mListenerMap:Ljava/util/EnumMap;

    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;IZLcom/sec/android/app/camera/interfaces/WatchServiceManager;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->lambda$onThumbnailTaken$2(Landroid/graphics/Bitmap;IZLcom/sec/android/app/camera/interfaces/WatchServiceManager;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/CameraGenericEventHandler;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->lambda$registerGenericEventListener$3(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/CameraGenericEventHandler;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->lambda$unregisterGenericEventListener$4(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/CameraGenericEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->lambda$onCreateSurfaceCompleted$0()V

    return-void
.end method

.method public static synthetic e(Ljava/util/Map;ZLcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->lambda$onFaceDetection$1(Ljava/util/Map;ZLcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->lambda$sendGenericEvent$5(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/CameraGenericEventHandler;)Lcom/sec/android/app/camera/Camera;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/CameraGenericEventHandler;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method private synthetic lambda$onCreateSurfaceCompleted$0()V
    .locals 3

    const-string v0, "CameraGenericEventHandler"

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initializeLayerManager()V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in onCreateSurfaceCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cause of InvocationTargetException in onCreateSurfaceCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$onFaceDetection$1(Ljava/util/Map;ZLcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;->onFaceDetection(Ljava/util/Map;Z)V

    return-void
.end method

.method private static synthetic lambda$onThumbnailTaken$2(Landroid/graphics/Bitmap;IZLcom/sec/android/app/camera/interfaces/WatchServiceManager;)V
    .locals 0

    invoke-interface {p3, p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/WatchServiceManager;->notifyThumbnailUpdated(Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method private synthetic lambda$registerGenericEventListener$3(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$sendGenericEvent$5(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;->onGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method private synthetic lambda$unregisterGenericEventListener$4(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mListenerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    new-instance p0, Lcom/sec/android/app/camera/z0;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/z0;-><init>(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendGenericEvent : eventId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mNotificationService:Lcom/sec/android/app/camera/service/NotificationService;

    return-void
.end method

.method init()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/service/NotificationService;

    invoke-direct {v0}, Lcom/sec/android/app/camera/service/NotificationService;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mNotificationService:Lcom/sec/android/app/camera/service/NotificationService;

    return-void
.end method

.method onChangePreviewSurfaceSizeRequested()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CHANGE_EXTRA_SURFACE_LAYOUT:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public onChangeShootingModeCompleted(Z)V
    .locals 4

    const-string v0, "onChangeShootingModeCompleted"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangeShootingModeCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") : start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraGenericEventHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mIsFirstStartingPreviewCompleted:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->onActivate()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->updateRemainCounter()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->getCurrentShootingModeTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-static {v0, v2, v3, p1}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakCurrentCameraInfo(Landroid/content/Context;Ljava/lang/String;IZ)V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;->startDisplayCutoutAnimation()V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v0

    const/16 v2, 0x2a

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCurrentShootingModeId(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isPreviousShootingModeId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->destroyFunProcessor()V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->closeFunCameraKitSession()V

    :cond_3
    const-string v0, "onChangeShootingModeCompleted : end"

    .line 12
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->isRecordingControlAvailable()Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_5

    .line 14
    :cond_4
    sget-object p0, Ls5/d;->a:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->a()V

    .line 15
    :cond_5
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V

    return-void
.end method

.method public onCreateSurfaceCompleted()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    const-string/jumbo v3, "x"

    const-string v4, "last_fixed_surface_size"

    if-ne v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->isCurrentShootingModeId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/v0;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/v0;-><init>(Lcom/sec/android/app/camera/CameraGenericEventHandler;)V

    iget p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->DELAY_TIME_TO_INITIALIZE_LAYER:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onDbUpdateFailed(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12039a

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public onEngineStarted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isAttachFragmentVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendAppInAppBroadcast(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendCameraStartBroadcast(Landroid/content/Context;ZZ)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v0, "Camera_preview"

    invoke-static {p0, v0, v2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onEngineStopped()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.CAMERA_STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendCameraStartBroadcast(Landroid/content/Context;ZZ)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const-string v0, "Camera_preview"

    invoke-static {p0, v0, v2}, Lcom/sec/android/app/camera/util/BroadcastUtil;->notifyCameraInfo(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFaceDetection(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getShutterTimerManager()Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "selfie_tone_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mFaceDetectionListeners:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/a1;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/camera/a1;-><init>(Ljava/util/Map;Z)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPictureProcessingCompleted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mNotificationService:Lcom/sec/android/app/camera/service/NotificationService;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/service/NotificationService;->hideSavingNotification()V

    return-void
.end method

.method public onPictureProcessingStarted()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mNotificationService:Lcom/sec/android/app/camera/service/NotificationService;

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/service/NotificationService;->showSavingNotification(Landroid/content/Context;)V

    return-void
.end method

.method public onPictureSaved(Lcom/sec/android/app/camera/interfaces/Engine$ContentData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isDestroying()Z

    move-result v0

    const-string v1, "CameraGenericEventHandler"

    if-eqz v0, :cond_0

    const-string p0, "onPictureSaved : Returned because camera is destroying."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachImageMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "onPictureSaved : Returned because starting attach fragment."

    .line 4
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->startAttachFragment()V

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getRawContentSecMpUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "onPictureSaved : Returned because it is raw content."

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getRawContentSecMpUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/camera/Camera;->addSecureContentData(Landroid/net/Uri;I)V

    .line 10
    :cond_2
    sget-object p0, Ls5/d;->n:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->a()V

    return-void

    :cond_3
    const-string v0, "onPictureSaved : start"

    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentSecMpUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentSecMpUri()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine$ContentData;->getContentBurstGroupId()I

    move-result p1

    invoke-virtual {v0, v3, p1}, Lcom/sec/android/app/camera/Camera;->addSecureContentData(Landroid/net/Uri;I)V

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    .line 15
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->updateRemainCounter()V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/camera/Camera;->requestSystemKeyEvents(Z)V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mPictureSavingEventListener:Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/b1;->a:Lcom/sec/android/app/camera/b1;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 18
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->THUMBNAIL_UPDATE:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    .line 20
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "camera.action.PICTURE_SAVED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 21
    sget-object p0, Ls5/d;->m:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->a()V

    const-string p0, "onPictureSaved : end"

    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPictureSavingFailed()V
    .locals 4

    const-string v0, "CameraGenericEventHandler"

    const-string v1, "onPictureSavingFailed"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120210

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0, v1, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method onStartEngineRequested()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "camera.action.CAMERA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 4

    const-string v0, "CameraGenericEventHandler"

    const-string v1, "onStartPreviewCompleted"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mIsFirstStartingPreviewCompleted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mIsFirstStartingPreviewCompleted:Z

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onCameraEnterCompleted()V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Constants;->BEST_PHOTO_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mBestPhotoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mNotificationService:Lcom/sec/android/app/camera/service/NotificationService;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/service/NotificationService;->bindNotificationService(Landroid/content/Context;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getShootingModeProvider()Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeProvider;->getCurrentShootingModeTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    .line 9
    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    .line 10
    invoke-static {v1, v2, v3, v0}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->speakCurrentCameraInfo(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 11
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->START_PREVIEW_COMPLETED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    .line 12
    sget-object p0, Ls5/d;->b:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->isIdleNow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->a()V

    :cond_1
    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 2

    const-string v0, "CameraGenericEventHandler"

    const-string v1, "onStartPreviewRequested"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mIsFirstStartingPreviewRequested:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mIsFirstStartingPreviewRequested:Z

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onFirstStartPreviewRequested()V

    :cond_0
    return-void
.end method

.method onStopEngineRequested()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isSettingActivityLaunching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_SETTING_ACTIVITY_STARTED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_TERMINATED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public onSwitchCameraPrepared(I)V
    .locals 2

    const-string v0, "CameraGenericEventHandler"

    const-string v1, "onSwitchCameraPrepared"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setCameraId(I)V

    .line 3
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->CAMERA_FACING_CHANGED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public onThumbnailTaken(Landroid/graphics/Bitmap;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->updateQuickViewThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWatchServiceManager()Lcom/sec/android/app/camera/interfaces/WatchServiceManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/w0;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/android/app/camera/w0;-><init>(Landroid/graphics/Bitmap;IZ)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onVideoRecordingFinished()V
    .locals 2

    const-string v0, "CameraGenericEventHandler"

    const-string v1, "onVideoRecordingFinished"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Ls5/d;->g:Ls5/d;

    invoke-static {v0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object v0

    invoke-virtual {v0}, Ls5/c;->a()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->enableSystemSound()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->startVoiceRecognizer()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraWindowManager()Lcom/sec/android/app/camera/CameraWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraWindowManager;->lockCurrentOrientation(Z)V

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STOPPED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public onVideoRecordingPaused()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_PAUSED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public onVideoRecordingPrepared()V
    .locals 3

    const-string v0, "CameraGenericEventHandler"

    const-string v1, "onVideoRecordingPrepared : start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraWindowManager()Lcom/sec/android/app/camera/CameraWindowManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraWindowManager;->lockCurrentOrientation(Z)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/BroadcastUtil;->sendAppInAppBroadcast(Landroid/content/Context;)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraAudioManager()Lcom/sec/android/app/camera/interfaces/CameraAudioManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraAudioManager;->disableSystemSound()V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopVoiceRecognizer()V

    const-string p0, "onVideoRecordingPrepared : end"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onVideoRecordingResumed()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_RESUMED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    return-void
.end method

.method public onVideoRecordingStarted()V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;->RECORDING_STARTED:Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CameraGenericEventHandler;->sendGenericEvent(Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;)V

    .line 2
    sget-object p0, Ls5/d;->f:Ls5/d;

    invoke-static {p0}, Ls5/b;->b(Ls5/d;)Ls5/c;

    move-result-object p0

    invoke-virtual {p0}, Ls5/c;->a()V

    return-void
.end method

.method public onVideoSaved(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CameraGenericEventHandler"

    const-string v1, "onVideoSaved"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachVideoMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->getRequestedSaveUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->setVideoSavedOnRequestedUri(Z)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAttachModeManager()Lcom/sec/android/app/camera/interfaces/AttachModeManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/AttachModeManager;->startAttachFragment()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/camera/Camera;->addSecureContentData(Landroid/net/Uri;I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->updateLatestMedia()V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->updateRemainCounter()V

    return-void
.end method

.method registerFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method registerGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/camera/x0;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/x0;-><init>(Lcom/sec/android/app/camera/CameraGenericEventHandler;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method resetFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mIsFirstStartingPreviewCompleted:Z

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mIsFirstStartingPreviewRequested:Z

    return-void
.end method

.method public setLockOrientation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraWindowManager()Lcom/sec/android/app/camera/CameraWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraWindowManager;->lockCurrentOrientation(Z)V

    return-void
.end method

.method setPictureSavingEventListener(Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mPictureSavingEventListener:Lcom/sec/android/app/camera/interfaces/CameraContext$PictureSavingEventListener;

    return-void
.end method

.method stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mNotificationService:Lcom/sec/android/app/camera/service/NotificationService;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/service/NotificationService;->unbindNotificationService(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mCameraContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mBestPhotoContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 3
    invoke-static {}, Lcom/sec/android/app/camera/util/VoiceAssistantManager;->clear()V

    return-void
.end method

.method unregisterFaceDetectionListener(Lcom/sec/android/app/camera/interfaces/CameraContext$FaceDetectionListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/CameraGenericEventHandler;->mFaceDetectionListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method unregisterGenericEventListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventId;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/camera/y0;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/camera/y0;-><init>(Lcom/sec/android/app/camera/CameraGenericEventHandler;Lcom/sec/android/app/camera/interfaces/CameraGenericEvent$EventListener;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
