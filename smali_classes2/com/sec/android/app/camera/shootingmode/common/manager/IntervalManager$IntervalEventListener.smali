.class public interface abstract Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$IntervalEventListener;
.super Ljava/lang/Object;
.source "IntervalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IntervalEventListener"
.end annotation


# virtual methods
.method public abstract onIntervalCanceled()V
.end method

.method public abstract onIntervalFinished()V
.end method

.method public abstract onIntervalStarted()V
.end method

.method public abstract onIntervalUpdate()V
.end method

.method public abstract onOneShotIntervalCanceled(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;)V
.end method

.method public abstract onOneShotIntervalFinished(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;)V
.end method

.method public abstract onOneShotIntervalStarted(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;)V
.end method
