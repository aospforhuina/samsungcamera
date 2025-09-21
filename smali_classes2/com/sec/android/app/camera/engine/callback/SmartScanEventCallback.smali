.class Lcom/sec/android/app/camera/engine/callback/SmartScanEventCallback;
.super Lcom/sec/android/app/camera/engine/callback/BaseCallback;
.source "SmartScanEventCallback.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/engine/callback/BaseCallback<",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;-><init>(Lcom/sec/android/app/camera/interfaces/InternalEngine;Lcom/sec/android/app/camera/engine/request/MakerHolder;)V

    return-void
.end method

.method public static synthetic b(Z[FLcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/engine/callback/SmartScanEventCallback;->lambda$onSmartScanResult$0(Z[FLcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;)V

    return-void
.end method

.method private static synthetic lambda$onSmartScanResult$0(Z[FLcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;)V
    .locals 0

    invoke-interface {p2, p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager$SmartScanEventListener;->onSmartScanResult(Z[F)V

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
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/engine/request/MakerHolder;->setSmartScanEventCallback(Lcom/samsung/android/camera/core2/callback/SmartScanEventCallback;)V

    return-void
.end method

.method public onSmartScanResult(Z[FLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    new-instance p3, Lcom/sec/android/app/camera/engine/callback/d1;

    invoke-direct {p3, p1, p2}, Lcom/sec/android/app/camera/engine/callback/d1;-><init>(Z[F)V

    invoke-virtual {p0, p3}, Lcom/sec/android/app/camera/engine/callback/BaseCallback;->notifyEventToUiThread(Ljava/util/function/Consumer;)V

    return-void
.end method
