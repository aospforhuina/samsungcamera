.class public final synthetic Lcom/samsung/android/camera/core2/callback/forwarder/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;

.field public final synthetic b:Lcom/samsung/android/camera/core2/CamDevice;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;Lcom/samsung/android/camera/core2/CamDevice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/z;->a:Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/z;->b:Lcom/samsung/android/camera/core2/CamDevice;

    iput p3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/z;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/z;->a:Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/z;->b:Lcom/samsung/android/camera/core2/CamDevice;

    iget p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/z;->c:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;->o(Lcom/samsung/android/camera/core2/callback/forwarder/CamDeviceStateCallbackForwarder;Lcom/samsung/android/camera/core2/CamDevice;I)V

    return-void
.end method
