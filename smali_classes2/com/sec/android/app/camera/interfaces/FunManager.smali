.class public interface abstract Lcom/sec/android/app/camera/interfaces/FunManager;
.super Ljava/lang/Object;
.source "FunManager.java"


# virtual methods
.method public abstract addLens()V
.end method

.method public abstract applyLens(Lcom/snap/camerakit/lenses/LensesComponent$Lens;)V
.end method

.method public abstract closeFunCameraKitSession()V
.end method

.method public abstract createFunMode()V
.end method

.method public abstract destroyFunProcessor()V
.end method

.method public abstract getSurfaceTexture()Landroid/graphics/SurfaceTexture;
.end method

.method public abstract preLoadLenses(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snap/camerakit/lenses/LensesComponent$Lens;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setRecordingSurface(Landroid/view/Surface;)V
.end method

.method public abstract startFunProcessor(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract takePicture(Ljava/nio/ByteBuffer;)V
.end method
