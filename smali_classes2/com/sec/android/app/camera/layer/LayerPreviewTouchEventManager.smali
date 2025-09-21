.class public Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;
.super Ljava/lang/Object;
.source "LayerPreviewTouchEventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LayerPreviewTouchEventManager"


# instance fields
.field private mConsumeLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

.field private mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

.field private mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

.field private mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

.field private final mTouchEventListenerAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V

    new-instance p2, Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    new-instance v1, Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    invoke-direct {v1, p1}, Lcom/sec/android/app/camera/layer/PreviewGestureManager;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V

    invoke-direct {p0, v0, p2, v1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;-><init>(Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;Lcom/sec/android/app/camera/layer/PreviewGestureManager;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;Lcom/sec/android/app/camera/layer/PreviewGestureManager;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    .line 5
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    .line 6
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    .line 7
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->registerTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V

    return-void
.end method

.method private sendCancelEvent(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;->clear()V

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->clear()V

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;->getScaleUpDownGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object p0

    return-object p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    .line 6
    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;->onLayerTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iput-object v1, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mConsumeLayerTouchEventListener:Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;

    .line 8
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->sendCancelEvent(Landroid/view/MotionEvent;)V

    :cond_3
    return v2
.end method

.method public registerTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "LayerPreviewTouchEventManager"

    const-string p1, "registerKeyEventListener parameter is null."

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFlingEventListener(Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->setFlingEventListener(Lcom/sec/android/app/camera/layer/listener/LayerFlingEventListener;)V

    return-void
.end method

.method setOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->setOrientation(I)V

    return-void
.end method

.method public setScaleEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScaleEventListener;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/sec/android/app/camera/layer/listener/LayerScaleUpDownEventListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->stop()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;->start()V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    check-cast p1, Lcom/sec/android/app/camera/layer/listener/LayerScaleUpDownEventListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;->setScaleUpDownEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScaleUpDownEventListener;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleUpDownGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/PreviewScaleUpDownGestureManager;->stop()V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->start()V

    .line 7
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewScaleZoomGestureManager:Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;

    check-cast p1, Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewScaleZoomGestureManager;->setLayerScaleZoomEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScaleZoomEventListener;)V

    :goto_0
    return-void
.end method

.method public setScrollEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mPreviewGestureManager:Lcom/sec/android/app/camera/layer/PreviewGestureManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/layer/PreviewGestureManager;->setScrollEventListener(Lcom/sec/android/app/camera/layer/listener/LayerScrollEventListener;)V

    return-void
.end method

.method public unRegisterTouchEventListener(Lcom/sec/android/app/camera/layer/listener/LayerTouchEventListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/LayerPreviewTouchEventManager;->mTouchEventListenerAdapter:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
