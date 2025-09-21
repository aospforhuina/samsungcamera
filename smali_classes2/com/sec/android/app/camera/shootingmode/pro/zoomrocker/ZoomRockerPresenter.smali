.class public Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;
.super Ljava/lang/Object;
.source "ZoomRockerPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter;
.implements Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;


# static fields
.field private static final FAST_ZOOMING_VELOCITY:F = 8.0f

.field private static final NORMAL_ZOOMING_VELOCITY:F = 5.0f

.field private static final SLOW_ZOOMING_VELOCITY:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "ZoomRockerPresenter"

.field private static final THRESHOLD_FAST_VELOCITY:I = 0x50

.field private static final THRESHOLD_NORMAL_VELOCITY:I = 0x32


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentCalculatedZoomValue:F

.field private mMaxZoomValue:I

.field private mMinZoomValue:I

.field private final mPopupLayerManager:Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

.field private mPosition:I

.field private final mView:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;

.field private mZoomRockerTouchEventListener:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter$ZoomRockerTouchEventListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mMaxZoomValue:I

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mMinZoomValue:I

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 7
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mPopupLayerManager:Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->getPrefixZoomText()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;->updateZoomText(Ljava/lang/String;I)V

    return-void
.end method

.method private getPrefixZoomText()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->u0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lu3/b;->l0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120626

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    sget-object v0, Lu3/b;->l0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1205b4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_2
    sget-object v0, Lu3/b;->i0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f12050f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120678

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setZoomRockerTipsVisible(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_ROCKER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mPopupLayerManager:Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mPopupLayerManager:Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    invoke-interface {p0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onInitialize()V
    .locals 0

    return-void
.end method

.method public onTouchedPositionChanged(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mPosition:I

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/16 v2, 0x32

    if-ge v0, v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, v0

    div-float/2addr p1, v1

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x50

    if-le v0, v2, :cond_1

    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0

    .line 4
    :goto_1
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    add-float/2addr p1, v1

    mul-float/2addr v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    .line 5
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mMaxZoomValue:I

    int-to-float v1, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    int-to-float p1, p1

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    goto :goto_2

    .line 7
    :cond_2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mMinZoomValue:I

    int-to-float v1, p1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    int-to-float p1, p1

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    .line 9
    :cond_3
    :goto_2
    iget p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    float-to-int p1, p1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eq p1, v0, :cond_4

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    float-to-int v0, v0

    invoke-interface {p1, v1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->getPrefixZoomText()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    float-to-int p0, p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;->updateZoomText(Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method public onZoomRockerHide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    .line 2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->setZoomRockerTipsVisible(Z)V

    return-void
.end method

.method public onZoomRockerShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->getPrefixZoomText()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCurrentCalculatedZoomValue:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;->updateZoomText(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->SHOOTING_MODE_PRO_SLIDER:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->sendViewVisibilityEvent(Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;Z)V

    .line 4
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->setZoomRockerTipsVisible(Z)V

    return-void
.end method

.method public onZoomRockerTouchDown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mPopupLayerManager:Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_ROCKER_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mZoomRockerTouchEventListener:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter$ZoomRockerTouchEventListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter$ZoomRockerTouchEventListener;->onZoomRockerTouchDown()V

    :cond_0
    return-void
.end method

.method public onZoomRockerTouchUp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mZoomRockerTouchEventListener:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter$ZoomRockerTouchEventListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter$ZoomRockerTouchEventListener;->onZoomRockerTouchUp()V

    .line 3
    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mPosition:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2325"

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setZoomRange(II)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mMinZoomValue:I

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mMaxZoomValue:I

    return-void
.end method

.method public setZoomRockerEventListener(Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter$ZoomRockerTouchEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mZoomRockerTouchEventListener:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$Presenter$ZoomRockerTouchEventListener;

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->getPrefixZoomText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;->updateZoomText(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;->getZoomRockerSlider()Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->setZoomRockerEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/zoomrocker/ZoomRockerContract$View;->getZoomRockerSlider()Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider;->setZoomRockerEventListener(Lcom/sec/android/app/camera/shootingmode/pro/widget/ZoomRockerSlider$ZoomRockerEventListener;)V

    return-void
.end method
