.class Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;
.super Li4/a$a;
.source "BixbyCallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/executor/BixbyCallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-direct {p0}, Li4/a$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;Ln2/n;Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->lambda$onAppStateRequested$0(Ln2/n;Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    return-void
.end method

.method public static synthetic b(Ln2/n;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->lambda$onAppStateRequested$1(Ln2/n;Lcom/sec/android/app/camera/interfaces/Engine;)V

    return-void
.end method

.method public static synthetic c(Ln2/n;Landroid/content/Context;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->lambda$onAppStateRequested$2(Ln2/n;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onAppStateRequested$0(Ln2/n;Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->e(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/executor/NlgErrorHelper;->checkFlash(Lcom/sec/android/app/camera/interfaces/CameraContext;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "isUsingFlashAvailable"

    invoke-virtual {p1, v3, v0}, Ln2/n;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2
    invoke-interface {p2, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isRecordingAvailable(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "isRecordingAvailable"

    invoke-virtual {p1, v3, v0}, Ln2/n;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3
    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCaptureAvailable()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isCaptureAvailable"

    invoke-virtual {p1, v0, p2}, Ln2/n;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/util/Util;->isKNOXMode()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {p2}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->c(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result p2

    if-nez p2, :cond_1

    move p2, v2

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isChangeShootingModeAvailable"

    invoke-virtual {p1, v0, p2}, Ln2/n;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {p2}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->c(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isLaunchSettingAvailable"

    invoke-virtual {p1, v0, p2}, Ln2/n;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    iget-object p2, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {p2}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->c(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    if-ne p2, v2, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isFrontCamera"

    invoke-virtual {p1, v0, p2}, Ln2/n;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->c(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShootingModeForSwitchCamera()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, " "

    const-string v0, "_"

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "oppositeMode"

    invoke-virtual {p1, p2, p0}, Ln2/n;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onAppStateRequested$1(Ln2/n;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/Engine;->getMaxZoomLevel()I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "getMaxZoomStep"

    invoke-virtual {p0, v0, p1}, Ln2/n;->k(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method private static synthetic lambda$onAppStateRequested$2(Ln2/n;Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v0, "."

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ver"

    .line 3
    invoke-virtual {p0, v0, p1}, Ln2/n;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BixbyCallbackManager"

    const-string p1, "Unable to get the camera version"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getUsedPermissionsWhenAppStateRequested()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.CAMERA"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.RECORD_AUDIO"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_MEDIA_IMAGES"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->d(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/Util;->toBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 8
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public onAppStateRequested()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ln2/n;

    invoke-direct {v0}, Ln2/n;-><init>()V

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "viv.cameraApp.AppContext"

    .line 2
    invoke-virtual {v0, v1, v2}, Ln2/n;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ln2/h;

    invoke-direct {v1}, Ln2/h;-><init>()V

    .line 4
    new-instance v2, Ln2/n;

    invoke-direct {v2}, Ln2/n;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->b(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "isCameraActivity"

    invoke-virtual {v2, v4, v3}, Ln2/n;->j(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->e(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/CameraShootingMode;->getShootingModeNameByModeId(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    const-string v5, "_"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mode"

    invoke-virtual {v2, v4, v3}, Ln2/n;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->b(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/executor/i0;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/app/camera/executor/i0;-><init>(Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;Ln2/n;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {v3}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->f(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/executor/k0;

    invoke-direct {v4, v2}, Lcom/sec/android/app/camera/executor/k0;-><init>(Ln2/n;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->this$0:Lcom/sec/android/app/camera/executor/BixbyCallbackManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager;->d(Lcom/sec/android/app/camera/executor/BixbyCallbackManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v3, Lcom/sec/android/app/camera/executor/j0;

    invoke-direct {v3, v2}, Lcom/sec/android/app/camera/executor/j0;-><init>(Ln2/n;)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 10
    invoke-virtual {v1, v2}, Ln2/h;->i(Ln2/k;)V

    const-string/jumbo p0, "values"

    .line 11
    invoke-virtual {v0, p0, v1}, Ln2/n;->i(Ljava/lang/String;Ln2/k;)V

    .line 12
    new-instance p0, Ln2/h;

    invoke-direct {p0}, Ln2/h;-><init>()V

    .line 13
    invoke-virtual {p0, v0}, Ln2/h;->i(Ln2/k;)V

    .line 14
    new-instance v0, Ln2/n;

    invoke-direct {v0}, Ln2/n;-><init>()V

    const-string v1, "concepts"

    .line 15
    invoke-virtual {v0, v1, p0}, Ln2/n;->i(Ljava/lang/String;Ln2/k;)V

    .line 16
    invoke-virtual {v0}, Ln2/k;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
