.class public Lcom/sec/android/app/camera/engine/FunController;
.super Ljava/lang/Object;
.source "FunController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FunController"


# instance fields
.field private mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

.field private mCameraKitLoaded:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 3
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/FunController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_CAMERA_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getInitialShootingMode()I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_FUN:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isEnable(Landroid/content/Context;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/v4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/v4;-><init>(Lcom/sec/android/app/camera/engine/FunController;)V

    if-eqz v2, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x7d0

    .line 7
    :goto_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunController;->mCameraKitLoaded:Ljava/util/concurrent/Future;

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/FunController;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/FunController;->lambda$new$0()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()Ljava/lang/Boolean;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.snap.camerakit.plugin.v1"

    invoke-static {v0, v1}, Lcom/snap/camerakit/plugin/Plugin$Loader;->from(Landroid/content/Context;Ljava/lang/String;)Lcom/snap/camerakit/plugin/Plugin$Loader;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/snap/camerakit/plugin/Plugin$Loader;->load()Lcom/snap/camerakit/plugin/Plugin$Loader$Result;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;

    const-string v2, "FunController"

    if-eqz v1, :cond_0

    const-string v1, "CameraKit Plugin Load : Success"

    .line 4
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    check-cast v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;

    invoke-virtual {v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Success;->getPlugin()Lcom/snap/camerakit/plugin/Plugin;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/FunController;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    .line 6
    new-instance v1, Lcom/sec/android/app/camera/engine/FunManagerImpl;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/FunController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-direct {v1, v2, v3, v0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;-><init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/snap/camerakit/plugin/Plugin;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    .line 7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 8
    :cond_0
    check-cast v0, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;

    invoke-virtual {v0}, Lcom/snap/camerakit/plugin/Plugin$Loader$Result$Failure;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public addLens()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/FunManager;->addLens()V

    return-void
.end method

.method applyLens(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/FunManager;->applyLens(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V

    return-void
.end method

.method closeFunCameraKitSession()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/FunManager;->closeFunCameraKitSession()V

    :cond_0
    return-void
.end method

.method public createFunMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/FunManager;->createFunMode()V

    return-void
.end method

.method destroyFunProcessor()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/FunManager;->destroyFunProcessor()V

    :cond_0
    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/FunManager;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method loadFunModePackage()V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mCameraKitLoaded:Ljava/util/concurrent/Future;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FunController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setRecordingSurface(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/FunManager;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public startFunProcessor(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/FunManager;->startFunProcessor(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public takePicture(Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunController;->mFunManager:Lcom/sec/android/app/camera/interfaces/FunManager;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/FunManager;->takePicture(Ljava/nio/ByteBuffer;)V

    return-void
.end method
