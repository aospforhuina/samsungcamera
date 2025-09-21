.class public Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;
.super Ljava/lang/Object;
.source "MultiPreviewListPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$Presenter;
.implements Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager$MultiPreviewEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter$ItemClickListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "MultiPreviewListPresenter"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mItemClickListener:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter$ItemClickListener;

.field private mMultiPreviewThumbnailManager:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;

.field protected final mSettingChangedListenerKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

.field private mZoomLensArray:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    .line 3
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 5
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->lambda$unregisterCameraSettingChangedListeners$2(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->lambda$registerCameraSettingChangedListeners$1(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->lambda$onAutoTrackingStateChanged$0([I)V

    return-void
.end method

.method private synthetic lambda$onAutoTrackingStateChanged$0([I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->setAutoTrackingState([I)V

    return-void
.end method

.method private synthetic lambda$registerCameraSettingChangedListeners$1(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private synthetic lambda$unregisterCameraSettingChangedListeners$2(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private updateMultiRecordingLensType(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getDefaultValue(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mZoomLensArray:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mZoomLensArray:[I

    aget v3, v3, v2

    if-lt p1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eq v0, v1, :cond_3

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/BaseContract$View;->clear()V

    return-void
.end method

.method public enableAutoTracking(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->enableAutoTrackingView(Z)V

    return-void
.end method

.method public initPreviewListView([I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mZoomLensArray:[I

    return-void
.end method

.method public onAutoTrackingStateChanged([I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/a;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/a;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 0

    .line 1
    sget-object p2, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0, p3}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->refreshSelectedItem(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->updateMultiRecordingLensType(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onInitialize()V
    .locals 0

    return-void
.end method

.method public onItemSelectedChange(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->hideSelectedItem(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->showSelectedItem(I)V

    :goto_0
    return-void
.end method

.method public onMultiPreviewThumbnailManagerCreated(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mMultiPreviewThumbnailManager:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;

    return-void
.end method

.method public onPreviewListItemClick(Lcom/sec/android/app/camera/interfaces/CommandId;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v0

    invoke-static {p1, v0}, Lm5/d0;->d(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandInterface;)Lm5/q0;

    move-result-object p1

    invoke-virtual {p1}, Lm5/q0;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mItemClickListener:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter$ItemClickListener;

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter$ItemClickListener;->onItemClick()V

    :cond_0
    return p1
.end method

.method public onPreviewThumbnailPrepared(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->setPreviewData(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)V

    return-void
.end method

.method protected registerCameraSettingChangedListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_LENS_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/c;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/c;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setItemClickListener(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter$ItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mItemClickListener:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter$ItemClickListener;

    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mMultiPreviewThumbnailManager:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;->setMultiPreviewEventListener(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager$MultiPreviewEventListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mMultiPreviewThumbnailManager:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;->start()V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->registerCameraSettingChangedListeners()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->enableMultiPreviewItemListeners(Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mMultiPreviewThumbnailManager:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;->stop()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mMultiPreviewThumbnailManager:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager;->setMultiPreviewEventListener(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewThumbnailManager$MultiPreviewEventListener;)V

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->unregisterCameraSettingChangedListeners()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->enableMultiPreviewItemListeners(Z)V

    return-void
.end method

.method protected unregisterCameraSettingChangedListeners()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/b;-><init>(Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public updateMultiRecordingLayout(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/multirecording/multipreviewlist/MultiPreviewListContract$View;->updateMultiRecordingLayout(I)V

    return-void
.end method
