.class public Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;
.super Ljava/lang/Object;
.source "CenterButtonPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$Presenter;


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

.field private final mView:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$View;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mView:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$View;

    .line 4
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public isResizableMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    return p0
.end method

.method public onFloatingShutterButtonMove(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;->updateFloatingShutterButtonPosition(II)V

    return-void
.end method

.method public onFloatingShutterButtonUp()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;->updateFloatingShutterButtonActionUP()V

    return-void
.end method

.method public onLongPress()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonLongPress(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onOvalAnimationRequested()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPauseButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordPauseButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onRecordButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onRecordButtonTouchDown()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordButtonTouchDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onRecordStopButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordStopButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onResumeButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performRecordResumeButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonClick()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonSwipeUp(II)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFloatingShutterButtonSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;->isFloatingShutterButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;->showFloatingShutterButton(Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/interfaces/OverlayLayerManager;->updateFloatingShutterButtonPosition(II)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onShutterButtonTouchDown()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAPTURE_WHEN_PRESSED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonTouchDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onShutterButtonTouchUp()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonTouchUp(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onSwipeDownEnd()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonActionOnSwipeDownEnd(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    return-void
.end method

.method public onSwipeDownReachMax()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;->VIEW_CLICK:Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;->performShutterButtonActionOnSwipeDown(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z

    move-result p0

    return p0
.end method

.method public onSwipeDownStarted()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAPTURE_WHEN_PRESSED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonPresenter;->mView:Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/keyscreen/centerbutton/CenterButtonContract$View;->resetView()V

    return-void
.end method
