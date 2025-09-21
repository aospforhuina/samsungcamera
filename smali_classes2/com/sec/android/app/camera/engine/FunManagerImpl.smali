.class public Lcom/sec/android/app/camera/engine/FunManagerImpl;
.super Ljava/lang/Object;
.source "FunManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/FunManager;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "FunManagerImpl"


# instance fields
.field private isStartFunProcessRequested:Z

.field private mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

.field private mCameraKitSession:Lcom/snap/camerakit/Session;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mInput:Lcom/snap/camerakit/ImageProcessor$Input;

.field private mPhotoSurfaceConnection:Ljava/io/Closeable;

.field private mPreviewSurfaceConnectionInput:Ljava/io/Closeable;

.field private mPreviewSurfaceConnectionOutput:Ljava/io/Closeable;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoSurfaceConnection:Ljava/io/Closeable;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/snap/camerakit/plugin/Plugin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    .line 5
    new-instance p2, Lcom/sec/android/app/camera/engine/y4;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/engine/y4;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/FunManagerImpl;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$setTouchDelegateParams$12(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/FunManagerImpl;Lcom/snap/camerakit/lenses/LensesComponent$Hints$Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$createFunMode$6(Lcom/snap/camerakit/lenses/LensesComponent$Hints$Configuration;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$applyLens$9(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/snap/camerakit/lenses/LensesComponent$LoadingOverlay$Configuration;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$createFunMode$3(Lcom/snap/camerakit/lenses/LensesComponent$LoadingOverlay$Configuration;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/camera/engine/FunManagerImpl;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->handleCameraKitError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g(Lcom/snap/camerakit/lenses/LensesComponent$Lens;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$applyLens$10(Lcom/snap/camerakit/lenses/LensesComponent$Lens;Ljava/lang/Boolean;)V

    return-void
.end method

.method private getOrientation()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    add-int/2addr v0, p0

    rem-int/lit16 v0, v0, 0x168

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    sub-int/2addr v0, p0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$createFunMode$8()V

    return-void
.end method

.method private handleCameraKitError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FunManagerImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraErrorEventListener()Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;

    move-result-object p0

    const/16 p1, -0x18

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$CameraErrorEventListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/engine/FunManagerImpl;Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$createFunMode$5(Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$preLoadLenses$11(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/engine/FunManagerImpl;Ljava/util/List;Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$addLens$1(Ljava/util/List;Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/engine/FunManagerImpl;Lcom/snap/camerakit/lenses/LensesComponent$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$createFunMode$7(Lcom/snap/camerakit/lenses/LensesComponent$Builder;)V

    return-void
.end method

.method private synthetic lambda$addLens$1(Ljava/util/List;Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result$Some;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result$Some;

    invoke-virtual {p2}, Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result$Some;->getLenses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->preLoadLenses(Ljava/util/List;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addFunModeLens(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$addLens$2(Ljava/util/List;Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;)V
    .locals 1

    .line 1
    instance-of v0, p2, Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result$Some;

    if-eqz v0, :cond_0

    .line 2
    check-cast p2, Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result$Some;

    invoke-virtual {p2}, Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result$Some;->getLenses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->preLoadLenses(Ljava/util/List;)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->addFunModeLens(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$applyLens$10(Lcom/snap/camerakit/lenses/LensesComponent$Lens;Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Apply lens ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "] success: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FunManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$applyLens$9(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleared lens success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FunManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$createFunMode$3(Lcom/snap/camerakit/lenses/LensesComponent$LoadingOverlay$Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/snap/camerakit/lenses/LensesComponent$LoadingOverlay$Configuration;->setEnabled(Z)V

    return-void
.end method

.method private static synthetic lambda$createFunMode$4(Lcom/snap/camerakit/lenses/LensesComponent$Processor$Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p0, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Processor$Configuration;->setUseDeviceOrientationForFaceDetection(Z)V

    .line 2
    sget-object v0, Lcom/snap/camerakit/lenses/LensesComponent$Processor$InputFrameRotationBehavior;->ASSUME_PORTRAIT_ORIENTATION:Lcom/snap/camerakit/lenses/LensesComponent$Processor$InputFrameRotationBehavior;

    invoke-interface {p0, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Processor$Configuration;->setInputFrameRotationBehavior(Lcom/snap/camerakit/lenses/LensesComponent$Processor$InputFrameRotationBehavior;)V

    return-void
.end method

.method private synthetic lambda$createFunMode$5(Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model$Displayed;

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    check-cast p1, Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model$Displayed;

    invoke-virtual {p1}, Lcom/snap/camerakit/lenses/LensesComponent$Hints$View$Model$Displayed;->getId()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showFunModeLensGuide(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$createFunMode$6(Lcom/snap/camerakit/lenses/LensesComponent$Hints$Configuration;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Hints$Configuration;->setEnabled(Z)V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/engine/x4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/x4;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V

    invoke-interface {p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Hints$Configuration;->setView(Lcom/snap/camerakit/lenses/LensesComponent$Hints$View;)V

    return-void
.end method

.method private synthetic lambda$createFunMode$7(Lcom/snap/camerakit/lenses/LensesComponent$Builder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getFunModeTouchView()Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Builder;->dispatchTouchEventsTo(Landroid/view/View;)Lcom/snap/camerakit/lenses/LensesComponent$Builder;

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/engine/g5;->a:Lcom/sec/android/app/camera/engine/g5;

    invoke-interface {p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Builder;->configureLoadingOverlay(Lcom/snap/camerakit/common/Consumer;)Lcom/snap/camerakit/lenses/LensesComponent$Builder;

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/engine/h5;->a:Lcom/sec/android/app/camera/engine/h5;

    invoke-interface {p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Builder;->configureProcessor(Lcom/snap/camerakit/common/Consumer;)Lcom/snap/camerakit/lenses/LensesComponent$Builder;

    .line 4
    new-instance v0, Lcom/sec/android/app/camera/engine/b5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/b5;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V

    invoke-interface {p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Builder;->configureHints(Lcom/snap/camerakit/common/Consumer;)Lcom/snap/camerakit/lenses/LensesComponent$Builder;

    return-void
.end method

.method private synthetic lambda$createFunMode$8()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    invoke-virtual {v0}, Lcom/snap/camerakit/plugin/Plugin;->newSessionBuilder()Lcom/snap/camerakit/Session$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 2
    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getTouchDelegateViewStub()Landroid/view/ViewStub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/snap/camerakit/Session$Builder;->attachTo(Landroid/view/ViewStub;Z)Lcom/snap/camerakit/Session$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/w4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/w4;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V

    invoke-interface {v0, v1}, Lcom/snap/camerakit/Session$Builder;->configureLenses(Lcom/snap/camerakit/common/Consumer;)Lcom/snap/camerakit/Session$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/c5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/c5;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/snap/camerakit/Session$Builder;->handleErrorsWith(Lcom/snap/camerakit/common/Consumer;)Lcom/snap/camerakit/Session$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/snap/camerakit/Session$Builder;->build()Lcom/snap/camerakit/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    .line 4
    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->isStartFunProcessRequested:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->startFunProcessor(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private static synthetic lambda$preLoadLenses$11(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lenses Loaded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FunManagerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$setTouchDelegateParams$12(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getTouchDelegateViewStub()Landroid/view/ViewStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/engine/FunManagerImpl;Ljava/util/List;Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$addLens$2(Ljava/util/List;Lcom/snap/camerakit/lenses/LensesComponent$Repository$Result;)V

    return-void
.end method

.method public static synthetic n(Lcom/snap/camerakit/lenses/LensesComponent$Processor$Configuration;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->lambda$createFunMode$4(Lcom/snap/camerakit/lenses/LensesComponent$Processor$Configuration;)V

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/engine/FunManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-object p0
.end method

.method private setTouchDelegateParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 5
    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/camera/engine/a5;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/camera/engine/a5;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public addLens()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {v2}, Lcom/snap/camerakit/Session;->getLenses()Lcom/snap/camerakit/lenses/LensesComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/snap/camerakit/lenses/LensesComponent;->getRepository()Lcom/snap/camerakit/lenses/LensesComponent$Repository;

    move-result-object v2

    new-instance v3, Lcom/snap/camerakit/lenses/LensesComponent$Repository$QueryCriteria$Available;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Constants;->FUN_MODE_NORMAL_LENS_ID:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/sec/android/app/camera/interfaces/Constants;->FUN_MODE_WIDE_LENS_ID:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-direct {v3, v4}, Lcom/snap/camerakit/lenses/LensesComponent$Repository$QueryCriteria$Available;-><init>([Ljava/lang/String;)V

    new-instance v4, Lcom/sec/android/app/camera/engine/d5;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/camera/engine/d5;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;Ljava/util/List;)V

    invoke-interface {v2, v3, v4}, Lcom/snap/camerakit/lenses/LensesComponent$Repository;->get(Lcom/snap/camerakit/lenses/LensesComponent$Repository$QueryCriteria;Lcom/snap/camerakit/common/Consumer;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {v0}, Lcom/snap/camerakit/Session;->getLenses()Lcom/snap/camerakit/lenses/LensesComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/snap/camerakit/lenses/LensesComponent;->getRepository()Lcom/snap/camerakit/lenses/LensesComponent$Repository;

    move-result-object v0

    new-instance v2, Lcom/snap/camerakit/lenses/LensesComponent$Repository$QueryCriteria$Available;

    new-array v3, v7, [Ljava/lang/String;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/Constants;->FUN_MODE_MORE_LENS_ID:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-direct {v2, v3}, Lcom/snap/camerakit/lenses/LensesComponent$Repository$QueryCriteria$Available;-><init>([Ljava/lang/String;)V

    new-instance v3, Lcom/sec/android/app/camera/engine/e5;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/camera/engine/e5;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;Ljava/util/List;)V

    invoke-interface {v0, v2, v3}, Lcom/snap/camerakit/lenses/LensesComponent$Repository;->get(Lcom/snap/camerakit/lenses/LensesComponent$Repository$QueryCriteria;Lcom/snap/camerakit/common/Consumer;)V

    return-void
.end method

.method public applyLens(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcom/snap/camerakit/lenses/LensesComponent$Lens;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Default Lens"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {p0}, Lcom/snap/camerakit/Session;->getLenses()Lcom/snap/camerakit/lenses/LensesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent;->getProcessor()Lcom/snap/camerakit/lenses/LensesComponent$Processor;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/engine/i5;->a:Lcom/sec/android/app/camera/engine/i5;

    invoke-interface {p0, p1}, Lcom/snap/camerakit/lenses/LensesComponent$Processor;->clear(Lcom/snap/camerakit/common/Consumer;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {p0}, Lcom/snap/camerakit/Session;->getLenses()Lcom/snap/camerakit/lenses/LensesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent;->getProcessor()Lcom/snap/camerakit/lenses/LensesComponent$Processor;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/engine/f5;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/f5;-><init>(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V

    invoke-interface {p0, p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Processor;->apply(Lcom/snap/camerakit/lenses/LensesComponent$Lens;Lcom/snap/camerakit/common/Consumer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeFunCameraKitSession()V
    .locals 2

    const-string v0, "FunManagerImpl"

    const-string v1, "closeFunCameraKitSession"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->isStartFunProcessRequested:Z

    .line 4
    invoke-interface {v0}, Lcom/snap/camerakit/Session;->close()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    :cond_0
    return-void
.end method

.method public createFunMode()V
    .locals 3

    const-string v0, "FunManagerImpl"

    const-string v1, "Create Fun Mode"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->setTouchDelegateParams()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->detachFromGLContext()V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/z4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/z4;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->postToUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const-string p0, "CameraKitFeature is not installed"

    .line 10
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public destroyFunProcessor()V
    .locals 3

    const-string v0, "FunManagerImpl"

    const-string v1, "destroyFunProcessor"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->startFunSurfaceTexture(Z)V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPreviewSurfaceConnectionInput:Ljava/io/Closeable;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 5
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPreviewSurfaceConnectionInput:Ljava/io/Closeable;

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPreviewSurfaceConnectionOutput:Ljava/io/Closeable;

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 8
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPreviewSurfaceConnectionOutput:Ljava/io/Closeable;

    .line 9
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPhotoSurfaceConnection:Ljava/io/Closeable;

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    .line 11
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPhotoSurfaceConnection:Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 15
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 16
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->destroyFunModeTouchViewStub()V

    return-void
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string p1, "FunManagerImpl"

    const-string v0, "onDestroy"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    return-void
.end method

.method public preLoadLenses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snap/camerakit/lenses/LensesComponent$Lens;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {p0}, Lcom/snap/camerakit/Session;->getLenses()Lcom/snap/camerakit/lenses/LensesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/snap/camerakit/lenses/LensesComponent;->getPrefetcher()Lcom/snap/camerakit/lenses/LensesComponent$Prefetcher;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/engine/j5;->a:Lcom/sec/android/app/camera/engine/j5;

    invoke-interface {p0, p1, v0}, Lcom/snap/camerakit/lenses/LensesComponent$Prefetcher;->run(Ljava/util/List;Lcom/snap/camerakit/common/Consumer;)Ljava/io/Closeable;

    return-void
.end method

.method public setRecordingSurface(Landroid/view/Surface;)V
    .locals 4

    const-string v0, "FunManagerImpl"

    const-string/jumbo v1, "setRecordingSurface"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v1, 0x5a

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCameraOrientationLandscape()Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v1, 0x10e

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    sget-object v3, Lcom/snap/camerakit/ImageProcessor$Output$Purpose;->RECORDING:Lcom/snap/camerakit/ImageProcessor$Output$Purpose;

    invoke-virtual {v2, p1, v3, v1}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorOutputFrom(Landroid/view/Surface;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;I)Lcom/snap/camerakit/ImageProcessor$Output;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {v1}, Lcom/snap/camerakit/Session;->getProcessor()Lcom/snap/camerakit/Session$Processor;

    move-result-object v1

    sget-object v2, Lcom/snap/camerakit/ImageProcessor$Output$Option$IgnoreDeviceRotation;->INSTANCE:Lcom/snap/camerakit/ImageProcessor$Output$Option$IgnoreDeviceRotation;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/snap/camerakit/Session$Processor;->connectOutput(Lcom/snap/camerakit/ImageProcessor$Output;Ljava/util/Set;)Ljava/io/Closeable;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mVideoSurfaceConnection:Ljava/io/Closeable;

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mVideoSurfaceConnection:Ljava/io/Closeable;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mVideoSurfaceConnection:Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public startFunProcessor(Landroid/graphics/SurfaceTexture;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Fun Mode Processor mCameraKitSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FunManagerImpl"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPreviewSurfaceConnectionOutput:Ljava/io/Closeable;

    if-nez v4, :cond_1

    .line 3
    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getRepresentativePreviewSize(Lcom/sec/android/app/camera/interfaces/AspectRatio;)Landroid/util/Size;

    move-result-object v2

    .line 6
    iget-object v4, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 7
    iget-object v4, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_0

    .line 8
    iget-object v6, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    iget-object v7, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->getOrientation()I

    move-result v10

    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 9
    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v12, v2

    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getLensInfoAvailableFocalLengths()[F

    move-result-object v2

    aget v2, v2, v5

    float-to-double v14, v2

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    double-to-float v12, v12

    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 10
    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorInfoPhysicalSize()Landroid/util/SizeF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 11
    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Capability;->getLensInfoAvailableFocalLengths()[F

    move-result-object v4

    aget v4, v4, v5

    move/from16 v16, v12

    float-to-double v11, v4

    .line 12
    invoke-static {v2, v3, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    mul-double/2addr v2, v14

    double-to-float v2, v2

    const/4 v3, 0x1

    move v11, v3

    move/from16 v12, v16

    move v13, v2

    .line 13
    invoke-virtual/range {v6 .. v13}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorInputFrom(Landroid/graphics/SurfaceTexture;IIIZFF)Lcom/snap/camerakit/ImageProcessor$Input;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mInput:Lcom/snap/camerakit/ImageProcessor$Input;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v3, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    .line 15
    iget-object v6, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    iget-object v7, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->getOrientation()I

    move-result v10

    const/4 v11, 0x0

    new-instance v12, Lcom/sec/android/app/camera/engine/FunManagerImpl$1;

    invoke-direct {v12, v0, v3}, Lcom/sec/android/app/camera/engine/FunManagerImpl$1;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;I)V

    new-instance v13, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;

    invoke-direct {v13, v0, v3}, Lcom/sec/android/app/camera/engine/FunManagerImpl$2;-><init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;I)V

    invoke-virtual/range {v6 .. v13}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorInputFrom(Landroid/graphics/SurfaceTexture;IIIZLjava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lcom/snap/camerakit/ImageProcessor$Input;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mInput:Lcom/snap/camerakit/ImageProcessor$Input;

    .line 16
    :goto_0
    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sget-object v1, Lcom/snap/camerakit/ImageProcessor$Output$Purpose;->PREVIEW:Lcom/snap/camerakit/ImageProcessor$Output$Purpose;

    invoke-virtual {v2, v3, v1, v5}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorOutputFrom(Landroid/view/Surface;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;I)Lcom/snap/camerakit/ImageProcessor$Output;

    move-result-object v1

    .line 17
    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {v2}, Lcom/snap/camerakit/Session;->getProcessor()Lcom/snap/camerakit/Session$Processor;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mInput:Lcom/snap/camerakit/ImageProcessor$Input;

    invoke-interface {v2, v3}, Lcom/snap/camerakit/Session$Processor;->connectInput(Lcom/snap/camerakit/ImageProcessor$Input;)Ljava/io/Closeable;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPreviewSurfaceConnectionInput:Ljava/io/Closeable;

    .line 19
    iget-object v2, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    invoke-interface {v2}, Lcom/snap/camerakit/Session;->getProcessor()Lcom/snap/camerakit/Session$Processor;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/snap/camerakit/Session$Processor;->connectOutput(Lcom/snap/camerakit/ImageProcessor$Output;)Ljava/io/Closeable;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mPreviewSurfaceConnectionOutput:Ljava/io/Closeable;

    .line 20
    iget-object v0, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->notifyPrepareStartPreview()V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    .line 21
    iput-boolean v3, v0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->isStartFunProcessRequested:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public takePicture(Ljava/nio/ByteBuffer;)V
    .locals 11

    const-string v0, "FunManagerImpl"

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v2, v1, [B

    .line 2
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 3
    invoke-static {v2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitSession:Lcom/snap/camerakit/Session;

    if-eqz v2, :cond_4

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mCameraKitFeature:Lcom/snap/camerakit/plugin/Plugin;

    invoke-interface {v2}, Lcom/snap/camerakit/Session;->getProcessor()Lcom/snap/camerakit/Session$Processor;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mInput:Lcom/snap/camerakit/ImageProcessor$Input;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getOrientationFunCapture()I

    move-result v7

    const-wide/16 v8, 0xa

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v6, v1

    invoke-virtual/range {v3 .. v10}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;IJLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object v2

    :try_start_0
    const-string v3, "TakePicture - creating file"

    .line 6
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x64

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 8
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v5, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 9
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 10
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 11
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 12
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Captured Bitmap "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getPictureCallbackManager()Lcom/sec/android/app/camera/engine/PictureCallbackManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/camera/engine/PictureCallbackManager;->completeFunModeTakePictue(Ljava/nio/ByteBuffer;)V

    .line 15
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailableThumbnailSizes()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/util/Util;->findThumbnailSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v4

    .line 16
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/FunManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getThumbnailProcessor()Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;

    move-result-object p0

    new-instance v5, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;

    sget-object v6, Lcom/samsung/android/camera/core2/util/ImgFormat;->m:Lcom/samsung/android/camera/core2/util/ImgFormat;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v7}, Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;-><init>(Lcom/samsung/android/camera/core2/util/ImgFormat;Landroid/util/Size;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {p0, v3, v5, p1}, Lcom/sec/android/app/camera/engine/PictureProcessor$ThumbnailProcessor;->process(Ljava/nio/ByteBuffer;Lcom/samsung/android/camera/core2/callback/ThumbnailCallback$DataInfo;I)V

    const-string p0, "TakePicture - file saved"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 20
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_1

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    :cond_1
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v2

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_4

    .line 25
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 26
    :goto_1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    :cond_2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 29
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    :cond_3
    throw p0

    :cond_4
    :goto_2
    return-void
.end method
