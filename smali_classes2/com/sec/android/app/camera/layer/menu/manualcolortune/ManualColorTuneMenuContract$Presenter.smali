.class public interface abstract Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuContract$Presenter;
.super Ljava/lang/Object;
.source "ManualColorTuneMenuContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/abstraction/AbstractMenuContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/manualcolortune/ManualColorTuneMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract onInitialize()V
.end method

.method public abstract onManualColorTuneItemClicked(I)V
.end method

.method public abstract onSliderChanged(II)V
.end method

.method public abstract onStartTrackingTouch(I)V
.end method

.method public abstract onStopTrackingTouch(I)V
.end method
