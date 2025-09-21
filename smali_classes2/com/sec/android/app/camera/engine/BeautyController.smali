.class Lcom/sec/android/app/camera/engine/BeautyController;
.super Ljava/lang/Object;
.source "BeautyController.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BeautyController"


# instance fields
.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mSettingConsumerMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 4
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->initializeSettingConsumerMap()V

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$17(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic B(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$setVideoBokehSkinToneLevel$47(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic C(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$setLiveFocusSkinColorLevel$43(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic D(Lcom/sec/android/app/camera/engine/BeautyController;[ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$setPhotoBodyBeautyLevel$45([ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic E(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$unregisterCameraSettingChangedListener$49(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$6(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic G(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$9(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic H([ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$setVideoBodyBeautyLevel$46([ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$16(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic J(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$29(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic K(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$15(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic L(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$30(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic M(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$26(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic N(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$12(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic O(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$31(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic P(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$11(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic Q(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$41(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic R(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$25(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic S(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$setVideoSkinToneLevel$48(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$23(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic U(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$5(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic V(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$35(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic W(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$8(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic X(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$10(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$registerCameraSettingChangedListener$42(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$32(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$40(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$33(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$24(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method private enableBeautyBypass(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->y:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private enableSmartBeauty(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->O:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$setDualBokehSkinToneLevel$44(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;ILjava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$onCameraSettingChanged$0(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;ILjava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$36(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$14(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method private initializePhotoBeauty()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->DUAL_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne v3, v4, :cond_3

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/BeautyController;->setDualBokehSkinToneLevel(I)V

    .line 5
    sget-object v1, Lu3/b;->w0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_12

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_2
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setLiveFocusSkinColorLevel(I)V

    goto/16 :goto_a

    .line 7
    :cond_3
    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->SINGLE_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne v3, v4, :cond_8

    if-eqz v0, :cond_6

    .line 8
    sget-object v1, Lu3/b;->L3:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V3_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    goto :goto_3

    .line 10
    :cond_4
    sget-object v1, Lu3/b;->K3:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    goto :goto_3

    .line 12
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    .line 13
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/BeautyController;->setSkinToneLevel(I)V

    goto :goto_4

    .line 14
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_LITE_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/BeautyController;->setSkinToneLevel(I)V

    .line 15
    :goto_4
    sget-object v1, Lu3/b;->w0:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 16
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/samsung/android/camera/core2/MakerPrivateKey;->g:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_LITE_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_5
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_8
    if-eqz v0, :cond_d

    .line 17
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPrivateKey;->z:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    sget-object v4, Lu3/b;->y4:Lu3/b;

    invoke-static {v4}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lu3/b;->L3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V3_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    goto :goto_6

    .line 20
    :cond_9
    sget-object v0, Lu3/b;->K3:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    goto :goto_6

    .line 22
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPrivateKey;->s:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/util/MakerParameter;->getSelfieToneBeautyMode(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    .line 23
    :goto_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_7

    :cond_b
    move v0, v1

    :goto_7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_c

    move v1, v2

    :cond_c
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/BeautyController;->enableSmartBeauty(Z)V

    .line 25
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/e3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/e3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 26
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    goto :goto_a

    .line 27
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/samsung/android/camera/core2/MakerPrivateKey;->z:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    sget-object v4, Lu3/b;->y4:Lu3/b;

    invoke-static {v4}, Lu3/d;->e(Lu3/b;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    goto :goto_8

    :cond_e
    move v4, v1

    :goto_8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    .line 28
    sget-object v0, Lu3/b;->z0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 29
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    .line 30
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_10

    move v0, v2

    goto :goto_9

    :cond_10
    move v0, v1

    :goto_9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/BeautyController;->enableSmartBeauty(Z)V

    .line 32
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/engine/d3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/d3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 33
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    :cond_12
    :goto_a
    return-void
.end method

.method private initializeSettingConsumerMap()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/a2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/a2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/w1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/w1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/x2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/x2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_BEAUTY_BRIGHTEN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/i2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/i2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LARGE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/b2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/b2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SLIM_FACE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/z2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/z2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/j2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/j2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_BEAUTY_BRIGHTEN_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/a3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/a3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LARGE_EYES_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/s2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/s2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_SLIM_FACE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/q2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/q2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lu3/b;->c4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_SMART_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/x1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/x1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_SMART_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/q1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/q1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_0
    sget-object v0, Lu3/b;->o0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lu3/b;->d0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/n2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/n2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/l2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/l2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lu3/b;->z0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/h2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/h2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WHOLE_BODY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/d2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/d2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HEAD_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/u1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/u1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_SHOULDERS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/r1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/r1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_WAIST_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/g2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/g2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_HIPS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/t1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/t1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_THICKNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/w2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/w2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_LEGS_LENGTH_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/l3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/l3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/u2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/u2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WHOLE_BODY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/p2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/p2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HEAD_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/f2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/f2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_SHOULDERS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/y1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/y1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_WAIST_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/m2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/m2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_HIPS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/o2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/o2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_THICKNESS_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/r2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/r2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_LEGS_LENGTH_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/i3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/i3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->SELFIE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/k3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/k3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_LITE_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/v1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/v1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/y2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/y2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/p1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/p1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lu3/b;->w0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lu3/b;->m2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/s1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/s1;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_SKIN_COLOR_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/c2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/c2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_4
    sget-object v0, Lu3/b;->q0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/e2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/e2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_5
    sget-object v0, Lu3/b;->K1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 44
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/j3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/j3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BEAUTY_FILTER_EFFECT_ENABLED:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/sec/android/app/camera/engine/t2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/engine/t2;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeVideoBeauty()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->VIDEO_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_LIVE_FOCUS_VIDEO_SKIN_TONE_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_1
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBokehSkinToneLevel(I)V

    goto :goto_4

    .line 4
    :cond_2
    sget-object v3, Lu3/b;->z0:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    .line 6
    :cond_3
    sget-object v0, Lu3/b;->d0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lu3/b;->D1:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoSkinToneLevel(I)V

    goto :goto_4

    .line 8
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getBackVideoBeautyLowPerformanceType()I

    move-result v0

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LOW_PERFORMANCE_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 9
    :cond_6
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoSkinToneLevel(I)V

    goto :goto_4

    .line 10
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v2

    if-ne v0, v2, :cond_8

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_BEAUTY_LEVEL:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoSkinToneLevel(I)V

    goto :goto_4

    .line 12
    :cond_8
    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoSkinToneLevel(I)V

    :goto_4
    return-void
.end method

.method private isBeautyFaceAvailable()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isBeautyFaceSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/CameraResolution;->is48MPOrHigher(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private isValidMode(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/BeautyController$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->isPhotoBeautySettingKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->isPhotoBodyBeautySettingKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    return p0

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->VIDEO_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p0, p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 5
    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->SINGLE_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 6
    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedBokehEffectType()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;->DUAL_BOKEH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedBokehEffectType;

    if-ne p0, p1, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 7
    :cond_3
    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->isVideoBodyBeautySettingKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    return p0

    :cond_4
    return v2

    .line 9
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic j(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$20(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic k(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$37(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$22(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$initializePhotoBeauty$1(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializePhotoBeauty$2(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$10(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$11(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$12(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$13(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$14(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$15(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoSkinToneLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$16(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoSkinToneLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$17(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$18(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$19(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$20(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$21(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$22(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$23(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$24(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setPhotoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$25(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$26(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$27(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$28(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$29(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$3(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->z:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    sget-object v1, Lu3/b;->y4:Lu3/b;

    invoke-static {v1}, Lu3/d;->e(Lu3/b;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/engine/BeautyController;->enableSmartBeauty(Z)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$30(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$31(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$32(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBodyBeautyLevel()V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$33(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$34(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$35(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setDualBokehSkinToneLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$36(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setDualBokehSkinToneLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$37(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setLiveFocusSkinColorLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$38(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setLiveFocusSkinColorLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$39(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBokehSkinToneLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$4(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyEffectIgnore(Z)V

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/BeautyController;->enableSmartBeauty(Z)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$40(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->setVideoBokehSkinToneLevel(I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$41(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->enableBeautyBypass(Z)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$5(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$6(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$7(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$8(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private synthetic lambda$initializeSettingConsumerMap$9(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/BeautyUtil;->getPhotoBeautyMakerKey(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Lcom/samsung/android/camera/core2/MakerPrivateKey;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V

    return-void
.end method

.method private static synthetic lambda$onCameraSettingChanged$0(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;ILjava/util/function/BiConsumer;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$registerCameraSettingChangedListener$42(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method private static synthetic lambda$setDualBokehSkinToneLevel$44(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->L:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$setLiveFocusSkinColorLevel$43(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->M:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setPhotoBodyBeautyLevel$45([ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/BeautyUtil;->isBodyBeautyEnabled(Lcom/sec/android/app/camera/interfaces/CameraSettings;Lcom/sec/android/app/camera/interfaces/CommandId;)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->Z:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->Z:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4
    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/MakerPublicKey;->N:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1

    :cond_1
    return v0
.end method

.method private static synthetic lambda$setVideoBodyBeautyLevel$46([ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->N:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$setVideoBokehSkinToneLevel$47(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->L:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$setVideoSkinToneLevel$48(ILcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->L:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->equals(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$unregisterCameraSettingChangedListener$49(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/util/function/BiConsumer;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2, p1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method

.method public static synthetic m(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$19(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic n(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$34(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic o(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$4(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic p(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$13(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic q(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializePhotoBeauty$2(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$28(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method private registerCameraSettingChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    new-instance v1, Lcom/sec/android/app/camera/engine/b3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/b3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$3(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method private setBeautyEffectIgnore(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->e:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setBeautyLevel(Lcom/samsung/android/camera/core2/MakerPrivateKey;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/MakerPrivateKey<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method private setDualBokehSkinToneLevel(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDualBokehSkinToneLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isBeautyFaceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setDualBokehSkinToneLevel : Returned because it is not supported current device."

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/o1;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/o1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setLiveFocusSkinColorLevel(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLiveFocusSkinColorLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isBeautyFaceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "setLiveFocusSkinColorLevel : Returned because it is not supported current device."

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/k2;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/k2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setPhotoBodyBeautyLevel()V
    .locals 6

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    new-array v2, v1, [I

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPhotoBodyBeautyLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v1, Lcom/sec/android/app/camera/engine/g3;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/engine/g3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;[I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setVideoBodyBeautyLevel()V
    .locals 6

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/sec/android/app/camera/interfaces/CommandId;

    invoke-static {v0}, Lcom/sec/android/app/camera/util/BeautyUtil;->getManualBeautyLevelSettingKeyList(Lcom/sec/android/app/camera/interfaces/CommandId;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3
    new-array v2, v1, [I

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v4, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 5
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoBodyBeautyLevel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/h3;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/engine/h3;-><init>([I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setVideoBokehSkinToneLevel(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoBokehSkinToneLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getMaxFps()I

    move-result v0

    invoke-interface {v2, v3, v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoBeautyFaceSupported(Landroid/util/Size;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "setVideoBokehSkinToneLevel : Returned because it is not supported current device."

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/z1;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/z1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method private setVideoSkinToneLevel(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoSkinToneLevel : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeautyController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Capability;->isVideoBeautySnapshotSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingSnapshotSupported()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTakingPictureSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/samsung/android/camera/core2/MakerPrivateKey;->h:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    .line 5
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/v2;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/v2;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method

.method public static synthetic t(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$7(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic u(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$38(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method private unregisterCameraSettingChangedListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    new-instance v1, Lcom/sec/android/app/camera/engine/c3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/engine/c3;-><init>(Lcom/sec/android/app/camera/engine/BeautyController;)V

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializePhotoBeauty$1(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$18(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$39(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$27(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/camera/engine/BeautyController;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/BeautyController;->lambda$initializeSettingConsumerMap$21(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result p2

    const-string v0, "BeautyController"

    if-nez p2, :cond_0

    const-string p0, "onCameraSettingChanged : current state is not PREVIEWING. Return."

    .line 2
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/BeautyUtil;->isValidFacing(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraSettingChanged : Returned because of invalid facing - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/BeautyController;->isValidMode(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraSettingChanged : Return because it is invalid condition, key="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraSettingChanged : key="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mSettingConsumerMap:Ljava/util/EnumMap;

    invoke-virtual {p0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/BiConsumer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/sec/android/app/camera/engine/f3;

    invoke-direct {p2, p1, p3}, Lcom/sec/android/app/camera/engine/f3;-><init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onStartPreviewCompleted()V
    .locals 0

    return-void
.end method

.method public onStartPreviewRequested()V
    .locals 2

    const-string v0, "BeautyController"

    const-string v1, "onStartPreviewRequested"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->isBeautyFaceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->initializeVideoBeauty()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->initializePhotoBeauty()V

    :goto_0
    return-void
.end method

.method setSkinSmoothnessLevel(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->r:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method setSkinToneLevel(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPrivateKey;->h:Lcom/samsung/android/camera/core2/MakerPrivateKey;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setPrivateSetting(Lcom/samsung/android/camera/core2/MakerPrivateKey;Ljava/lang/Object;)V

    return-void
.end method

.method start()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->registerCameraSettingChangedListener()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->registerPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method

.method stop()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/BeautyController;->unregisterCameraSettingChangedListener()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/BeautyController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unregisterPreviewEventListener(Lcom/sec/android/app/camera/interfaces/Engine$PreviewEventListener;)V

    return-void
.end method
