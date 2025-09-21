.class Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "SwFaceDetectionCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;"
    }
.end annotation


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mDetectedFaceList:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    .line 2
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mDetectedFaceList:Ljava/util/SortedMap;

    .line 3
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    .line 5
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;[Landroid/hardware/camera2/params/Face;Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->lambda$onSwFaceDetection$0([Landroid/hardware/camera2/params/Face;Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V

    return-void
.end method

.method private isNotifyGenericEvent()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->SW:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    .line 3
    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->getSupportedFaceDetectionMode(I)Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;->BOTH:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature$SupportedFaceDetectionType;

    if-ne p0, v0, :cond_0

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

.method private synthetic lambda$onSwFaceDetection$0([Landroid/hardware/camera2/params/Face;Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$State;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$State;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/Engine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$State;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    array-length v0, p1

    invoke-static {v0}, Lcom/sec/android/app/camera/util/factory/RectFactory;->createArray(I)[Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 5
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p2, v0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SwFaceDetectionListener;->onSwFaceDetection([Landroid/graphics/Rect;)Z

    move-result p1

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mDetectedFaceList:Ljava/util/SortedMap;

    invoke-static {p2, v0}, Lcom/sec/android/app/camera/engine/callback/RectConverter;->getIndexedRects(Ljava/util/SortedMap;[Landroid/graphics/Rect;)Ljava/util/SortedMap;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mDetectedFaceList:Ljava/util/SortedMap;

    .line 8
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->isNotifyGenericEvent()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    iget-object p2, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mEngine:Lcom/sec/android/app/camera/interfaces/InternalEngine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/InternalEngine;->getGenericEventListener()Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;->mDetectedFaceList:Ljava/util/SortedMap;

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/camera/interfaces/Engine$GenericEventListener;->onFaceDetection(Ljava/util/Map;Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected enable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSwFaceDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/SwFaceDetectionEventCallback;)V

    return-void
.end method

.method public onSwFaceDetection([Landroid/hardware/camera2/params/Face;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p2, Lcom/sec/android/app/camera/engine/callback/g1;

    invoke-direct {p2, p0, p1}, Lcom/sec/android/app/camera/engine/callback/g1;-><init>(Lcom/sec/android/app/camera/engine/callback/SwFaceDetectionCallback;[Landroid/hardware/camera2/params/Face;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method
