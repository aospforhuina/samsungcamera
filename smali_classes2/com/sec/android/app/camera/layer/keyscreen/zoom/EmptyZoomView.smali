.class public Lcom/sec/android/app/camera/layer/keyscreen/zoom/EmptyZoomView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "EmptyZoomView.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public createLensDataHolder()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomLensDataList;

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/data/ZoomLensDataList;-><init>()V

    return-object p0
.end method

.method public extendArea()V
    .locals 0

    return-void
.end method

.method public getButtonAreaVisibleRect()Landroid/graphics/Rect;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLensButtonVisibleRect()Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLensButtonVisibleRect(Lcom/sec/android/app/camera/interfaces/CommandId;)Landroid/graphics/Rect;
    .locals 0

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getShortCutList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getZoomCategory()Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;
    .locals 0

    sget-object p0, Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;->NOT_SUPPORT:Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;

    return-object p0
.end method

.method public handleGestureEvent(ILcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public handleKeyDownEvent(I)V
    .locals 0

    return-void
.end method

.method public handleKeyUpEvent(I)V
    .locals 0

    return-void
.end method

.method public hideZoomText(I)V
    .locals 0

    return-void
.end method

.method public isExtend()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLensChangeAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isScaleZoomSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSliderScrolling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomTransitionAnimationRunning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onOrientationChanged(I)V
    .locals 0

    return-void
.end method

.method public reduceArea()V
    .locals 0

    return-void
.end method

.method public refreshProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public refreshProperty(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;Ljava/util/EnumSet;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomCategory;",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomSupportUi;",
            ">;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensDataHolder;",
            "Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomAvailabilityChecker;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public registerZoomLensTypeTextVisibilityChangeListener(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensTypeTextVisibilityChangeListener;)V
    .locals 0

    return-void
.end method

.method public resetZoomPositionType()V
    .locals 0

    return-void
.end method

.method public setZoomPositionType(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomPositionType;)V
    .locals 0

    return-void
.end method

.method public setZoomSliderMagneticEffectEnabled(Z)V
    .locals 0

    return-void
.end method

.method public showZoomNotSupportedToast(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startZoomTransition(I)V
    .locals 0

    return-void
.end method

.method public startZoomTransition(Lcom/sec/android/app/camera/interfaces/CommandId;)V
    .locals 0

    return-void
.end method

.method public unregisterZoomLensTypeTextVisibilityChangeListener(Lcom/sec/android/app/camera/interfaces/ZoomManager$ZoomLensTypeTextVisibilityChangeListener;)V
    .locals 0

    return-void
.end method

.method public updateLensButton(I)V
    .locals 0

    return-void
.end method
