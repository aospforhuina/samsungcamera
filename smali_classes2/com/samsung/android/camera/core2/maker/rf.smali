.class public final synthetic Lcom/samsung/android/camera/core2/maker/rf;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/hardware/camera2/CaptureFailure;

.field public final synthetic b:Lcom/samsung/android/camera/core2/CamDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/rf;->a:Landroid/hardware/camera2/CaptureFailure;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/rf;->b:Lcom/samsung/android/camera/core2/CamDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/rf;->a:Landroid/hardware/camera2/CaptureFailure;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/rf;->b:Lcom/samsung/android/camera/core2/CamDevice;

    check-cast p1, Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$7;->f(Landroid/hardware/camera2/CaptureFailure;Lcom/samsung/android/camera/core2/CamDevice;Lcom/samsung/android/camera/core2/callback/PreviewStateCallback;)V

    return-void
.end method
