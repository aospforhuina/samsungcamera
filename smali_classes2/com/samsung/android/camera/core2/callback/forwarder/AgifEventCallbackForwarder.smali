.class public Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;
.super Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;
.source "AgifEventCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/AgifEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder<",
        "Lcom/samsung/android/camera/core2/callback/AgifEventCallback;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/AgifEventCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/callback/AgifEventCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;->q(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;->s(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic n(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;->r(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic o(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;->p(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic p(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;->onAgifBurstPictureCompleted(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic q(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;->onAgifBurstPictureStarted(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic r(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;->onCaptureResult(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic s(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/AgifEventCallback;->onProgress(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static t(Lcom/samsung/android/camera/core2/callback/AgifEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;-><init>(Lcom/samsung/android/camera/core2/callback/AgifEventCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public onAgifBurstPictureCompleted(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/g;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAgifBurstPictureStarted(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/e;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCaptureResult(Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/camera/core2/callback/forwarder/h;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;Landroid/net/Uri;Landroid/util/Size;Lcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onProgress(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/f;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/AgifEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
