.class public interface abstract Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeVideoContract$View;
.super Ljava/lang/Object;
.source "SingleTakeVideoContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeVideoContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractRecordingModeContract$View<",
        "Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeVideoContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract disableShutter()V
.end method

.method public abstract enableRotateAction(Z)V
.end method

.method public abstract hideCustomizedOptionButton()V
.end method

.method public abstract hideCustomizedOptionMenu(Z)V
.end method

.method public abstract hideExtendRecordingDurationButton()V
.end method

.method public abstract hideShutter()V
.end method

.method public abstract hideTimer()V
.end method

.method public abstract isCustomizedOptionMenuVisible()Z
.end method

.method public abstract isStopCaptureAnimationRunning()Z
.end method

.method public abstract onCustomizedOptionItemClick()V
.end method

.method public abstract reset()V
.end method

.method public abstract showCustomizedOptionButton()V
.end method

.method public abstract showCustomizedOptionMenu()V
.end method

.method public abstract showExtendRecordingDurationButton()V
.end method

.method public abstract showLiveBlurForPreviewChange()V
.end method

.method public abstract showShutter()V
.end method

.method public abstract showTimer()V
.end method

.method public abstract startShutterProgress()V
.end method

.method public abstract stopShutterProgress()V
.end method

.method public abstract updateTimerText(I)V
.end method
