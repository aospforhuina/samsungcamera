.class public Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;
.super Ljava/lang/Object;
.source "TrackingAfPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$Presenter;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiStateChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrackingAfPresenter"


# instance fields
.field private final mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsTrackingAfStarted:Z

.field private final mView:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mIsTrackingAfStarted:Z

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 5
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mView:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;

    .line 6
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    return-void
.end method

.method private getTranslatedRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/sec/android/app/camera/util/Util;->getNormalizedMatrix(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 3
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object p1
.end method

.method private isTrackingAfUpdateAvailable()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STARTING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 4
    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->STOPPING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-eq v0, v3, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 5
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getRecordingManager()Lcom/sec/android/app/camera/interfaces/RecordingManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/RecordingManager;->getRecordingState()Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;->CANCELLING:Lcom/sec/android/app/camera/interfaces/RecordingManager$RecordingState;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method private resetTrackingAf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mIsTrackingAfStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mIsTrackingAfStarted:Z

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mView:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;->hideTrackingAf()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public onAeAfUiStateChanged(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiState;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter$1;->$SwitchMap$com$sec$android$app$camera$interfaces$AeAfManager$AeAfUiState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mView:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;->hideTrackingAf()V

    goto :goto_0

    .line 3
    :cond_1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mIsTrackingAfStarted:Z

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->resetTrackingAf()V

    :goto_0
    return-void
.end method

.method public onTrackingAfChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->isTrackingAfUpdateAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mView:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;->hideTrackingAf()V

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mIsTrackingAfStarted:Z

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrackingAfChanged : trackingRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cropRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrackingAfPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mView:Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->getTranslatedRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfContract$View;->updateTrackingAf(Landroid/graphics/RectF;)V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->registerAeAfUiStateChangeListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiStateChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setTrackingAfChangeListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfChangeListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->unregisterAeAfUiStateChangeListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeAfUiStateChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->mAeAfManager:Lcom/sec/android/app/camera/interfaces/AeAfManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->setTrackingAfChangeListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfChangeListener;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/trackingaf/TrackingAfPresenter;->resetTrackingAf()V

    return-void
.end method
