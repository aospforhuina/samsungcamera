.class Lcom/sec/android/app/camera/engine/callback/SlowMotionEventCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "SlowMotionEventCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$SlowMotionEventListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    return-void
.end method

.method public static synthetic b([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;Lcom/sec/android/app/camera/interfaces/CallbackManager$SlowMotionEventListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/callback/SlowMotionEventCallback;->lambda$onEventDetectionResult$0([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;Lcom/sec/android/app/camera/interfaces/CallbackManager$SlowMotionEventListener;)V

    return-void
.end method

.method private static synthetic lambda$onEventDetectionResult$0([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;Lcom/sec/android/app/camera/interfaces/CallbackManager$SlowMotionEventListener;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SlowMotionEventListener;->onEventDetectionResult([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;)V

    return-void
.end method


# virtual methods
.method enable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->mMakerHolder:Lcom/sec/android/app/camera/engine/request/MakerHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSlowMotionEventDetectionEventCallback(Lcom/samsung/android/camera/core2/callback/SlowMotionEventDetectionEventCallback;)V

    return-void
.end method

.method public onEventDetectionResult([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p2, Lcom/sec/android/app/camera/engine/callback/c1;

    invoke-direct {p2, p1}, Lcom/sec/android/app/camera/engine/callback/c1;-><init>([Lcom/samsung/android/camera/core2/container/SlowMotionEvent;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEvent(Ljava/util/function/Consumer;)V

    return-void
.end method
