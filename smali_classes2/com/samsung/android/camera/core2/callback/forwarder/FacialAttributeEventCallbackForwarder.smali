.class public Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;
.super Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;
.source "FacialAttributeEventCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder<",
        "Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic l(Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;J[BLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;->o(J[BLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static synthetic m(Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;->n(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic n(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;->onError(ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method private synthetic o(J[BLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;->e(J[BLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method

.method public static p(Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;-><init>(Lcom/samsung/android/camera/core2/callback/FacialAttributeEventCallback;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public e(J[BLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v7, Lcom/samsung/android/camera/core2/callback/forwarder/q0;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/camera/core2/callback/forwarder/q0;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;J[BLcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/camera/core2/callback/forwarder/p0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/p0;-><init>(Lcom/samsung/android/camera/core2/callback/forwarder/FacialAttributeEventCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
