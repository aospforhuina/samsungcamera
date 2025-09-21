.class public Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;
.super Ljava/lang/Object;
.source "HistogramPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$Presenter;


# static fields
.field private static final INDICATOR_SHOW_DURATION:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "HistogramPresenter"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected final mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private final mHandler:Landroid/os/Handler;

.field private final mUpdateHistogramIndicatorRunnable:Ljava/lang/Runnable;

.field private final mView:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/a;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/a;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mUpdateHistogramIndicatorRunnable:Ljava/lang/Runnable;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 6
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->lambda$new$0()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->updateHistogramIndicator()V

    return-void
.end method

.method private updateHistogramIndicator()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;->updateHistogramIndicator()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mUpdateHistogramIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mUpdateHistogramIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramPresenter;->mView:Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/pro/histogram/HistogramContract$View;->cancelAnimator()V

    return-void
.end method
