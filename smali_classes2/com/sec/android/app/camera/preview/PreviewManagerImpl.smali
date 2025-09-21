.class public Lcom/sec/android/app/camera/preview/PreviewManagerImpl;
.super Ljava/lang/Object;
.source "PreviewManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PreviewManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewManager"


# instance fields
.field private final HIDE_CAMERA_CUTOUT_POS_Y_RATIO:F

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsFromInitialize:Z

.field private mLastDexCameraOrientation:I

.field private mLastOrientation:I

.field private final mPreviewLayoutChangedListenerLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewLayoutChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

.field private final mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

.field private final mPreviewView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/preview/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/preview/a;-><init>(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastDexCameraOrientation:I

    const/16 v0, 0x10e

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastOrientation:I

    const v0, 0x3d6978d5    # 0.057f

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->HIDE_CAMERA_CUTOUT_POS_Y_RATIO:F

    .line 7
    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 8
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 9
    iput-object p2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 10
    iput-object p3, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    .line 11
    new-instance p3, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-direct {p3, p1, p2}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    iput-object p3, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->lambda$postPreviewLayoutChangedRunnable$1(Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->lambda$initFirstPreviewSurfaceSize$0(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->notifyPreviewLayoutChangedEvent()V

    return-void
.end method

.method private calculateDexOrientationForTablets(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastOrientation:I

    return p1

    .line 2
    :cond_1
    :goto_0
    iget p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastOrientation:I

    return p0
.end method

.method private calculatePreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getScreenPixels(Landroid/content/Context;)Landroid/util/Size;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 4
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lu3/b;->X2:Lu3/b;

    invoke-static {v2}, Lu3/d;->e(Lu3/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->isWideResolution(Lcom/sec/android/app/camera/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    .line 5
    invoke-interface {v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 6
    sget-object p1, Lu3/h;->B:Lu3/h;

    invoke-static {p1}, Lu3/d;->b(Lu3/h;)I

    move-result p1

    .line 7
    sget-object v2, Lu3/h;->C:Lu3/h;

    invoke-static {v2}, Lu3/d;->b(Lu3/h;)I

    move-result v2

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getRatio()F

    move-result p1

    float-to-double v2, p1

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getResizablePreviewLayoutRect(IID)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_3
    if-le v1, v0, :cond_4

    move v9, v1

    move v1, v0

    move v0, v9

    :cond_4
    int-to-double v4, v1

    mul-double/2addr v4, v2

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int p1, v4

    if-le p1, v0, :cond_5

    int-to-double v4, v0

    div-double/2addr v4, v2

    .line 12
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p1, v2

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, p1

    move p1, v1

    .line 13
    :goto_2
    invoke-static {p1, v2}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v3

    sub-int v4, v1, p1

    .line 14
    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    .line 15
    sget-object v6, Lu3/b;->b:Lu3/b;

    invoke-static {v6}, Lu3/d;->e(Lu3/b;)Z

    move-result v6

    if-eqz v6, :cond_6

    sub-int v5, v0, v2

    .line 16
    div-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_6
    if-eq v0, v2, :cond_8

    .line 17
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v6

    if-eq v6, v3, :cond_8

    int-to-float v5, v0

    .line 18
    iget-object v6, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getPreviewTopGuideLine()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-int v6, v6

    .line 19
    sget-object v7, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_1x1:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    if-ne v3, v7, :cond_7

    .line 20
    sget-object v7, Lu3/g;->b:Lu3/g;

    invoke-static {v7}, Lu3/d;->a(Lu3/g;)F

    move-result v7

    sget-object v8, Lu3/g;->k:Lu3/g;

    invoke-static {v8}, Lu3/d;->a(Lu3/g;)F

    move-result v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, v5

    int-to-float v8, v2

    sub-float/2addr v7, v8

    float-to-int v7, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 21
    iget-object v7, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCameraNotchHidden()Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x3d6978d5    # 0.057f

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v5, v6, v5

    goto :goto_3

    :cond_7
    move v5, v6

    .line 22
    :cond_8
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculatePreviewLayoutRect"

    .line 23
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", x="

    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", w="

    .line 25
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", window w="

    .line 26
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", windowRatio="

    .line 27
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", previewRatio="

    .line 28
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getRatio()F

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", getDisplayRotation="

    .line 29
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PreviewManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr p1, v4

    add-int/2addr v2, v5

    .line 31
    invoke-static {v4, v5, p1, v2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private calculatePreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/sec/android/app/camera/util/CameraResolution;->getRepresentativePreviewSize(Lcom/sec/android/app/camera/interfaces/AspectRatio;)Landroid/util/Size;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isSensorCropEnabled()Z

    move-result p1

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/interfaces/Capability;->getAvailablePreviewSizes(Z)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculatePreviewSurfaceSize : Not supported preview size!("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PreviewManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    .line 9
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v0

    .line 10
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/camera/util/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;Lcom/sec/android/app/camera/interfaces/AspectRatio;)Landroid/util/Size;

    move-result-object v0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calculatePreviewSurfaceSize : Changed to optimal preview size!("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private changePreviewLayoutSize(Landroid/graphics/Rect;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->setPreviewLayout(Landroid/graphics/Rect;)V

    .line 2
    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->notifyPreviewLayoutChangedEvent()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "PreviewManager"

    const-string p1, "changePreviewLayoutSize : ignore this case because preview rect is same"

    .line 4
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private changePreviewSurfaceSize(Landroid/graphics/Rect;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->setPreviewLayout(Landroid/graphics/Rect;)V

    .line 16
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const-string v0, "Surface - CreateSurface"

    .line 17
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->onChangePreviewSurfaceSizeRequested()V

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mIsFromInitialize:Z

    return p0
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mIsFromInitialize:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->postPreviewLayoutChangedRunnable()V

    return-void
.end method

.method private getCameraDisplayOrientation()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastDexCameraOrientation:I

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->isLandScape()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit16 v1, v1, -0xb4

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5a

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result p0

    add-int/2addr p0, v1

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 8
    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCapability()Lcom/sec/android/app/camera/interfaces/Capability;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Capability;->getSensorOrientation()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_1
    return p0
.end method

.method private getInitialFixedSurfaceSize(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getRepresentativePreviewSize(Lcom/sec/android/app/camera/interfaces/AspectRatio;)Landroid/util/Size;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "last_fixed_surface_size"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getInitialFixedSurfaceSize - fixedPreviewSize: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PreviewManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private getResizablePreviewLayoutRect(IID)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-le p1, p2, :cond_1

    int-to-double v0, p2

    mul-double/2addr v0, p3

    double-to-int v0, v0

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p3, p2

    goto :goto_2

    :cond_1
    :goto_0
    int-to-double v0, p1

    div-double/2addr v0, p3

    double-to-int p3, v0

    move v0, p1

    goto :goto_2

    :cond_2
    int-to-double v0, p1

    div-double/2addr v0, p3

    double-to-int v0, v0

    if-le v0, p2, :cond_4

    int-to-double v0, p2

    mul-double/2addr v0, p3

    goto :goto_1

    :cond_3
    int-to-double v0, p1

    mul-double/2addr v0, p3

    double-to-int v0, v0

    if-le v0, p2, :cond_4

    int-to-double v0, p2

    div-double/2addr v0, p3

    :goto_1
    double-to-int p3, v0

    move v0, p2

    goto :goto_2

    :cond_4
    move p3, p1

    :goto_2
    sub-int p4, p1, p3

    .line 3
    div-int/lit8 p4, p4, 0x2

    sub-int v1, p2, v0

    .line 4
    div-int/lit8 v1, v1, 0x2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResizablePreviewRect"

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", x="

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", w="

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", window w="

    .line 9
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isLandScape="

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->isLandScape()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PreviewManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr p3, p4

    add-int/2addr v0, v1

    .line 12
    invoke-static {p4, v1, p3, v0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private isBubbleLandscape()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->MULTI_WINDOW_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v4

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p0

    if-nez p0, :cond_2

    const/16 p0, 0x5a

    if-eq v0, p0, :cond_1

    const/16 p0, -0x5a

    if-ne v0, p0, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private isChangeFixedSurfaceSizeRequired(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_0

    return p2

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p2

    return p0
.end method

.method private isLandScape()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastDexCameraOrientation:I

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->isBubbleLandscape()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method private synthetic lambda$initFirstPreviewSurfaceSize$0(Landroid/graphics/Rect;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getInitialFixedSurfaceSize(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$postPreviewLayoutChangedRunnable$1(Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewLayoutChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyPreviewLayoutChangedEvent()V
    .locals 2

    const-string v0, "PreviewManager"

    const-string v1, "notifyPreviewLayoutChangedEvent : start"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    sget-object v1, Lcom/sec/android/app/camera/preview/c;->a:Lcom/sec/android/app/camera/preview/c;

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const-string p0, "notifyPreviewLayoutChangedEvent : end"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private postPreviewLayoutChangedRunnable()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/preview/b;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/preview/b;-><init>(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setInitPreviewLayout(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->setPreviewLayout(Landroid/graphics/Rect;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl$1;-><init>(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private setPreviewLayout(Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 4
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 7
    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPreviewLayout : setLayoutParams params.width "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " params.height "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PreviewManager"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/Engine;->setFunTextureViewParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 11
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl$2;-><init>(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public changePreviewSurfaceSize(Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/util/Size;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePreviewSurfaceSize : fixedPreviewSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", requestPreviewLayoutRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->setFixedSurfaceSize(II)V

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->changePreviewSurfaceSize(Landroid/graphics/Rect;)V

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->isLandScape()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object v1

    const/16 v2, 0x5a

    .line 10
    invoke-static {v2, v1, v0}, Lcom/sec/android/app/camera/util/Util;->getRotatedPreviewRect(ILandroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 11
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setWaitingSurfaceTextureFlag()V

    return-void

    .line 13
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->notifyChangePreviewSurfaceSize()V

    return-void
.end method

.method public changeSurfaceVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public createExtraSurface(Landroid/view/SurfaceView;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->createExtraSurface(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public getCurrentPreviewSurface(I)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getCurrentPreviewSurface(I)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getDummyRecordingSurface(ILcom/sec/android/app/camera/interfaces/Resolution;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getDummyRecordingSurface(ILcom/sec/android/app/camera/interfaces/Resolution;)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getExtraPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getExtraPreviewSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getExtraSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getExtraSurfaceView()Landroid/view/SurfaceView;

    move-result-object p0

    return-object p0
.end method

.method public getFixedSurfaceSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getFixedSurfaceSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getFunModeSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getFunModeSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewDisplayMatrix()Landroid/graphics/Matrix;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 6
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/MatrixFactory;->create()Landroid/graphics/Matrix;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    const/high16 v3, -0x40800000    # -1.0f

    goto :goto_1

    :cond_1
    move v3, v6

    .line 7
    :goto_1
    invoke-virtual {v5, v3, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getCameraDisplayOrientation()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p0, v2

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float v6, p0, v3

    int-to-float v4, v4

    div-float v3, v4, v3

    .line 9
    invoke-virtual {v5, v6, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p0, v3

    div-float/2addr v4, v3

    .line 10
    invoke-virtual {v5, p0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sub-int/2addr v0, v2

    int-to-float p0, v0

    div-float/2addr p0, v3

    .line 11
    iget v0, v1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v5, p0, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v5
.end method

.method public getPreviewLayoutRect()Landroid/graphics/Rect;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v4, v0

    invoke-static {v1, v2, v3, v4}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastDexCameraOrientation:I

    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result p0

    invoke-static {v2, p0}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/camera/util/Util;->getRotatedPreviewRect(ILandroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getPreviewResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->calculatePreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->calculatePreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getPreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->VIDEO_AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v0, Lu3/l;->a:Lu3/l;

    invoke-static {v0}, Lu3/d;->c(Lu3/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(Ljava/lang/String;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getPreviewResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->calculatePreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getResizablePreviewOrientation()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastDexCameraOrientation:I

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/16 p0, 0x5a

    return p0

    :cond_2
    const/16 p0, 0xb4

    return p0

    :cond_3
    const/16 p0, 0x10e

    return p0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public initFirstPreviewSurfaceSize()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iget-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getNextCameraId(Z)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution(I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object v2

    .line 5
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->setInitPreviewLayout(Landroid/graphics/Rect;)V

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "last_fixed_surface_size"

    invoke-static {v3, v5, v4}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/preview/d;

    invoke-direct {v4, p0, v2}, Lcom/sec/android/app/camera/preview/d;-><init>(Lcom/sec/android/app/camera/preview/PreviewManagerImpl;Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "x"

    .line 10
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 11
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 12
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    .line 13
    aget-object v5, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 14
    invoke-static {v3, v5}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v3

    .line 15
    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getAspectRatio()Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v0

    if-ne v3, v0, :cond_3

    .line 16
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    aget-object v0, v2, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->setFixedSurfaceSize(II)V

    :cond_3
    return-void
.end method

.method public isChangePreviewSurfaceSizeRequired(Lcom/sec/android/app/camera/interfaces/Resolution;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "isRecreatedFromMultiWindow"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewSurfaceSize(Landroid/graphics/Rect;)Landroid/util/Size;

    move-result-object v1

    .line 7
    invoke-direct {p0, v0, p1, v1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->isChangeFixedSurfaceSizeRequired(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/Size;)Z

    move-result p0

    return p0
.end method

.method public isExtraPreviewSurfaceCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->isExtraPreviewSurfaceCreated()Z

    move-result p0

    return p0
.end method

.method public isFunPreviewSurfaceCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->isFunPreviewSurfaceCreated()Z

    move-result p0

    return p0
.end method

.method public isPreviewSurfaceCreated()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->isPreviewSurfaceCreated()Z

    move-result p0

    return p0
.end method

.method public mIsStartFunProcessorRequested()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsStartFunProcessorRequested()Z

    move-result p0

    return p0
.end method

.method public registerPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewLayoutChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFunTextureViewParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->setFunTextureViewParams(Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setLivePreviewBlur(F)V
    .locals 2

    .line 1
    sget-object v0, Lu3/b;->n2:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x40

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 5
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 p1, 0x2

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public setWaitingSurfaceTextureFlag()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->setWaitingSurfaceTextureFlag()V

    return-void
.end method

.method public startFunModeSurfaceTexture(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->startFunModeSurfaceTexture(Z)V

    return-void
.end method

.method public startSurfaceManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->start()V

    return-void
.end method

.method public stopSurfaceManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->stop()V

    return-void
.end method

.method public takePreviewSurfaceSnapshot()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewSurfaceManager:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->takePreviewSurfaceSnapshot()V

    return-void
.end method

.method public unregisterPreviewLayoutChangedListener(Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewLayoutChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewLayoutChangedListenerLists:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateDexCameraOrientation(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isSmartViewConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->calculateDexOrientationForTablets(I)I

    move-result p1

    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastDexCameraOrientation:I

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    .line 6
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->updatePreviewLayoutSize(Lcom/sec/android/app/camera/interfaces/Resolution;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    iget p0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mLastDexCameraOrientation:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public updatePreviewLayoutSize()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->CAMERA_RESOLUTION:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    :goto_0
    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getResolution(I)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mPreviewView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 5
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object v0

    .line 7
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PreviewManager"

    const-string/jumbo v2, "updatePreviewLayoutSize. preview layout should be changed."

    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/Engine;->getAeAfManager()Lcom/sec/android/app/camera/interfaces/AeAfManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager;->resetAeAfAwb()V

    .line 10
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->setPreviewLayout(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updatePreviewLayoutSize(Lcom/sec/android/app/camera/interfaces/Resolution;)V
    .locals 1

    .line 11
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->getPreviewLayoutRect(Lcom/sec/android/app/camera/interfaces/Resolution;)Landroid/graphics/Rect;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/preview/PreviewManagerImpl;->changePreviewLayoutSize(Landroid/graphics/Rect;Z)V

    return-void
.end method
