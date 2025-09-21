.class public Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;
.super Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;
.source "RecordStateCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/RecordStateCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder<",
        "Lcom/samsung/android/camera/core2/callback/RecordStateCallback;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/RecordStateCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/callback/RecordStateCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;->q(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;->p(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic n(Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;->o(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic o(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/RecordStateCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/RecordStateCallback;->onRecordRequestApplied(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic p(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/RecordStateCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/RecordStateCallback;->onRecordRequestError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic q(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/RecordStateCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/RecordStateCallback;->onRecordRequestRemoved(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static r(Lcom/samsung/android/camera/core2/callback/RecordStateCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;-><init>(Lcom/samsung/android/camera/core2/callback/RecordStateCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public onRecordRequestApplied(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/t2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/t2;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordRequestError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/s2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/s2;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRecordRequestRemoved(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/r2;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/r2;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/RecordStateCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
