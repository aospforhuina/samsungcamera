.class public Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;
.super Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;
.source "ActionShotResultCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder<",
        "Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;Ljava/lang/Long;[JLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;->m(Ljava/lang/Long;[JLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic m(Ljava/lang/Long;[JLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;->onActionShotResultChanged(Ljava/lang/Long;[JLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static n(Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;-><init>(Lcom/samsung/android/camera/core2/callback/ActionShotResultCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public onActionShotResultChanged(Ljava/lang/Long;[JLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/callback/forwarder/a;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/ActionShotResultCallbackForwarder;Ljava/lang/Long;[JLcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
