.class Lcom/sec/android/app/camera/layer/PreviewGestureManager;
.super Ljava/lang/Object;
.source "PreviewGestureManager.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;


# instance fields
.field private mActivate:Z

.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mFlingEventListener:Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIsTouchDownInDeadZone:Z

.field private mLayerScrollEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;

.field private mOrientation:I

.field private final mSwipeIgnoreArea:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mOrientation:I

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 4
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070858

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mSwipeIgnoreArea:I

    .line 5
    new-instance v0, Landroid/view/GestureDetector;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private checkDeadZone(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mOrientation:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mOrientation:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v1

    .line 3
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mSwipeIgnoreArea:I

    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mIsTouchDownInDeadZone:Z

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/layout/PinEdgeUtil;->isPinEdgePanelRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mIsTouchDownInDeadZone:Z

    iget v1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mOrientation:I

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    :goto_4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->checkPinnedEdgeArea(F)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mIsTouchDownInDeadZone:Z

    :cond_5
    return-void
.end method

.method private checkPinnedEdgeArea(F)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mOrientation:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v0

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getNavigationBarInsets()Landroid/graphics/Insets;

    move-result-object p0

    .line 3
    iget v1, p0, Landroid/graphics/Insets;->left:I

    int-to-float v1, v1

    .line 4
    iget p0, p0, Landroid/graphics/Insets;->right:I

    int-to-float p0, p0

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    const/4 v4, 0x1

    if-lez v3, :cond_2

    cmpl-float p0, p1, v2

    if-ltz p0, :cond_1

    cmpg-float p0, p1, v1

    if-lez p0, :cond_5

    :cond_1
    int-to-float p0, v0

    sub-float v0, p0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_2
    cmpl-float v1, p0, v2

    if-lez v1, :cond_4

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_3

    cmpg-float v1, p1, p0

    if-lez v1, :cond_5

    :cond_3
    int-to-float v0, v0

    sub-float p0, v0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_4

    cmpg-float p0, p1, v0

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_1
    return v4
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mActivate:Z

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->checkDeadZone(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mIsTouchDownInDeadZone:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_8

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 2
    :cond_1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscape(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    neg-float p3, p3

    :goto_0
    move v4, p4

    move p4, p3

    move p3, v4

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0705da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v0

    const/4 v3, 0x1

    if-gez v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    return v3

    .line 8
    :cond_4
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    const/4 p2, 0x0

    if-lez p1, :cond_6

    .line 9
    iput-boolean v3, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mActivate:Z

    cmpl-float p1, p3, p2

    if-lez p1, :cond_5

    .line 10
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mFlingEventListener:Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;->onFlingLeft()V

    goto :goto_1

    .line 11
    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mFlingEventListener:Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;->onFlingRight()V

    :goto_1
    return v3

    .line 12
    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p1, p1, p3

    if-gez p1, :cond_8

    .line 13
    iput-boolean v3, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mActivate:Z

    cmpg-float p1, p4, p2

    if-gez p1, :cond_7

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mFlingEventListener:Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;->onFlingUp()V

    goto :goto_2

    .line 15
    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mFlingEventListener:Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;->onFlingDown()V

    :goto_2
    return v3

    :cond_8
    :goto_3
    return v1
.end method

.method public onLayerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mActivate:Z

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .line 1
    iget-boolean p3, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mActivate:Z

    const/4 p4, 0x1

    if-nez p3, :cond_7

    iget-boolean p3, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mIsTouchDownInDeadZone:Z

    if-eqz p3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 p3, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 5
    sget-object v3, Lu3/b;->b:Lu3/b;

    invoke-static {v3}, Lu3/d;->e(Lu3/b;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->getCurrentViewOrientation(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    .line 7
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isLandscapeReverse(F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    :goto_0
    sub-float v2, p1, p2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isLandscapeForward(F)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float v2, p2, p1

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isPortraitReverse(F)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    goto :goto_0

    .line 16
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    cmpl-float p1, v1, v0

    if-lez p1, :cond_5

    .line 17
    iput-boolean p4, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mActivate:Z

    .line 18
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mLayerScrollEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;->onLeftScroll()V

    return p4

    :cond_5
    neg-float p1, v0

    cmpg-float p1, v1, p1

    if-gez p1, :cond_6

    .line 19
    iput-boolean p4, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mActivate:Z

    .line 20
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mLayerScrollEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;->onRightScroll()V

    return p4

    :cond_6
    :goto_2
    return p3

    :cond_7
    :goto_3
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setFlingEventListener(Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mFlingEventListener:Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;

    return-void
.end method

.method setOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mOrientation:I

    return-void
.end method

.method public setScrollEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->mLayerScrollEventListener:Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;

    return-void
.end method
