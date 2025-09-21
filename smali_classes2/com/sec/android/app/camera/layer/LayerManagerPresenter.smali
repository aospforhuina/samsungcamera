.class public Lcom/sec/android/app/camera/layer/LayerManagerPresenter;
.super Ljava/lang/Object;
.source "LayerManagerPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/LayerManagerContract$Presenter;


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mLayerPresenterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/LayerManagerContract$View;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 5
    iput-object p4, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/layer/f;->a:Lcom/sec/android/app/camera/layer/f;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    return-void
.end method

.method public getDimScreenLayerPresenter(Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;)Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$Presenter;
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/dimscreen/DimScreenLayerContract$View;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getKeyScreenLayerPresenter(Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$View;)Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$Presenter;
    .locals 4

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/keyscreen/KeyScreenLayerContract$View;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getLayerGestureManager()Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;
    .locals 2

    new-instance v0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    return-object v0
.end method

.method public getLayerKeyEventManager()Lcom/sec/android/app/camera/layer/LayerKeyEventManager;
    .locals 3

    new-instance v0, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/android/app/camera/layer/LayerKeyEventManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    return-object v0
.end method

.method public getMenuLayerPresenter(Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$View;)Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$Presenter;
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/android/app/camera/layer/menu/MenuLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/menu/MenuLayerContract$View;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPopupLayerPresenter(Lcom/sec/android/app/camera/layer/popup/PopupLayerContract$View;)Lcom/sec/android/app/camera/layer/popup/PopupLayerContract$Presenter;
    .locals 2

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/camera/layer/popup/PopupLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/layer/popup/PopupLayerContract$View;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPreviewAnimationLayerPresenter(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$View;)Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$View;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getPreviewOverlayLayerPresenter(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$View;)Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$Presenter;
    .locals 4

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerContract$View;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShootingModeLayerPresenter(Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$View;)Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$Presenter;
    .locals 3

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/shootingmode/ShootingModeLayerContract$View;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getShootingModeOverlayLayerPresenter(Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;)Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$Presenter;
    .locals 4

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mShootingActionProvider:Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/shootingmodeoverlay/ShootingModeOverlayLayerContract$View;Lcom/sec/android/app/camera/interfaces/ShootingActionProvider;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getUserInteractionEventManager()Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/LayerUserInteractionEventManager;-><init>()V

    return-object p0
.end method

.method injectMock(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    return-void
.end method

.method public isResizableMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 2

    const-string v0, "Launch - LayerManagerPresenter start"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/layer/g;->a:Lcom/sec/android/app/camera/layer/g;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 3
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "Exit - LayerManagerPresenter stop"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerManagerPresenter;->mLayerPresenterArray:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/layer/h;->a:Lcom/sec/android/app/camera/layer/h;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 3
    invoke-static {v0, p0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    return-void
.end method
