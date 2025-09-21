.class public interface abstract Lcom/sec/android/app/camera/interfaces/CameraContext$FunListener;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FunListener"
.end annotation


# virtual methods
.method public abstract addLens(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/snap/camerakit/lenses/LensesComponent$Lens;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract showLensGuide(Ljava/lang/String;Z)V
.end method
