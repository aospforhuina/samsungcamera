.class public Lcom/samsung/android/camera/core2/callback/forwarder/PreviewSnapShotCallbackForwarder;
.super Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;
.source "PreviewSnapShotCallbackForwarder.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder<",
        "Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;",
        ">;",
        "Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/callback/forwarder/CallbackForwarder;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    return-void
.end method

.method public static l(Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;Landroid/os/Handler;)Lcom/samsung/android/camera/core2/callback/forwarder/PreviewSnapShotCallbackForwarder;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewSnapShotCallbackForwarder;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/core2/callback/forwarder/PreviewSnapShotCallbackForwarder;-><init>(Lcom/samsung/android/camera/core2/callback/PreviewSnapShotCallback;Landroid/os/Handler;)V

    return-object v0
.end method
