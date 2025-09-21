.class public Lcom/sec/android/app/camera/provider/CameraTemperatureManager;
.super Ljava/lang/Object;
.source "CameraTemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;,
        Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;
    }
.end annotation


# static fields
.field private static final MSG_FLASH_TEMPERATURE_CHECK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraTemperatureManager"

.field private static mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

.field private static final mInstanceLock:Ljava/lang/Object;

.field private static mInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraContext;",
            "Lcom/sec/android/app/camera/provider/CameraTemperatureManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBatteryLevel:I

.field private mBatteryTemperature:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

.field private mIsFlashDisabledByOTG:Z

.field private mIsFlashTemperatureHighToUse:Z

.field private mIsTemperatureHighToRecordSeamlessZoom:Z

.field private final mLowBatteryWarningLevel:I

.field private mOverheatLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstanceLock:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstances:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemperature:I

    const/16 v1, 0x64

    .line 3
    iput v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryLevel:I

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mOverheatLevel:I

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    .line 8
    new-instance v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;-><init>(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;Lcom/sec/android/app/camera/provider/s;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    .line 9
    new-instance v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$1;-><init>(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 11
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_lowBatteryWarningLevel"

    const-string v2, "integer"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mLowBatteryWarningLevel:I

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/provider/CameraTemperatureManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleSIOPLevelChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static clear()V
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstances:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    invoke-interface {v1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    invoke-direct {v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->clearContext()V

    const/4 v1, 0x0

    .line 4
    sput-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method private getFlashRestrictionType()Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->LOW_BATTERY:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-object p0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isBatteryTemperatureLowToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->TOO_COLD:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-object p0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    if-eqz v0, :cond_2

    .line 6
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->TOO_HOT:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-object p0

    .line 7
    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    if-eqz p0, :cond_3

    .line 8
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->OTG_CONNECTED:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-object p0

    .line 9
    :cond_3
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->NONE:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    return-object p0
.end method

.method public static getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    sput-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    sput-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    .line 4
    sget-object v2, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstances:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mInstance:Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleCameraLimit()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;->OVERHEAT:Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->isCameraDialogVisible(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f120662

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1205b6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120201

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 5
    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 6
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraDialogManager()Lcom/sec/android/app/camera/interfaces/CameraDialogManager;

    move-result-object v3

    invoke-interface {v3, v1, v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraDialogManager;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/android/app/camera/provider/r;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/provider/r;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleFlashLimit()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isFlashRestrictionRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFlashType;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_TAKE_RECORDING_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v5, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 10
    iget-object v3, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 11
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CommandId;->SHOOTING_MODE_MACRO:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/util/CameraShootingMode;->isSupported(Lcom/sec/android/app/camera/interfaces/CommandId;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    .line 12
    iget-object v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_MACRO_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_2
    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->showFlashRestrictionToast()V

    goto :goto_2

    .line 14
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private handleOverheatLevel(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mOverheatLevel:I

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.OVERHEAT_LEVEL_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mOverheatLevel:I

    :cond_1
    return-void
.end method

.method private handleRecordingSeamlessZoomLimit(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    if-eq v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "camera.action.LIMIT_RECORDING_SEAMLESS_ZOOM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/provider/CameraLocalBroadcastManager;->send(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    :cond_0
    return-void
.end method

.method private handleSIOPLevelChanged(Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "camera_start_disable"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "otg_flash_led_disable"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "dual_camera_disable"

    .line 4
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "camera_recording_overheat_level"

    .line 5
    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "camera_uhd_video_low_power_mode"

    .line 6
    invoke-virtual {p1, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSIOPLevelChanged : camera_start_disable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",otg_flash_led_disable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",seamlessZoomDisable="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",overheatLevel = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CameraTemperatureManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleCameraLimit()V

    return-void

    .line 9
    :cond_1
    iget-boolean p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    if-eq p1, v2, :cond_2

    .line 10
    iput-boolean v2, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    .line 11
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleFlashLimit()V

    .line 12
    :cond_2
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleRecordingSeamlessZoomLimit(Z)V

    .line 13
    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleOverheatLevel(I)V

    return-void
.end method

.method private isBatteryTemperatureLowToUseFlash()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemperature:I

    const/16 v0, -0x32

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isFlashRestrictionRequired()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isLowBatteryStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->isBatteryTemperatureLowToUseFlash()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashDisabledByOTG:Z

    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isLowBatteryStatus()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryLevel:I

    iget p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mLowBatteryWarningLevel:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerReceiver()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showFlashRestrictionToast(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->FLASH_RESTRICTION:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;)Z

    :goto_0
    return-void
.end method

.method private startTemperatureCheckTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private stopTemperatureCheckTimer()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mHandler:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$TemperatureManagerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterReceiver : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CameraTemperatureManager"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method checkFlashTemperature()V
    .locals 4

    .line 1
    sget-object v0, Lu3/b;->A4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lu3/b;->t1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkFlashTemperature : flashTemperature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraTemperatureManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v2, Lu3/h;->t:Lu3/h;

    invoke-static {v2}, Lu3/d;->b(Lu3/h;)I

    move-result v2

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    .line 7
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    if-eq v0, v1, :cond_3

    .line 8
    iput-boolean v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsFlashTemperatureHighToUse:Z

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleFlashLimit()V

    :cond_3
    return-void
.end method

.method public getOverheatLevel()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mOverheatLevel:I

    return p0
.end method

.method protected handleBatteryChanged(Landroid/content/Intent;)V
    .locals 8

    const-string/jumbo v0, "status"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    const/16 v3, 0x64

    .line 2
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    .line 3
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "plugged"

    const/4 v5, 0x0

    .line 4
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    if-ne v4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v1

    :goto_1
    const-string/jumbo v7, "temperature"

    .line 5
    invoke-virtual {p1, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemperature:I

    mul-int/lit8 p1, v3, 0x64

    .line 6
    div-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryLevel:I

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBatteryChanged : Level = "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Status = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", battPlugged = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", batteryTemperature = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemperature:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", batteryLevel = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryLevel:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isCharging = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraTemperatureManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p1, Lu3/b;->q3:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemperature:I

    const/16 v0, -0x78

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v0, Lu3/h;->M:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    int-to-long v0, v0

    invoke-interface {p1, v5, v0, v1, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->enableQrCodeDetection(ZJZ)V

    goto :goto_2

    .line 12
    :cond_2
    iget p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mBatteryTemperature:I

    const/16 v0, -0x46

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1, v0, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 14
    iget-object p1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v0, Lu3/h;->M:Lu3/h;

    invoke-static {v0}, Lu3/d;->b(Lu3/h;)I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3, v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->enableQrCodeDetection(ZJZ)V

    .line 15
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->handleFlashLimit()V

    return-void
.end method

.method public isTemperatureHighToDualRecord()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mIsTemperatureHighToRecordSeamlessZoom:Z

    return p0
.end method

.method public showFlashRestrictionToast()V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->showFlashRestrictionToast(Lcom/sec/android/app/camera/interfaces/CommandId;)V

    return-void
.end method

.method public showFlashRestrictionToast(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QUICK_SETTING:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->hidePopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getFlashRestrictionType()Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->NONE:Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;

    if-ne v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->getStringId(Z)I

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->showFlashRestrictionToast(ZI)V

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager$FlashRestrictionType;->getSaLoggingId()Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/android/app/camera/logging/SaLogEventIdMap;->getEventIdByCommandId(Lcom/sec/android/app/camera/interfaces/CommandId;)Lcom/sec/android/app/camera/logging/SaLogEventId;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSaLog(Lcom/sec/android/app/camera/logging/SaLogEventId;Lcom/sec/android/app/camera/logging/SaLogEventId;)V

    :cond_2
    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "CameraTemperatureManager"

    const-string/jumbo v1, "start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->registerReceiver()V

    .line 3
    sget-object v0, Lu3/b;->t1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 4
    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->startTemperatureCheckTimer()V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v0, Lu3/b;->A4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    .line 7
    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->startTemperatureCheckTimer()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "CameraTemperatureManager"

    const-string/jumbo v1, "stop"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->unregisterReceiver()V

    .line 3
    sget-object v0, Lu3/b;->A4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lu3/b;->t1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->stopTemperatureCheckTimer()V

    :cond_1
    return-void
.end method
