.class Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;
.super Ljava/lang/Object;
.source "VideoAutoFramingManager.java"


# static fields
.field private static final MANUAL_TRACKING_REGION_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VideoAutoFramingManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private final mRegionSize:Landroid/util/Size;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    invoke-static {v0, v0}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mRegionSize:Landroid/util/Size;

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 4
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-void
.end method

.method public static synthetic a(Landroid/hardware/camera2/params/MeteringRectangle;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->lambda$setAutoFramingManualTrackingRegion$0(Landroid/hardware/camera2/params/MeteringRectangle;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z

    move-result p0

    return p0
.end method

.method private getDefaultActiveArray()Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getSensorInfoActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/util/factory/MeteringRectangleFactory;->create(Landroid/graphics/Rect;I)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    return-object p0
.end method

.method private getMeteringRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/util/Size;Z)Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "VideoAutoFramingManager"

    if-nez p1, :cond_0

    const-string p0, "getMeteringRectangle : cropRegion is null!"

    .line 1
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->getDefaultActiveArray()Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p4

    invoke-virtual {p4}, Landroid/hardware/camera2/params/MeteringRectangle;->getSize()Landroid/util/Size;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/sec/android/app/camera/util/Util;->convertRectToHorizontalFlippedRect(Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "getMeteringRectangle : failed to convert rect"

    .line 3
    invoke-static {v1, p4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->getRatioFocusRect(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/RectF;

    move-result-object p2

    .line 5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getMeteringRectangle : ratioFocusRect="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p3, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sec/android/app/camera/util/Util;->getCropRegionByPreviewAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 7
    iget p3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    iget v2, p2, Landroid/graphics/RectF;->left:F

    mul-float/2addr p4, v2

    float-to-int p4, p4

    add-int/2addr p3, p4

    .line 8
    iget p4, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr p4, v2

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    mul-float/2addr v3, p2

    float-to-int p2, v3

    .line 11
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    invoke-static {p3, v3, v4}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result p3

    .line 12
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p2

    invoke-static {p4, v3, v4}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result p4

    const/4 v3, 0x1

    .line 13
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 14
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v2, p3

    add-int/2addr p2, p4

    .line 15
    invoke-static {p3, p4, v2, p2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p2

    .line 16
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getMeteringRectangle : activeRegion="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " cropRegion="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->isValidFocusRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getMeteringRectangle : activeRegion is invalid. activeRegion="

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    const/16 p0, 0x3e8

    .line 19
    invoke-static {p2, p0}, Lcom/sec/android/app/camera/util/factory/MeteringRectangleFactory;->create(Landroid/graphics/Rect;I)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    return-object p0
.end method

.method private getRatioFocusRect(Landroid/graphics/Point;Landroid/util/Size;)Landroid/graphics/RectF;
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRatioFocusRect : previewRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoAutoFramingManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v2

    sub-int/2addr v1, p1

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    sub-int p1, v0, p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p1, v3

    .line 6
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v3, v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 7
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    float-to-int v4, v4

    add-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 8
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    float-to-int p2, p2

    add-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p2, p0

    .line 9
    invoke-static {p1, v3, v0, p2}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method private isValidFocusRegion(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    const-string v1, "VideoAutoFramingManager"

    if-ltz p0, :cond_2

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-ltz p0, :cond_2

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-ltz p0, :cond_2

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-gez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isValidFocusRegion : focusRegion is not contained in cropRegion!"

    .line 3
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string p0, "isValidFocusRegion : focusRegion is invalid!"

    .line 4
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static synthetic lambda$setAutoFramingManualTrackingRegion$0(Landroid/hardware/camera2/params/MeteringRectangle;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/camera/core2/MakerPublicKey;->K:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v2}, Lcom/sec/android/app/camera/util/factory/MeteringRectangleFactory;->createArray([Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return v1
.end method

.method private setAutoFramingManualTrackingRegion(Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "VideoAutoFramingManager"

    const-string p1, "setAutoFramingManualTracking : regions is null!"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    new-instance v0, Lcom/sec/android/app/camera/engine/aa;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/engine/aa;-><init>(Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->applySettings(Lcom/sec/android/app/camera/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-void
.end method


# virtual methods
.method resetAutoFramingManualTrackingRegion()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->getDefaultActiveArray()Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->setAutoFramingManualTrackingRegion(Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-void
.end method

.method setAutoFramingManualTrackingRegion(Landroid/graphics/Point;Landroid/graphics/Rect;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->mRegionSize:Landroid/util/Size;

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->getMeteringRectangle(Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/util/Size;Z)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/VideoAutoFramingManager;->setAutoFramingManualTrackingRegion(Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-void
.end method
