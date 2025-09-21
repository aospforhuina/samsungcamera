.class public interface abstract Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract$Presenter;
.super Ljava/lang/Object;
.source "PreviewAnimationLayerContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract isResizableMode()Z
.end method

.method public abstract onBlackAreaShowRequested()V
.end method

.method public abstract onChangeShootingModeAnimationRequested(Z)V
.end method

.method public abstract onOrientationChangeRequested()V
.end method

.method public abstract onPreparePausedPreviewSnapshotRequested()V
.end method

.method public abstract onPreviewAnimationRequested(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
.end method

.method public abstract onPreviewSnapShotTaken(Landroid/graphics/Bitmap;Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;)V
.end method

.method public abstract updateLayoutForPinEdge()V
.end method
