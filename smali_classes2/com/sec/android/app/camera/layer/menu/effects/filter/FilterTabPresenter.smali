.class public Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;
.super Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;
.source "FilterTabPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;
.implements Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter<",
        "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;",
        ">;",
        "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$Presenter;",
        "Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterTabPresenter"


# instance fields
.field private final mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

.field private mDeleteItem:Ln5/l;

.field private final mFilterListData:Lx5/a;

.field private final mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

.field private mIsNewFilterInstalled:Z

.field private final mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageInstaller:Landroid/content/pm/PackageInstaller;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;Lcom/sec/android/app/camera/interfaces/CommandId;)V

    .line 2
    new-instance p1, Lx5/a;

    invoke-direct {p1}, Lx5/a;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterListData:Lx5/a;

    .line 3
    new-instance p1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$1;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4
    new-instance p1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter$2;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

    .line 5
    new-instance p1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    invoke-direct {p1, p3}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/manager/LiveThumbnailPreviewManager;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->initMap()V

    .line 7
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->registerLocalBroadcast()V

    return-void
.end method

.method public static synthetic a(Ln5/l;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->lambda$selectNextItem$1(Ln5/l;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsNeedToRefreshFilterData:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/interfaces/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method public static synthetic b(Ln5/l;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->lambda$initializeSelectedItem$0(Ln5/l;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mIsNewFilterInstalled:Z

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->onDeleteButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    return-void
.end method

.method private deleteItem()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->isServiceTerminatedFilter(Ln5/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_SERVICE_TERMINATED_FILTER_ALERT_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->selectNextItem(Ln5/l;)V

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->j()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->F()V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->updateList(I)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->j()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->j()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->F()V

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->updateList(I)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.provider.filterprovider.DELETE_MYFILTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.provider.filterprovider"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v1}, Ln5/l;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v2}, Ln5/l;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_5
    :goto_0
    return-void
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->refreshFilterData(Z)V

    return-void
.end method

.method private executeFilterDownload()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FILTER_DOWNLOAD:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v1

    const/16 v2, 0x2711

    invoke-static {v0, v2, v1}, Lm5/d0;->e(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lm5/q0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v1, v3

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz v1, :cond_1

    .line 4
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_VIDEO_DOWNLOAD_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_VIDEO_DOWNLOAD_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 5
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_FRONT_PHOTO_DOWNLOAD_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_BACK_PHOTO_DOWNLOAD_BUTTON:Lcom/sec/android/app/camera/logging/SaLogEventId;

    :goto_1
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    .line 6
    :goto_2
    invoke-virtual {v0}, Lm5/q0;->a()Z

    move-result p0

    return p0

    :cond_4
    return v1
.end method

.method private findDeleteAndNextItem(Ln5/l;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p0, p0, -0x1

    if-ge p1, p0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method private getPreviewSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->getRepresentativePreviewSize(Lcom/sec/android/app/camera/interfaces/AspectRatio;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private initMap()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterSettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterSettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterSettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_MACRO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_MACRO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterSettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterSettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    sget-object v6, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterIntensitySettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterIntensitySettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v3, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterIntensitySettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_MACRO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v4, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterIntensitySettingKeyMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v5, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterIntensitySettingKeyMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v6, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeSelectedItem()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->findInitialItem(I)I

    move-result v1

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/l;

    .line 3
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    sget-object v4, Lcom/sec/android/app/camera/layer/menu/effects/filter/c;->a:Lcom/sec/android/app/camera/layer/menu/effects/filter/c;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v2, v3}, Ln5/l;->G(Z)V

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v3, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v3}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->updateList()V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v3, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    sget-object v4, Lu3/b;->b:Lu3/b;

    invoke-static {v4}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070165

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v4

    :goto_0
    invoke-virtual {v2}, Ln5/l;->q()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v4, v5}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->scrollToInitPosition(IILjava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ln5/l;->s()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/BaseEffectTabContract$View;->showSlider()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->hideSlider(Z)V

    .line 10
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->showAddingFiltersButtonGuidePopup()V

    :goto_1
    return-void
.end method

.method private isServiceTerminatedFilter(Ln5/l;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ln5/l;->j()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ln5/l;->r()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Seerslab"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Ln5/l;->r()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Seerslab Inc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$initializeSelectedItem$0(Ln5/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln5/l;->G(Z)V

    return-void
.end method

.method private static synthetic lambda$selectNextItem$1(Ln5/l;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ln5/l;->G(Z)V

    return-void
.end method

.method private onDeleteButtonClicked(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_FILTER_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    if-ne v0, p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->deleteItem()V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ln5/l;->j()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 5
    sget-object p0, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_DELETE_DIALOG_DELETE:Lcom/sec/android/app/camera/logging/SaLogEventId;

    const-string p1, "User created"

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/logging/SaLogEventId;->FILTER_TAB_DELETE_DIALOG_DELETE:Lcom/sec/android/app/camera/logging/SaLogEventId;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {p0}, Ln5/l;->o()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_SERVICE_TERMINATED_FILTER_ALERT_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    if-ne v0, p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p1}, Ln5/l;->F()V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->updateList(I)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {p1}, Ln5/l;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->uninstallPackage(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private refreshFilterData(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsRunning:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsNeedToRefreshFilterData:Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->stop()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterListData:Lx5/a;

    invoke-virtual {v0}, Lx5/a;->e()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->updateAllFilterList()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->isListVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->updateList()V

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast p1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->getSelectedItemPosition()I

    move-result v0

    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->getSelectedItemTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->scrollToInitPosition(IILjava/lang/String;)V

    .line 9
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->startFilterThumbnailController()V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsNeedToRefreshFilterData:Z

    :goto_1
    return-void
.end method

.method private registerLocalBroadcast()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.FILTER_INSTALLED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.FILTER_UNINSTALLED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.FILTER_LOADED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.FILTER_ORDER_CHANGED"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private selectNextItem(Ln5/l;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->findDeleteAndNextItem(Ln5/l;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/l;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    sget-object v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/b;->a:Lcom/sec/android/app/camera/layer/menu/effects/filter/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Ln5/l;->G(Z)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/FilterManager;->getFilterSettingKey()Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    move-result-object p0

    invoke-virtual {p1}, Ln5/l;->l()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method private showAddingFiltersButtonGuidePopup()V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->z2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ADDING_FILTERS_BUTTON_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->getPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 6
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->setPopupCount(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;I)V

    .line 7
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->setAllowToShowAgain(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private showEditingFiltersDownloadGuidePopup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->EDIT_FILTERS_DOWNLOAD_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->isPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Z)V

    :cond_1
    return-void
.end method

.method private startFilterThumbnailController()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 3
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 5
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v4

    .line 6
    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->start(ILandroid/util/Size;I)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->updateChildBackground(I)V

    return-void
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0xc000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageInstaller;->uninstall(Ljava/lang/String;Landroid/content/IntentSender;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "deleteItem: uninstall failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FilterTabPresenter"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterLocalBroadcast()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAllFilterList()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/l;

    invoke-virtual {v0}, Ln5/l;->l()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mSavedFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterListData:Lx5/a;

    invoke-virtual {v3}, Lx5/a;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/layer/menu/effects/filter/d;->a:Lcom/sec/android/app/camera/layer/menu/effects/filter/d;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/layer/menu/effects/filter/a;

    invoke-direct {v4, v2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/a;-><init>(Ljava/util/ArrayList;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->addInvisiblePlaceHolderItems(Ljava/util/ArrayList;)V

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->addInvisiblePlaceHolderItems(Ljava/util/ArrayList;)V

    .line 11
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mSavedFilterList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->updateAllFilterList(Ljava/util/ArrayList;)V

    if-nez v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/l;

    invoke-virtual {p0, v1}, Ln5/l;->G(Z)V

    goto :goto_3

    :cond_1
    move v2, v1

    .line 14
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    if-ge v2, v3, :cond_3

    .line 15
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln5/l;

    invoke-virtual {v3}, Ln5/l;->l()I

    move-result v3

    if-ne v3, v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_2
    if-ne v2, v4, :cond_4

    .line 16
    invoke-virtual {p0, v4, v1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->executeFilterCommand(II)V

    goto :goto_3

    .line 17
    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/l;

    invoke-virtual {p0, v1}, Ln5/l;->G(Z)V

    :goto_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mSavedFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterListData:Lx5/a;

    invoke-virtual {v0}, Lx5/a;->a()V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->unregisterLocalBroadcast()V

    return-void
.end method

.method public handlePreviewSwipeEvent(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->getSelectedItemPosition()I

    move-result v0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    sget-object v1, Lu3/b;->b:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->setSmoothScrollToPosition(I)V

    return-void
.end method

.method protected isDeletableFilterExist()Z
    .locals 5

    const/4 v0, 0x1

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln5/l;

    .line 3
    invoke-virtual {v2}, Ln5/l;->k()Lcom/sec/android/app/camera/interfaces/CommandId;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CommandId;->FILTER_NONE:Lcom/sec/android/app/camera/interfaces/CommandId;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v2}, Ln5/l;->u()Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public onAddingFiltersButtonClick()Z
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->z2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;->isAddingFiltersMenuOpened()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v3

    .line 5
    invoke-static {v0, v3, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getAddingFiltersButtonEventId(IZZ)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/logging/SaLogDetail;->ACTION_CLOSE_BUTTON:Lcom/sec/android/app/camera/logging/SaLogDetail;

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogDetail;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 7
    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v3

    .line 8
    invoke-static {v0, v3, v2}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getAddingFiltersButtonEventId(IZZ)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;->onAddingFiltersButtonClicked()V

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->ADDING_FILTERS_BUTTON_TIPS:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->setPopupEnabled(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Z)V

    return v2

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->executeFilterDownload()Z

    move-result p0

    return p0
.end method

.method public onBackKeyUp()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;->closeAddingFiltersMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 3
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getAddingFiltersButtonEventId(IZZ)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogDetail;->ACTION_BACK_KEY:Lcom/sec/android/app/camera/logging/SaLogDetail;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogDetail;)V

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->onBackKeyUp()Z

    move-result p0

    return p0
.end method

.method public onCreateMyFilterButtonClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->CREATE_MY_FILTER:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCommandReceiver()Lcom/sec/android/app/camera/interfaces/CommandInterface;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lm5/d0;->e(Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/interfaces/CommandInterface;)Lm5/q0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getMyFilterTabInfoEventId(IZ)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lm5/q0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->setKeyScreenLayerVisibility(Z)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/FilterManager;->storeCurrentFilterId()V

    :cond_0
    return-void
.end method

.method public onEffectThumbnailPreviewStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;->showFilterList()V

    return-void
.end method

.method public onFilterDownloadButtonClick()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->executeFilterDownload()Z

    return-void
.end method

.method public onInitialize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    new-instance v1, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->setAdapter(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;)V

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isOwner()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {p0, v4}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;->setDownloadButtonDim(Z)V

    :cond_0
    return-void
.end method

.method public onItemAttached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/l;

    invoke-virtual {v0}, Ln5/l;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln5/l;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->updateFilter(Ln5/l;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->addLiveThumbnailObserver(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V

    :cond_0
    return-void
.end method

.method public onItemDeleteClick(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/l;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    .line 3
    invoke-virtual {p1}, Ln5/l;->s()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "camera.action.FILTER_UNINSTALL_REQUESTED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {v0}, Ln5/l;->l()I

    move-result v0

    const-string/jumbo v1, "unInstalledFilterId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->REMOVE_FILTER_DLG:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 10
    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mDeleteItem:Ln5/l;

    invoke-virtual {p0}, Ln5/l;->q()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-interface {p1, v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onItemDetached(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCurrentFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/l;

    invoke-virtual {v0}, Ln5/l;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->removeLiveThumbnailObserver(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;I)V

    :cond_0
    return-void
.end method

.method public onItemDragEnd(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->onItemDragEnd(I)V

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mIsNewFilterInstalled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->refreshFilterData(Z)V

    .line 4
    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mIsNewFilterInstalled:Z

    :cond_0
    return-void
.end method

.method public onItemMove(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->onItemMove(II)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->notifyItemMoved(II)V

    return-void
.end method

.method public onStopSwipeTouch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getSwipeListEventId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getAdjustSliderEventId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    return-void
.end method

.method public onTouchUpAddingFiltersMenuClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, v1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getAddingFiltersButtonEventId(IZZ)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/logging/SaLogDetail;->ACTION_TOUCH_PREVIEW_AREA:Lcom/sec/android/app/camera/logging/SaLogDetail;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogDetail;)V

    return-void
.end method

.method protected saveFilterOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/camera/interfaces/FilterManager;->saveOrder(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "camera.action.FILTER_ORDER_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public start()V
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->start()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsRunning:Z

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->registerCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->setThumbnailPreviewStartedListener(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/FilterManager;->isFilterProviderDbVersionChanged(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/FilterManager;->resetFilterSettings(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getFilterManager()Lcom/sec/android/app/camera/interfaces/FilterManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/FilterManager;->restoreCurrentFilterId()V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    const v2, 0x7f1202b6

    const v3, 0x7f1202b7

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 9
    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v6, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterIntensitySettingKeyMap:Ljava/util/EnumMap;

    iget-object v7, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mFilterSettingKeyMap:Ljava/util/EnumMap;

    iget-object v8, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCommandId:Lcom/sec/android/app/camera/interfaces/CommandId;

    .line 10
    invoke-virtual {v7, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v5

    .line 11
    invoke-interface {v0, v2, v3, v4, v5}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->initializeSlider(IIII)V

    .line 12
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsNeedToRefreshFilterData:Z

    if-eqz v0, :cond_1

    .line 13
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->refreshFilterData(Z)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterListData:Lx5/a;

    invoke-virtual {v0}, Lx5/a;->e()V

    .line 15
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->updateAllFilterList()V

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->startFilterThumbnailController()V

    .line 17
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    sget-object v2, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;->NORMAL:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->setMode(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$ListMode;)V

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->initializeSelectedItem()V

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "request_download_filter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->showEditingFiltersDownloadGuidePopup()V

    .line 21
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->stop()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mIsRunning:Z

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mCameraDialogListener:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->unregisterCameraDialogListener(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$CameraDialogListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->stop()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabPresenter;->mFilterThumbnailController:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController;->setThumbnailPreviewStartedListener(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterThumbnailPreviewListener;)V

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast v0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;->hideAddingFiltersMenu()V

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabPresenter;->mView:Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterTabContract$View;

    check-cast p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabContract$View;->hideFilterList()V

    return-void
.end method
