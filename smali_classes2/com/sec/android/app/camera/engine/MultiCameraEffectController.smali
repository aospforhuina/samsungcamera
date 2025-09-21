.class Lcom/sec/android/app/camera/engine/MultiCameraEffectController;
.super Ljava/lang/Object;
.source "MultiCameraEffectController.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiCameraEffectController"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEffectMode:I

.field private final mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mLatestPipRect:Landroid/graphics/RectF;

.field private mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

.field private final mSurfaceTextureMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/SurfaceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    .line 5
    invoke-virtual {p1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method


# virtual methods
.method createProcessor(ILandroid/os/Handler;)V
    .locals 5

    const-string v0, "MultiCameraEffectController"

    const-string v1, "createProcessor"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-eqz v1, :cond_0

    const-string p0, "createProcessor : returned because mSecMultiCameraProcessor is not null."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->registerCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iput v2, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    goto :goto_0

    .line 7
    :cond_2
    iput v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p1

    if-ne p1, v3, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, v1, v2, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;-><init>(Landroid/content/Context;ILandroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    goto :goto_2

    .line 10
    :cond_4
    :goto_1
    new-instance p1, Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 11
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, v1, v2, v3, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;-><init>(Landroid/content/Context;IILandroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    .line 12
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 13
    new-instance v1, Landroid/graphics/SurfaceTexture;

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 14
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 15
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p2, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    .line 17
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_6

    .line 18
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p1

    div-float/2addr v4, v3

    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DUAL_PIP_STATE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v0, :cond_7

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p0, v2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipVisibility(I)V

    :cond_7
    return-void
.end method

.method destroyProcessor()V
    .locals 2

    const-string v0, "MultiCameraEffectController"

    const-string v1, "destroyProcessor"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->DUAL_RECORDING_TYPE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->unregisterCameraSettingChangedListener(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setEffectProcessorListener(Lcom/samsung/android/camera/effect/SecMultiProcessor$EffectProcessorListener;)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->stopProcessing()Z

    .line 7
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->release()V

    .line 8
    iput-object v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method hidePipRect()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipVisibility(I)V

    return-void
.end method

.method isProcessorActivated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 3

    .line 1
    sget-object p2, Lcom/sec/android/app/camera/engine/MultiCameraEffectController$1;->$SwitchMap$com$sec$android$app$camera$interfaces$CameraSettings$Key:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iput p2, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    goto :goto_0

    .line 4
    :cond_3
    iput v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    .line 5
    :goto_0
    iget p2, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    .line 6
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_8

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p3

    div-float/2addr p2, v0

    iget p3, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p1

    div-float/2addr p3, v0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    goto :goto_2

    .line 8
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    if-nez p1, :cond_5

    return-void

    :cond_5
    if-eqz p3, :cond_7

    if-eq p3, v1, :cond_6

    goto :goto_1

    .line 9
    :cond_6
    iput p2, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    goto :goto_1

    .line 10
    :cond_7
    iput v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    .line 11
    :goto_1
    iget p2, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_8

    .line 13
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr p2, p3

    div-float/2addr p2, v0

    iget p3, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr p3, p1

    div-float/2addr p3, v0

    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    :cond_8
    :goto_2
    return-void
.end method

.method setPipRectPosition(Landroid/graphics/RectF;F)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3
    iget v1, p1, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/RectF;->top:F

    div-float/2addr v2, v0

    iget v3, p1, Landroid/graphics/RectF;->right:F

    div-float/2addr v3, v0

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    div-float/2addr p1, v0

    invoke-static {v1, v2, v3, p1}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float v2, v0, v1

    .line 5
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float v4, v3, p1

    mul-float v5, v0, p2

    mul-float v6, v1, p2

    sub-float/2addr v5, v6

    mul-float v6, v3, p2

    mul-float/2addr p2, p1

    sub-float/2addr v6, p2

    sub-float/2addr v5, v2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v5, p2

    sub-float v7, v6, v4

    div-float/2addr v7, p2

    sub-float/2addr v1, v5

    sub-float/2addr p1, v7

    add-float/2addr v0, v5

    add-float/2addr v3, v7

    .line 6
    invoke-static {v1, p1, v0, v3}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mLatestPipRect:Landroid/graphics/RectF;

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    div-float/2addr v2, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v6, v1, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipInfo(FFFF)V

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, p2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, p1

    div-float/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipRect(FF)V

    :cond_0
    return-void
.end method

.method showPipRect()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setPipVisibility(I)V

    return-void
.end method

.method startProcessor(Landroid/view/Surface;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    const-string v1, "MultiCameraEffectController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "startProcessor : Returned, because multi camera effect processor is not activated."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "startProcessor"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->initialize()V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setCameraMode(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getIdList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing(I)I

    move-result v5

    if-nez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    .line 8
    :goto_2
    iget-object v6, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSurfaceTextureMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/SurfaceTexture;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v4, v5, v1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setInputSurfaceWithId(Landroid/graphics/SurfaceTexture;II)V

    move v1, v7

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {v0, p1, v3}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setOutputSurface(Landroid/view/Surface;I)V

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->startProcessing()Z

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    iget p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mEffectMode:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->changeViewMode(I)V

    return-void
.end method

.method startRecording(Landroid/view/Surface;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    const-string v1, "MultiCameraEffectController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "startRecording : Returned because multi camera processor is not activated."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "startRecording"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method stopRecording()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->isProcessorActivated()Z

    move-result v0

    const-string v1, "MultiCameraEffectController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "stopRecording : Returned because multi camera processor is not activated."

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "stopRecording"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->setRecordingSurface(Landroid/view/Surface;)V

    return-void
.end method

.method switchFacing()V
    .locals 2

    const-string v0, "MultiCameraEffectController"

    const-string/jumbo v1, "switchFacing"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/MultiCameraEffectController;->mSecMultiCameraProcessor:Lcom/samsung/android/camera/effect/SecMultiProcessor;

    invoke-virtual {p0}, Lcom/samsung/android/camera/effect/SecMultiProcessor;->frontRearSwitch()V

    return-void
.end method
