.class Lcom/samsung/android/camera/core2/device/CamDeviceConfig;
.super Ljava/lang/Object;
.source "CamDeviceConfig.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/samsung/android/camera/core2/CamDevice$StateCallback;

.field private final c:Lcom/samsung/android/camera/core2/CamCapability;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/core2/CamDevice$StateCallback;Lcom/samsung/android/camera/core2/CamCapability;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->b:Lcom/samsung/android/camera/core2/CamDevice$StateCallback;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->c:Lcom/samsung/android/camera/core2/CamCapability;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method a()Lcom/samsung/android/camera/core2/CamCapability;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->c:Lcom/samsung/android/camera/core2/CamCapability;

    return-object p0
.end method

.method b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->a:Landroid/content/Context;

    return-object p0
.end method

.method c()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->e:Landroid/os/Handler;

    return-object p0
.end method

.method d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->d:Ljava/lang/String;

    return-object p0
.end method

.method e()Lcom/samsung/android/camera/core2/CamDevice$StateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceConfig;->b:Lcom/samsung/android/camera/core2/CamDevice$StateCallback;

    return-object p0
.end method
