.class Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;
.super Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;
.source "ResizableCameraSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResizableCameraSettings"


# instance fields
.field private mMultiWindowMode:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/setting/repository/SettingValueObserver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/setting/repository/SettingValueObserver;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->mMultiWindowMode:I

    const-string p1, "ResizableCameraSettings"

    const-string p2, "ResizableCameraSettings created"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->overrideValueGetterMap()V

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->overrideValueSetterMap()V

    return-void
.end method

.method public static synthetic I9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$3()I

    move-result v0

    return v0
.end method

.method public static synthetic J9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$8()I

    move-result v0

    return v0
.end method

.method public static synthetic K9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$17(I)V

    return-void
.end method

.method public static synthetic L9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$5()I

    move-result v0

    return v0
.end method

.method public static synthetic M9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$6()I

    move-result v0

    return v0
.end method

.method public static synthetic N9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$11(I)V

    return-void
.end method

.method public static synthetic O9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$0()I

    move-result v0

    return v0
.end method

.method public static synthetic P9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$4()I

    move-result v0

    return v0
.end method

.method public static synthetic Q9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$14(I)V

    return-void
.end method

.method public static synthetic R9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$13(I)V

    return-void
.end method

.method public static synthetic S9(Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->setMultiWindowMode(I)V

    return-void
.end method

.method public static synthetic T9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$12(I)V

    return-void
.end method

.method public static synthetic U9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$16(I)V

    return-void
.end method

.method public static synthetic V9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$10(I)V

    return-void
.end method

.method public static synthetic W9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$7()I

    move-result v0

    return v0
.end method

.method public static synthetic X9(Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;)I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->getMultiWindowMode()I

    move-result p0

    return p0
.end method

.method public static synthetic Y9()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$2()I

    move-result v0

    return v0
.end method

.method public static synthetic Z9(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$9(I)V

    return-void
.end method

.method public static synthetic aa(I)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueSetterMap$15(I)V

    return-void
.end method

.method public static synthetic ba()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->lambda$overrideValueGetterMap$1()I

    move-result v0

    return v0
.end method

.method private getMultiWindowMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->mMultiWindowMode:I

    return p0
.end method

.method private static synthetic lambda$overrideValueGetterMap$0()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$1()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$2()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$3()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$4()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$5()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$6()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$7()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueGetterMap$8()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static synthetic lambda$overrideValueSetterMap$10(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackPhotoBodyBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$11(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackVideoBeautyLevel : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$12(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackVideoBodyBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$13(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFloatingShutterButton : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$14(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFrontFlash : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$15(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFrontPhotoBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$16(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setFrontVideoBeautyLevel : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$17(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string/jumbo v0, "setQrCodeDetection : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$overrideValueSetterMap$9(I)V
    .locals 1

    const-string p0, "ResizableCameraSettings"

    const-string v0, "setBackPhotoBeautyType : ignore ResizableCamera case"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private overrideValueGetterMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/wq;->a:Lcom/sec/android/app/camera/setting/repository/wq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/ar;->a:Lcom/sec/android/app/camera/setting/repository/ar;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/zq;->a:Lcom/sec/android/app/camera/setting/repository/zq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/sq;->a:Lcom/sec/android/app/camera/setting/repository/sq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/xq;->a:Lcom/sec/android/app/camera/setting/repository/xq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/uq;->a:Lcom/sec/android/app/camera/setting/repository/uq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/vq;->a:Lcom/sec/android/app/camera/setting/repository/vq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/yq;->a:Lcom/sec/android/app/camera/setting/repository/yq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/hq;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/hq;-><init>(Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueGetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/sec/android/app/camera/setting/repository/tq;->a:Lcom/sec/android/app/camera/setting/repository/tq;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private overrideValueSetterMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/qq;->a:Lcom/sec/android/app/camera/setting/repository/qq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/pq;->a:Lcom/sec/android/app/camera/setting/repository/pq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/kq;->a:Lcom/sec/android/app/camera/setting/repository/kq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/nq;->a:Lcom/sec/android/app/camera/setting/repository/nq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/mq;->a:Lcom/sec/android/app/camera/setting/repository/mq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/lq;->a:Lcom/sec/android/app/camera/setting/repository/lq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/rq;->a:Lcom/sec/android/app/camera/setting/repository/rq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/sec/android/app/camera/setting/repository/oq;->a:Lcom/sec/android/app/camera/setting/repository/oq;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/setting/repository/iq;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/setting/repository/iq;-><init>(Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/repository/AbstractCameraSettings;->mSettingValueSetterMap:Ljava/util/EnumMap;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/sec/android/app/camera/setting/repository/jq;->a:Lcom/sec/android/app/camera/setting/repository/jq;

    invoke-virtual {p0, v0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setMultiWindowMode(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->mMultiWindowMode:I

    if-eq v0, p1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMultiWindowMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResizableCameraSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/setting/repository/ResizableCameraSettings;->mMultiWindowMode:I

    :cond_0
    return-void
.end method


# virtual methods
.method isResizableMode()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
