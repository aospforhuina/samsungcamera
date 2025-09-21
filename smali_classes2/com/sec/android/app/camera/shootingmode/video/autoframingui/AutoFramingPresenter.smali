.class public Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;
.super Ljava/lang/Object;
.source "AutoFramingPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$Presenter;
.implements Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;
.implements Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;
.implements Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final AUTO_FRAMING_ON_USAGE_GUIDE_MAX_DISPLAY_COUNT:I = 0x3

.field private static final AUTO_FRAMING_TRACKING_ON_USAGE_GUIDE_MAX_DISPLAY_COUNT:I = 0x3

.field private static final HELP_GUIDE_AUTO_FRAME_OFF:I = 0x0

.field private static final HELP_GUIDE_AUTO_FRAME_ON:I = 0x1

.field private static final KEY_AUTO_FRAMING_ON_USAGE_GUIDE_COUNT:Ljava/lang/String; = "auto_framing_on_usage_guide_count_key"

.field private static final KEY_AUTO_FRAMING_TRACKING_ON_USAGE_GUIDE_COUNT:Ljava/lang/String; = "auto_framing_tracking_on_usage_guide_count_key"

.field private static final TAG:Ljava/lang/String; = "AutoFramingPresenter"

.field private static final TOAST_GUIDE_LONG_TIMEOUT:I = 0x1388

.field private static final TOAST_GUIDE_SHORT_TIMEOUT:I = 0x7d0


# instance fields
.field private autoFramingState:I

.field private mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentToastGuideType:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

.field private final mHandler:Landroid/os/Handler;

.field private mIsShownAutoFramingOnUsageGuide:Z

.field private mIsShownTrackingOnUsageGuide:Z

.field private final mToastGuideHideRunnable:Ljava/lang/Runnable;

.field private final mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->autoFramingState:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownAutoFramingOnUsageGuide:Z

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownTrackingOnUsageGuide:Z

    .line 6
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/c;-><init>(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mToastGuideHideRunnable:Ljava/lang/Runnable;

    .line 7
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    .line 8
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 9
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->lambda$new$0()V

    return-void
.end method

.method private getAutoFramingToastBoldString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205e4

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1205e3

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getAutoFramingToastString(I)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->getHelpGuideString(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->getAutoFramingToastBoldString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    .line 3
    invoke-static {p1, v0, p0}, Lcom/sec/android/app/camera/util/TextUtil;->getStylizedText(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getGuideTime(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)J
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter$1;->$SwitchMap$com$sec$android$app$camera$shootingmode$video$autoframingui$AutoFramingContract$ToastGuideType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    const-wide/16 p0, 0x7d0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x1388

    return-wide p0
.end method

.method private getHelpGuideString(I)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f1205c0

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1205e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 3
    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1205c1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f1205e3

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideToastGuide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->hideToastGuide()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mToastGuideHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->resetTranslateIndicator()V

    return-void
.end method

.method private isAutoFramingOnUsageGuideEnabled()Z
    .locals 5

    const-string v0, "auto_framing_on_usage_guide_count_key"

    .line 1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->getGuideCount(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 2
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->setGuideCount(Ljava/lang/String;I)V

    return v3

    .line 3
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownAutoFramingOnUsageGuide:Z

    const/4 p0, 0x0

    return p0
.end method

.method private isAutoFramingTrackingOnUsageGuideEnabled()Z
    .locals 5

    const-string v0, "auto_framing_tracking_on_usage_guide_count_key"

    .line 1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->getGuideCount(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    .line 2
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->setGuideCount(Ljava/lang/String;I)V

    return v3

    .line 3
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownTrackingOnUsageGuide:Z

    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->hideToastGuide()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCurrentToastGuideType:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->TRACKING_ON:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showAutoFramingTrackingOnUsageGuide()V

    :cond_0
    return-void
.end method

.method private resetTranslateIndicator()V
    .locals 7

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->translateIndicator(IIIIII)V

    return-void
.end method

.method private showAutoFrameGuide(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->getAutoFramingToastString(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->AUTO_FRAMING_ON_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->AUTO_FRAMING_OFF_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private showAutoFramingOnUsageGuide()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownAutoFramingOnUsageGuide:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->autoFramingState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->AUTO_FRAMING_ON_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupVisible([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->isAutoFramingOnUsageGuideEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownAutoFramingOnUsageGuide:Z

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->AUTO_FRAMING_ON_USAGE:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showToastGuide(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)V

    return-void
.end method

.method private showAutoFramingTrackingGuide()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->isAutoFramingRectSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->TRACKING_OFF:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->TRACKING_ON:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    :goto_0
    const/4 v1, 0x3

    const-string v2, "auto_framing_on_usage_guide_count_key"

    .line 2
    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->setGuideCount(Ljava/lang/String;I)V

    .line 3
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showToastGuide(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)V

    return-void
.end method

.method private showAutoFramingTrackingOnUsageGuide()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownTrackingOnUsageGuide:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->autoFramingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    aput-object v4, v2, v3

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupVisible([Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->isAutoFramingTrackingOnUsageGuideEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 5
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownTrackingOnUsageGuide:Z

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->TRACKING_ON_USAGE:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showToastGuide(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)V

    return-void
.end method

.method private showToastGuide(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCurrentToastGuideType:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCurrentToastGuideType:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->RECORDING_START:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->showToastGuide(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mToastGuideHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mToastGuideHideRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->getGuideTime(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->translateIndicator()V

    return-void
.end method

.method private translateIndicator()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->getToastSize()Landroid/util/Size;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 4
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07041d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int v4, p0, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->translateIndicator(IIIIII)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->resetTranslateIndicator()V

    :goto_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method getGuideCount(Ljava/lang/String;)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public onAutoFramingInfoChanged(I[Landroid/graphics/Rect;)V
    .locals 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->isAutoFramingRectSelected()Z

    move-result v1

    if-eq v1, v0, :cond_1

    xor-int/lit8 v1, v0, 0x1

    const-string v2, "0239"

    .line 2
    invoke-static {v2, v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Z)V

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hideAllPopup()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showAutoFramingTrackingGuide()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showAutoFramingOnUsageGuide()V

    .line 6
    :cond_2
    :goto_1
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->autoFramingState:I

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-interface {p1, v0, p2, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->updateAutoFramingRect(Z[Landroid/graphics/Rect;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAutoFramingTrackingLost()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->autoFramingState:I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->hideAutoFramingRect()V

    return-void
.end method

.method public onButtonClicked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_AUTO_FRAMING_ENABLED:Lcom/sec/android/app/camera/interfaces/CommandId;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/interfaces/CommandId;->VIDEO_AUTO_FRAMING_DISABLED:Lcom/sec/android/app/camera/interfaces/CommandId;

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object p0

    invoke-static {p1, p0}, Lm5/d0;->d(Lcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CommandInterface;)Lm5/q0;

    move-result-object p0

    invoke-virtual {p0}, Lm5/q0;->a()Z

    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", prevValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", nextValue="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutoFramingPresenter"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "onCameraSettingChanged : Returned because shooting mode is not activated"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    sget-object p2, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    if-ne p3, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showAutoFrameGuide(I)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->hideToastGuide()V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->setButtonSelected(Z)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->startButtonClickAnimation(Z)V

    .line 9
    sget-object p1, Lu3/b;->N4:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->enableAutoFramingRectView(Z)V

    if-eqz p2, :cond_3

    .line 11
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->resetManualTrackingRegion()V

    goto :goto_1

    .line 12
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->cancelAnimation()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->N4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create(II)Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->setManualTrackingRegion(Landroid/graphics/Point;)V

    :cond_2
    return v1
.end method

.method public onManagerCreated(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

    return-void
.end method

.method public onPreviewAnimationViewSizeChanged(Landroid/graphics/Rect;ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->updateButtonBackground(I)V

    return-void
.end method

.method public onRecordingGuideHideRequested()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->hideToastGuide()V

    return-void
.end method

.method public onRecordingGuideShowRequested()V
    .locals 1

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;->RECORDING_START:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showToastGuide(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$ToastGuideType;)V

    return-void
.end method

.method public onVisibilityChanged(Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter$1;->$SwitchMap$com$sec$android$app$camera$interfaces$ViewVisibilityEventManager$ViewId:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->hideToastGuide()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 3
    iget-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mIsShownAutoFramingOnUsageGuide:Z

    if-nez p1, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->showAutoFramingOnUsageGuide()V

    :cond_2
    :goto_0
    return-void
.end method

.method setGuideCount(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->setButtonSelected(Z)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v3, v0, v2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->initializeButton(IZ)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->enableAutoFramingRectView(Z)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->registerPreviewAnimationViewSizeChangeListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_AUTO_FRAMING_ON_SETTING:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v2, v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->registerListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->setAutoFramingEventListener(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;)V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->start()V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->unregisterPreviewAnimationViewSizeChangeListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_AUTO_FRAMING_ON_SETTING:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_ZOOM_RESTRICTION:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->unregisterListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->stop()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mAutoFramingManager:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager;->setAutoFramingEventListener(Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingManager$AutoFramingEventListener;)V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->hideToastGuide()V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->enableAutoFramingRectView(Z)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingContract$View;->cancelAnimation()V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/video/autoframingui/AutoFramingPresenter;->resetTranslateIndicator()V

    return-void
.end method
