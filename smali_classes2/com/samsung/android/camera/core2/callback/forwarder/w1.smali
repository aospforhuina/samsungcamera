.class public final synthetic Lcom/samsung/android/camera/core2/callback/forwarder/w1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;

.field public final synthetic b:[B

.field public final synthetic c:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;[BLcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/w1;->a:Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/w1;->b:[B

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/w1;->c:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/w1;->a:Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/w1;->b:[B

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/w1;->c:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;->p(Lcom/samsung/android/camera/core2/callback/forwarder/PanoramaEventCallbackForwarder;[BLcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
