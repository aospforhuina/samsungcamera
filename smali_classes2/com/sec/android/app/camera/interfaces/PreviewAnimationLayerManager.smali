.class public interface abstract Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;
.super Ljava/lang/Object;
.source "PreviewAnimationLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$SeamlessAnimationEndListener;,
        Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;,
        Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;,
        Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;,
        Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;
    }
.end annotation


# virtual methods
.method public abstract cancelPreviewAnimation()V
.end method

.method public abstract hideBlackArea()V
.end method

.method public abstract isCameraSwitchingAnimationRequested()Z
.end method

.method public abstract isPreviewAnimationRequested()Z
.end method

.method public abstract onPreviewSnapShotError()V
.end method

.method public abstract onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V
.end method

.method public abstract preparePausedPreviewSnapshot()V
.end method

.method public abstract registerPreviewAnimationViewSizeChangeListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;)V
.end method

.method public abstract registerPreviewRotateAnimationListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewRotateAnimationListener;)V
.end method

.method public abstract registerSeamlessAnimationEndListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$SeamlessAnimationEndListener;)V
.end method

.method public abstract requestChangeShootingModeAnimation(Z)V
.end method

.method public abstract requestPreviewAnimation(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;Landroid/graphics/Rect;)V
.end method

.method public abstract requestPreviewAnimation(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationType;Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;Landroid/graphics/Rect;)V
.end method

.method public abstract setVerticalDirection(I)V
.end method

.method public abstract showBlackArea()V
.end method

.method public abstract startShutterAnimation()V
.end method

.method public abstract unregisterPreviewAnimationViewSizeChangeListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewAnimationViewSizeChangeListener;)V
.end method

.method public abstract unregisterSeamlessAnimationEndListener(Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$SeamlessAnimationEndListener;)V
.end method
