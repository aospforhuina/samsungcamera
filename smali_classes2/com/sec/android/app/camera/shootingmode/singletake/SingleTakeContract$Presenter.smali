.class public interface abstract Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract$Presenter;
.super Ljava/lang/Object;
.source "SingleTakeContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakeContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract createSingleTakeCustomizedOptionMenuPresenter(Lcom/sec/android/app/camera/shootingmode/singletake/customizedoption/SingleTakeCustomizedOptionMenuContract$View;)V
.end method

.method public abstract onExtendRecordingDurationButtonClicked()V
.end method

.method public abstract onShutterAnimationEnd()V
.end method

.method public abstract onSingleTakeOptionButtonClicked()V
.end method

.method public abstract onSingleTakeShutterClicked()V
.end method
