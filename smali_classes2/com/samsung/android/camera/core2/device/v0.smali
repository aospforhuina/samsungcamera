.class public final synthetic Lcom/samsung/android/camera/core2/device/v0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

.field public final synthetic b:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/v0;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/v0;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/v0;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/v0;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    invoke-static {v0, p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->a0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V

    return-void
.end method
