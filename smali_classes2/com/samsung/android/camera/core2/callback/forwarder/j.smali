.class public final synthetic Lcom/samsung/android/camera/core2/callback/forwarder/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/callback/forwarder/AstroPictureCallbackForwarder;

.field public final synthetic b:I

.field public final synthetic c:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/callback/forwarder/AstroPictureCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/j;->a:Lcom/samsung/android/camera/core2/callback/forwarder/AstroPictureCallbackForwarder;

    iput p2, p0, Lcom/samsung/android/camera/core2/callback/forwarder/j;->b:I

    iput-object p3, p0, Lcom/samsung/android/camera/core2/callback/forwarder/j;->c:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/j;->a:Lcom/samsung/android/camera/core2/callback/forwarder/AstroPictureCallbackForwarder;

    iget v1, p0, Lcom/samsung/android/camera/core2/callback/forwarder/j;->b:I

    iget-object p0, p0, Lcom/samsung/android/camera/core2/callback/forwarder/j;->c:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p0}, Lcom/samsung/android/camera/core2/callback/forwarder/AstroPictureCallbackForwarder;->p(Lcom/samsung/android/camera/core2/callback/forwarder/AstroPictureCallbackForwarder;ILcom/samsung/android/camera/core2/CamDevice;)V

    return-void
.end method
