.class public Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;
.super Lcom/samsung/android/settings/search/provider/d;
.source "CustomIndexablesSearchProvider.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/search/provider/d;-><init>()V

    return-void
.end method

.method private addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/settings/search/provider/c;->b:[Ljava/lang/String;

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    aput-object p2, p0, v0

    .line 3
    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void
.end method

.method private createSiteMapPairs(ILjava/lang/String;)[Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/settings/search/provider/c;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x2

    .line 4
    aput-object p2, v0, p1

    const/4 p1, 0x1

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    const p2, 0x7f12055f

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    const/4 p0, 0x0

    const-string p1, "com.sec.android.app.camera.setting.CameraSettingActivity"

    .line 6
    aput-object p1, v0, p0

    :cond_0
    return-object v0
.end method

.method private createXmlResources(ILjava/lang/String;)[Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p0, Lcom/samsung/android/settings/search/provider/c;->a:[Ljava/lang/String;

    array-length p0, p0

    new-array p0, p0, [Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p0, v0

    const/4 p1, 0x2

    .line 3
    aput-object p2, p0, p1

    const/4 p1, 0x4

    const-string p2, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    .line 4
    aput-object p2, p0, p1

    const/4 p1, 0x5

    const-string p2, "com.sec.android.app.camera"

    .line 5
    aput-object p2, p0, p1

    const/4 p1, 0x6

    const-string p2, "com.sec.android.app.camera.SettingReceiverActivity"

    .line 6
    aput-object p2, p0, p1

    return-object p0
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private updateDependencyGroup(Landroid/database/MatrixCursor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f12024f

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120253

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120252

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f12024a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    return-void
.end method

.method private updateDuplicatedPreference(Landroid/database/MatrixCursor;)V
    .locals 1

    .line 1
    sget-object v0, Lu3/b;->J3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lu3/b;->Z0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lu3/b;->K3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 7
    :goto_1
    sget-object v0, Lu3/b;->a0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private updateFeaturedPreference(Landroid/database/MatrixCursor;)V
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->L2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, Lu3/b;->V4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 5
    :cond_1
    sget-object v0, Lu3/b;->X2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 7
    :cond_2
    sget-object v0, Lu3/b;->W1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lu3/b;->V2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 9
    :cond_3
    sget-object v0, Lu3/b;->a1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 11
    :cond_4
    sget-object v0, Lu3/b;->O3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 13
    :cond_5
    sget-object v0, Lu3/b;->X4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 14
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 15
    :cond_6
    sget-object v0, Lu3/b;->t4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_SUPER_STEADY:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 17
    :cond_7
    sget-object v0, Lu3/b;->M3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lu3/b;->z1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lu3/b;->L1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 18
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 19
    :cond_8
    sget-object v0, Lu3/b;->C0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    :cond_9
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_PORTRAIT_ZOOM:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 21
    :cond_a
    sget-object v0, Lu3/b;->f2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 22
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 23
    :cond_b
    sget-object v0, Lu3/b;->A3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 24
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 25
    :cond_c
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.snap.camerakit.plugin.v1"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 26
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SHOW_SNAPCHAT_LENSES_FUN_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 27
    :cond_d
    sget-object v0, Lu3/b;->W:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "advanced_recording_options"

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 29
    :cond_e
    sget-object v0, Lu3/b;->P1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 30
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 31
    :cond_f
    sget-object v0, Lu3/b;->w3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 32
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 33
    :cond_10
    sget-object v0, Lu3/b;->S1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 34
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HEVC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 35
    :cond_11
    sget-object v0, Lu3/b;->R1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 36
    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HEIF:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 37
    :cond_12
    sget-object v1, Lu3/b;->P2:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 38
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 39
    :cond_13
    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    const-string v0, "save_options"

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 41
    :cond_15
    sget-object v0, Lu3/b;->L4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 42
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FPS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 43
    :cond_16
    sget-object v0, Lu3/b;->s3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 44
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->RECORDING_360_BT_MIC:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 45
    :cond_17
    sget-object v0, Lu3/b;->i4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 46
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SPACE_SAVING_HIGH_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 47
    :cond_18
    sget-object v0, Lu3/b;->T4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 48
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->HIGH_BITRATE_VIDEO:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 49
    :cond_19
    sget-object v0, Lu3/b;->i2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 50
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->KEEP_HIGH_PICTURE_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    :cond_1a
    const-string v0, "customization_service"

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    return-void
.end method

.method private updateSupportedPreference(Landroid/database/MatrixCursor;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/PackageUtil;->isSamsungManagerVersionSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "contact_us"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->STORAGE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 5
    :cond_1
    sget-object v0, Lu3/b;->o3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lu3/b;->p3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    :cond_3
    const-string v0, "how_to_use"

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lu3/b;->C4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 10
    :cond_4
    sget-object v0, Lu3/b;->L0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.samsung.android.app.cameraassistant"

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string v0, "camera_assistant"

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/camera/util/StorageUtils;->setExternalSDStorageVolume(Landroid/content/Context;)V

    const/4 p0, 0x0

    return p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/samsung/android/settings/search/provider/c;->b:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120602

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->addRowValue(Landroid/database/MatrixCursor;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->updateDuplicatedPreference(Landroid/database/MatrixCursor;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->updateFeaturedPreference(Landroid/database/MatrixCursor;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->updateSupportedPreference(Landroid/database/MatrixCursor;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->updateDependencyGroup(Landroid/database/MatrixCursor;)V

    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    sget-object p1, Lu3/b;->f2:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/search/provider/c;->b:[Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120136

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 4
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120116

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x7

    const-string v1, "com.sec.android.app.camera.setting.SceneOptimizer"

    .line 7
    aput-object v1, v0, p0

    const/16 p0, 0x9

    const-string v1, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    .line 8
    aput-object v1, v0, p0

    const/16 p0, 0xa

    const-string v1, "com.sec.android.app.camera"

    .line 9
    aput-object v1, v0, p0

    const/16 p0, 0xb

    const-string v1, "com.sec.android.app.camera.SettingReceiverActivity"

    .line 10
    aput-object v1, v0, p0

    .line 11
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/samsung/android/settings/search/provider/c;->c:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const v1, 0x7f120116

    const-string v2, "com.sec.android.app.camera.setting.SceneOptimizer"

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createSiteMapPairs(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v1, 0x7f120115

    const-string v2, "com.sec.android.app.camera.setting.SaveOptions"

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createSiteMapPairs(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v1, 0x7f1200e0

    const-string v2, "com.sec.android.app.camera.setting.AdvancedRecordingOptions"

    .line 5
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createSiteMapPairs(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v1, 0x7f120119

    const-string v2, "com.sec.android.app.camera.setting.ShootingMethod"

    .line 6
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createSiteMapPairs(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v1, 0x7f120118

    const-string v2, "com.sec.android.app.camera.setting.SettingToKeep"

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createSiteMapPairs(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v1, 0x7f12012e

    const-string v2, "com.sec.android.app.camera.setting.Watermark"

    .line 8
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createSiteMapPairs(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/samsung/android/settings/search/provider/c;->a:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const v0, 0x7f150009

    .line 3
    const-class v1, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createXmlResources(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v0, 0x7f150008

    const-string v1, "com.sec.android.app.camera.setting.SaveOptions"

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createXmlResources(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const/high16 v0, 0x7f150000

    const-string v1, "com.sec.android.app.camera.setting.AdvancedRecordingOptions"

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createXmlResources(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v0, 0x7f15000b

    const-string v1, "com.sec.android.app.camera.setting.ShootingMethod"

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createXmlResources(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v0, 0x7f15000a

    const-string v1, "com.sec.android.app.camera.setting.SettingToKeep"

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createXmlResources(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    const v0, 0x7f150012

    const-string v1, "com.sec.android.app.camera.setting.Watermark"

    .line 8
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->createXmlResources(ILjava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1
.end method

.method public secQueryGetFingerprint()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/CustomIndexablesSearchProvider;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    .line 2
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
