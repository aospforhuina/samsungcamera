.class Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;
.super Ljava/lang/Object;
.source "CamDeviceRepeatingStatePicture.java"

# interfaces
.implements Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;


# instance fields
.field private final b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private final c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "RepeatingPicture"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopBurstPictureRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l2()I

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v1, "sessionMode is not default"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePicture;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->G1()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v0

    :catch_1
    move-exception p0

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 8
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v0
.end method

.method public final getId()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "REPEATING_PICTURE"

    return-object p0
.end method
