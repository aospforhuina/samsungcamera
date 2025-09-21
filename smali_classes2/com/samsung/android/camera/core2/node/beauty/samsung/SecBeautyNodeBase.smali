.class public abstract Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;
.super Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;
.source "SecBeautyNodeBase.java"


# instance fields
.field protected mBeautyBypass:Z

.field protected mBeautyEffectIgnore:Z

.field protected mBeautyEyeEnlargeLevel:I

.field protected mBeautyFaceColorLevel:I

.field protected mBeautyFaceRetouchLevel:I

.field protected mBeautyReshapeAutoSupport:I

.field protected mBeautyReshapeCheekLevel:I

.field protected mBeautyReshapeChinLevel:I

.field protected mBeautyReshapeEyeLevel:I

.field protected mBeautyReshapeLipLevel:I

.field protected mBeautyReshapeNoseLevel:I

.field protected mBeautySkinBrightLevel:I

.field protected mBeautySlimFaceLevel:I

.field protected mBeautySmoothnessLevel:I

.field protected mBeautyStrEnable:Z

.field protected mBrightnessValueProperty:I

.field protected mColorTemperatureProperty:I

.field protected mDebugInfo:[B

.field protected mDeviceOrientation:I

.field protected mEnableSmartBeauty:Z

.field protected mFaceDetectionEnable:Z

.field protected mFlipModeProperty:I

.field protected mIsoProperty:I

.field protected mLensFacing:I

.field protected final mNodeCallback:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

.field protected mPreviewBeautyEnable:Z

.field protected mPreviewSize:Landroid/util/Size;

.field protected mProLightingType:I

.field protected mRelightDirection:Landroid/graphics/Point;

.field protected mRelightEnabled:Z

.field protected mRelightLevel:I

.field protected mSelfieToneMode:I

.field protected mSensorOrientation:I

.field protected mShootingMode:I

.field protected mSmartBeautyLevel:I

.field protected mVideoMode:Z


# direct methods
.method public constructor <init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    const-string p1, "nodeTag"

    .line 2
    invoke-static {p2, p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "beautyInitParam"

    .line 3
    invoke-static {p3, p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "callback"

    .line 4
    invoke-static {p4, p1}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object p1, p3, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->a:Landroid/util/Size;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewSize:Landroid/util/Size;

    .line 6
    iget-object p1, p3, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mLensFacing:I

    .line 7
    iget-boolean p1, p3, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->c:Z

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mVideoMode:Z

    .line 8
    iget-object p1, p3, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->i2()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSensorOrientation:I

    .line 9
    iget p1, p3, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->d:I

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mShootingMode:I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    .line 11
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mProLightingType:I

    .line 12
    iput-object p4, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mNodeCallback:Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$NodeCallback;

    return-void
.end method

.method public static synthetic e([I)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->lambda$setPreviewProperties$0([I)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;[I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->lambda$setPreviewProperties$1([I)V

    return-void
.end method

.method private isBeautyBasicApplied()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEyeEnlargeLevel:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceColorLevel:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceRetouchLevel:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySlimFaceLevel:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySmoothnessLevel:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSmartBeautyLevel:I

    if-gtz v0, :cond_1

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySkinBrightLevel:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isBeautyReshapeApplied()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeCheekLevel:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeEyeLevel:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeChinLevel:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeNoseLevel:I

    if-nez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeLipLevel:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$setPreviewProperties$0([I)Z
    .locals 0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setPreviewProperties$1([I)V
    .locals 1

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->setIsoProperty(I)V

    return-void
.end method


# virtual methods
.method public getBeautyBypass()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyBypass:Z

    return p0
.end method

.method public getBeautyEffectIgnore()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEffectIgnore:Z

    return p0
.end method

.method public getBeautyFaceRetouchLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceRetouchLevel:I

    return p0
.end method

.method public getBeautySmoothnessLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySmoothnessLevel:I

    return p0
.end method

.method public getBeautyStrEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyStrEnable:Z

    return p0
.end method

.method public getBrightnessValueProperty()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBrightnessValueProperty:I

    return p0
.end method

.method public getColorTemperatureProperty()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mColorTemperatureProperty:I

    return p0
.end method

.method public getDeviceOrientation()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mDeviceOrientation:I

    return p0
.end method

.method public getEyeEnlargementLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEyeEnlargeLevel:I

    return p0
.end method

.method public getFaceColorLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceColorLevel:I

    return p0
.end method

.method public getFaceDetectionEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFaceDetectionEnable:Z

    return p0
.end method

.method public getFlipModeProperty()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFlipModeProperty:I

    return p0
.end method

.method public getIsoProperty()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mIsoProperty:I

    return p0
.end method

.method public getLLSProperty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPreviewBeautyEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewBeautyEnable:Z

    return p0
.end method

.method public getProlightingType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mProLightingType:I

    return p0
.end method

.method public getRelightDirection()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mRelightDirection:Landroid/graphics/Point;

    return-object p0
.end method

.method public getRelightEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mRelightEnabled:Z

    return p0
.end method

.method public getRelightLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mRelightLevel:I

    return p0
.end method

.method public getReshapeAutoSupport()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeAutoSupport:I

    return p0
.end method

.method public getReshapeCheekLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeCheekLevel:I

    return p0
.end method

.method public getReshapeChinLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeChinLevel:I

    return p0
.end method

.method public getReshapeEyeLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeEyeLevel:I

    return p0
.end method

.method public getReshapeLipLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeLipLevel:I

    return p0
.end method

.method public getReshapeNoseLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeNoseLevel:I

    return p0
.end method

.method public getSelfieToneMode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    return p0
.end method

.method public getSkinBrightLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySkinBrightLevel:I

    return p0
.end method

.method public getSlimFaceLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySlimFaceLevel:I

    return p0
.end method

.method public getSmartBeautyEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mEnableSmartBeauty:Z

    return p0
.end method

.method public getSmartBeautyLevel()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSmartBeautyLevel:I

    return p0
.end method

.method public isBeautyLevelApplied()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->isBeautyBasicApplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->isBeautyReshapeApplied()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public needPictureBeauty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEffectIgnore:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->isBeautyLevelApplied()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyStrEnable:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needPreviewBeauty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewBeautyEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEffectIgnore:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->isBeautyLevelApplied()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mRelightEnabled:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFaceDetectionEnable:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyStrEnable:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public reconfigure(Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->a:Landroid/util/Size;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewSize:Landroid/util/Size;

    .line 2
    iget-object v0, p1, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/CamCapability;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mLensFacing:I

    .line 3
    iget-object p1, p1, Lcom/samsung/android/camera/core2/node/beauty/BeautyNodeBase$BeautyInitParam;->b:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/CamCapability;->i2()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSensorOrientation:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    .line 5
    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mProLightingType:I

    return-void
.end method

.method public setBeautyBypass(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyBypass:Z

    return-void
.end method

.method public setBeautyEffectIgnore(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEffectIgnore:Z

    return-void
.end method

.method public setBeautyFaceRetouchLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceRetouchLevel:I

    return-void
.end method

.method public setBeautySmoothnessLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySmoothnessLevel:I

    return-void
.end method

.method public setBeautyStrEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyStrEnable:Z

    return-void
.end method

.method public setBrightnessValueProperty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBrightnessValueProperty:I

    return-void
.end method

.method public setColorTemperatureProperty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mColorTemperatureProperty:I

    return-void
.end method

.method public setDeviceOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mDeviceOrientation:I

    return-void
.end method

.method public setEyeEnlargementLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyEyeEnlargeLevel:I

    return-void
.end method

.method public setFaceColorLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyFaceColorLevel:I

    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFaceDetectionEnable:Z

    return-void
.end method

.method public setFlipModeProperty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mFlipModeProperty:I

    return-void
.end method

.method public setIsoProperty(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mIsoProperty:I

    return-void
.end method

.method public setLLSProperty(Z)V
    .locals 0

    return-void
.end method

.method public setPreviewBeautyEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mPreviewBeautyEnable:Z

    return-void
.end method

.method public setPreviewProperties(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->i2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/d;->a:Lcom/samsung/android/camera/core2/node/beauty/samsung/d;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/c;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/c;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;)V

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/camera/core2/node/beauty/samsung/a;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/a;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 6
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/camera/core2/node/beauty/samsung/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/node/beauty/samsung/b;-><init>(Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;)V

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setProlightingType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mProLightingType:I

    return-void
.end method

.method public setRelightDirection(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mRelightDirection:Landroid/graphics/Point;

    return-void
.end method

.method public setRelightEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mRelightEnabled:Z

    return-void
.end method

.method public setRelightLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mRelightLevel:I

    return-void
.end method

.method public setReshapeAutoSupport(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeAutoSupport:I

    return-void
.end method

.method public setReshapeCheekLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeCheekLevel:I

    return-void
.end method

.method public setReshapeChinLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeChinLevel:I

    return-void
.end method

.method public setReshapeEyeLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeEyeLevel:I

    return-void
.end method

.method public setReshapeLipLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeLipLevel:I

    return-void
.end method

.method public setReshapeNoseLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautyReshapeNoseLevel:I

    return-void
.end method

.method public setSelfieToneMode(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSelfieToneMode:I

    return-void
.end method

.method public setSkinBrightLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySkinBrightLevel:I

    return-void
.end method

.method public setSlimFaceLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mBeautySlimFaceLevel:I

    return-void
.end method

.method public setSmartBeautyEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mEnableSmartBeauty:Z

    return-void
.end method

.method public setSmartBeautyLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/node/beauty/samsung/SecBeautyNodeBase;->mSmartBeautyLevel:I

    return-void
.end method
