.class abstract Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$CaptureEventListenerAdapter;
.super Ljava/lang/Object;
.source "IntervalManager.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$CaptureEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CaptureEventListenerAdapter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/common/manager/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$CaptureEventListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCancelled()V
    .locals 0

    return-void
.end method

.method public onCaptureCompleted()V
    .locals 0

    return-void
.end method

.method public onCaptureInterrupted()V
    .locals 0

    return-void
.end method

.method public onCaptureRequested()V
    .locals 0

    return-void
.end method

.method public onCaptureStarted()V
    .locals 0

    return-void
.end method

.method public onCaptureStopped()V
    .locals 0

    return-void
.end method

.method public onShutter()V
    .locals 0

    return-void
.end method
