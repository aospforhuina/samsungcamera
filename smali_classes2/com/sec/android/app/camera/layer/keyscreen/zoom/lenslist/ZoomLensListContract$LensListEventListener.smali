.class public interface abstract Lcom/sec/android/app/camera/layer/keyscreen/zoom/lenslist/ZoomLensListContract$LensListEventListener;
.super Ljava/lang/Object;
.source "ZoomLensListContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/keyscreen/zoom/lenslist/ZoomLensListContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LensListEventListener"
.end annotation


# virtual methods
.method public abstract onLensListTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end method

.method public abstract onZoomButtonClick(ILcom/sec/android/app/camera/interfaces/CommandId;Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)V
.end method
