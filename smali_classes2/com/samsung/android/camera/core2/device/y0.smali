.class public final synthetic Lcom/samsung/android/camera/core2/device/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/y0;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/y0;->a:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    check-cast p1, Lcom/samsung/android/camera/core2/CamCapability;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->i0(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamCapability;)V

    return-void
.end method
