.class public interface abstract Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$View;
.super Ljava/lang/Object;
.source "AeAfContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/interfaces/BaseContract$View<",
        "Lcom/sec/android/app/camera/layer/previewoverlay/aeaf/AeAfContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAeAfGroupVisibleRect()Landroid/graphics/Rect;
.end method

.method public abstract hideAeAfGroup(Z)V
.end method

.method public abstract hideDivideAeAfLock()V
.end method

.method public abstract hideDivideAeLock()V
.end method

.method public abstract hideDivideAfLock()V
.end method

.method public abstract hideFocusGuideView()V
.end method

.method public abstract refreshAeAfProperty(Ljava/util/EnumSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAeAfText(Ljava/lang/String;)V
.end method

.method public abstract showAeAfGroup(IZ)V
.end method

.method public abstract showDivideAeAfAnimation()V
.end method

.method public abstract showDivideAeLock()V
.end method

.method public abstract showDivideAfLock()V
.end method

.method public abstract showEvSlider()V
.end method

.method public abstract showFocusGuideView(II)V
.end method

.method public abstract updateAeAfPosition(IILandroid/graphics/Rect;II)V
.end method

.method public abstract updateAeAfTextPosition()V
.end method

.method public abstract updateDivideAeAfLockPosition(IILandroid/graphics/Rect;II)V
.end method

.method public abstract updateDivideAeLockPosition(IILandroid/graphics/Rect;II)V
.end method

.method public abstract updateDivideAfLockPosition(IILandroid/graphics/Rect;II)V
.end method

.method public abstract updateEvSliderPosition()V
.end method
