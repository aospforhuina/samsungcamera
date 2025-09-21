.class public abstract Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase;
.super Lcom/samsung/android/camera/core2/node/Node2;
.source "SingleBokehNodeBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehCaptureParam;,
        Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehInitParam;,
        Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$NodeCallback;
    }
.end annotation


# direct methods
.method protected constructor <init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/Node2;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method

.method protected constructor <init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/node/Node2;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    return-void
.end method


# virtual methods
.method public abstract getBokehFaceRetouchLevel()I
.end method

.method public abstract getDeviceOrientation()I
.end method

.method public abstract getEyeEnlargementLevel()I
.end method

.method public abstract getFaceColorLevel()I
.end method

.method public abstract getFaceDetectionEnable()Z
.end method

.method public abstract getPictureSkinSoftenLevel()I
.end method

.method public abstract getPreviewSkinSoftenLevel()I
.end method

.method public abstract getRelightLevel()I
.end method

.method public abstract getSaveAsFlipProperty()Z
.end method

.method public abstract getSelfieToneMode()I
.end method

.method public abstract getSensorCameraLandscape()Z
.end method

.method public abstract getSkinBrightLevel()I
.end method

.method public abstract getSlimFaceLevel()I
.end method

.method public abstract getSpecialEffectType()I
.end method

.method protected needPictureDump()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract prepareTakePicture(Landroid/util/Size;Ljava/lang/Integer;)V
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

.method public reconfigure(Lcom/samsung/android/camera/core2/node/singleBokeh/SingleBokehNodeBase$SingleBokehInitParam;)V
    .locals 0

    return-void
.end method

.method public abstract setAeFlashMode(Z)V
.end method

.method public abstract setAfRegion([Landroid/hardware/camera2/params/MeteringRectangle;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract setBokehFaceRetouchLevel(I)V
.end method

.method public abstract setDeviceOrientation(I)V
.end method

.method public abstract setEyeEnlargementLevel(I)V
.end method

.method public abstract setFaceColorLevel(I)V
.end method

.method public abstract setFaceDetectionEnable(Z)V
.end method

.method public abstract setPictureSkinSoftenLevel(I)V
.end method

.method public abstract setPreviewHwFaceInfo([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract setPreviewPetDetectionInfo([Lcom/samsung/android/camera/core2/container/PetDetectionInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract setPreviewResult(Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract setPreviewSkinSoftenLevel(I)V
.end method

.method public abstract setRelightLevel(I)V
.end method

.method public abstract setSaveAsFlipProperty(Z)V
.end method

.method public abstract setSelfieToneMode(I)V
.end method

.method public abstract setSensorCameraLandscape(Z)V
.end method

.method public abstract setSkinBrightLevel(I)V
.end method

.method public abstract setSlimFaceLevel(I)V
.end method

.method public abstract setSpecialEffectInfo(Landroid/util/Pair;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
