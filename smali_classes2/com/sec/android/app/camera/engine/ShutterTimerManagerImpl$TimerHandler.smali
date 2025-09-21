.class Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;
.super Landroid/os/Handler;
.source "ShutterTimerManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimerHandler"
.end annotation


# instance fields
.field private final mShutterTimerManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->mShutterTimerManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;Lcom/sec/android/app/camera/engine/k8;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;-><init>(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl$TimerHandler;->mShutterTimerManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->c(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;)Lcom/sec/android/app/camera/engine/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getCameraContext()Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ShutterTimerManager"

    const-string v0, "handleMessage return - Camera is not running"

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->cancelShutterTimer()V

    return-void

    .line 5
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6
    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_ONESHOT:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;->TIMER_INTERVAL:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->e(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;I)V

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;->d(Lcom/sec/android/app/camera/engine/ShutterTimerManagerImpl;II)V

    :goto_1
    return-void
.end method
