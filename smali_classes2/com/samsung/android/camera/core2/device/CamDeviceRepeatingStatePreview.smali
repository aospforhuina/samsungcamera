.class Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;
.super Ljava/lang/Object;
.source "CamDeviceRepeatingStatePreview.java"

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

    const-string v1, "RepeatingPreview"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    return-void
.end method

.method public static synthetic n(Ljava/util/Map;Ljava/lang/Object;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->o(Ljava/util/Map;Ljava/lang/Object;Landroid/hardware/camera2/CaptureRequest$Key;)V

    return-void
.end method

.method private static synthetic o(Ljava/util/Map;Ljava/lang/Object;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private p(Ljava/util/Map;Z)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            "Ljava/lang/Object;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o1()Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find previewStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->Z0(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/samsung/android/camera/core2/device/CamDevicePrevSingleCaptureCallback;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {p2, v2, v1}, Lcom/samsung/android/camera/core2/device/CamDevicePrevSingleCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$PreviewStateCallback;)V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g1()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result p1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p0, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->i2(Lcom/samsung/android/camera/core2/device/CamDeviceCaptureCallback;)V

    return p1

    :catch_0
    move-exception p0

    .line 9
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 10
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw p1

    :catch_2
    move-exception p0

    .line 11
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {p1, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw p1
.end method


# virtual methods
.method public b(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setAfTrigger(%d)"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->p(Ljava/util/Map;Z)I

    move-result p0

    return p0
.end method

.method public c(II)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "setAfAndAePreCaptureTrigger(%d)(%d)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->p(Ljava/util/Map;Z)I

    move-result p0

    return p0

    .line 7
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string p2, "sessionMode is highSpeed"

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const-string/jumbo v4, "setTrigger - %s : %s"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v3, "setTrigger - empty"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/camera/core2/device/s2;

    invoke-direct {v3, v2, p2}, Lcom/samsung/android/camera/core2/device/s2;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    sget-object p1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object p2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->p(Ljava/util/Map;Z)I

    move-result p0

    return p0
.end method

.method public e(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "setAePreCaptureTrigger(%d)"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->p(Ljava/util/Map;Z)I

    move-result p0

    return p0

    .line 6
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v0, "sessionMode is highSpeed"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p0
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->G1()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V

    :try_start_0
    const-string v1, "AbortCapture"

    .line 5
    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 7
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->a:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    .line 8
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 10
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v0

    :catch_2
    move-exception p0

    .line 11
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v0
.end method

.method public final getId()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "applySettings"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l2()I

    move-result p0

    return p0
.end method

.method public i()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "restartPreviewRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "AbortCapture"

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/TraceWrapper;->traceBegin(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 6
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v1, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->a:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->o2()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    const-wide/16 v1, 0x64

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 8
    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "restartPreviewRepeating - Interrupted while waiting latch."

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-static {}, Lcom/sec/android/app/TraceWrapper;->traceEnd()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 10
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->l2()I

    move-result p0

    return p0

    :catch_1
    move-exception p0

    .line 11
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    .line 12
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v0

    :catch_3
    move-exception p0

    .line 13
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v0
.end method

.method public j(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    .line 1
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const-string/jumbo v3, "startBurstPictureRepeating requestOptions : %s"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u1()Landroid/view/Surface;

    move-result-object v15

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->d:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v15, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 6
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A1()Ljava/util/Map;

    move-result-object v3

    .line 7
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 8
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->h1()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    .line 9
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v4, "can\'t find burst picture callback on current session"

    invoke-static {v14, v2, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    sget-object v4, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p()Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    move-result-object v5

    if-eq v4, v5, :cond_4

    .line 11
    sget-object v4, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_0

    .line 13
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    const-string v5, "can\'t find thumbnail callback on current session"

    .line 14
    invoke-static {v4, v2, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v12, v4

    goto :goto_0

    :cond_0
    move-object v12, v11

    .line 15
    :goto_0
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->k()Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j2(Ljava/util/EnumSet;)V

    .line 16
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 17
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 18
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 19
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 20
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 21
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->t()Ljava/util/List;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v2, p1

    move-object v6, v15

    .line 25
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->h(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 26
    :try_start_1
    invoke-virtual {v10, v2}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->y(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 27
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 28
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 29
    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore oldOption key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 30
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v7, v8, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v11, v2

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v11, v2

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object v11, v2

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v11, v2

    goto/16 :goto_b

    .line 31
    :cond_1
    :try_start_3
    new-instance v3, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->m()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v13

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v7, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-direct {v7, v14, v12, v11}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object v11, v3

    move v12, v5

    move-object v5, v14

    move-object v14, v15

    move-object v8, v15

    move-object v15, v6

    move-object/from16 v18, v7

    :try_start_4
    invoke-direct/range {v11 .. v20}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;II)V

    .line 32
    new-instance v6, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;

    iget-object v7, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {v6, v7, v3, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;)V

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 33
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g1()Landroid/os/Handler;

    move-result-object v3

    .line 34
    invoke-virtual {v0, v4, v6, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 36
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 37
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v6

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 38
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v7

    move-object/from16 v2, p1

    move-object v4, v8

    .line 39
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 40
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v3, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    .line 41
    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->F1()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V

    return v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v8, v15

    :goto_2
    move-object v11, v2

    goto :goto_d

    :catch_6
    move-exception v0

    move-object v8, v15

    :goto_3
    move-object v11, v2

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v8, v15

    :goto_4
    move-object v11, v2

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v8, v15

    :goto_5
    move-object v11, v2

    goto :goto_c

    :catchall_3
    move-exception v0

    :goto_6
    move-object v8, v15

    goto :goto_d

    :catch_9
    move-exception v0

    :goto_7
    move-object v8, v15

    .line 42
    :goto_8
    :try_start_5
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_a
    move-exception v0

    :goto_9
    move-object v8, v15

    .line 43
    :goto_a
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_b
    move-exception v0

    :goto_b
    move-object v8, v15

    .line 44
    :goto_c
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    :goto_d
    if-eqz v11, :cond_2

    .line 45
    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 46
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v4

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 47
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v5

    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 48
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v6

    move-object/from16 v1, p1

    move-object v3, v8

    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 50
    :cond_2
    throw v0

    .line 51
    :cond_3
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v1, "sessionMode is not default"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_4
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v1, "pending capture request exist"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public k(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I
    .locals 26

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A1()Ljava/util/Map;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 5
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x1()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    .line 6
    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v4, "can\'t find picture callback on current session"

    invoke-static {v11, v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    sget-object v4, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    .line 9
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    const-string v5, "can\'t find thumbnail callback on current session"

    .line 10
    invoke-static {v4, v3, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v13, v4

    goto :goto_0

    :cond_0
    move-object v13, v12

    .line 11
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    const-string v5, "can\'t find pictureDepth callback on current session"

    .line 13
    invoke-static {v4, v3, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v4

    goto :goto_1

    :cond_1
    move-object v14, v12

    .line 14
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t1()I

    move-result v3

    if-lez v3, :cond_2

    .line 15
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u1()Landroid/view/Surface;

    move-result-object v3

    :goto_2
    move-object/from16 v25, v3

    goto :goto_3

    .line 16
    :cond_2
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r1()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s1()Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 17
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s1()Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object/from16 v25, v12

    .line 18
    :goto_3
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->k()Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j2(Ljava/util/EnumSet;)V

    .line 19
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p1()J

    move-result-wide v3

    .line 20
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "takePicture - latestPreviewTimestamp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 22
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 23
    invoke-static {v2, v5, v6, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 24
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 26
    invoke-static {v2, v5, v6, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 27
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 28
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 29
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamDevice;->t()Ljava/util/List;

    move-result-object v6

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 30
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v8

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 31
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 32
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v10

    move-object/from16 v3, p1

    move-object v4, v2

    move-object/from16 v7, v25

    .line 33
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->h(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v12
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v3, p1

    .line 34
    :try_start_1
    invoke-virtual {v3, v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->y(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 35
    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 36
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 37
    iget-object v7, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restore oldOption key : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " value : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 38
    iget-object v7, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v8, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v8, v9, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 39
    :cond_4
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v7, 0x0

    .line 40
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 41
    invoke-static {v2, v4, v6, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 42
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->m()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v4, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-direct {v4, v11, v13, v14}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object v15, v2

    move-object/from16 v18, v25

    move-object/from16 v22, v4

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;II)V

    .line 44
    new-instance v4, Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {v4, v6, v2, v11}, Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;)V

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 45
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j1()Landroid/os/Handler;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v5, v4, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 48
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 49
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 50
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v4, p1

    move-object/from16 v6, v25

    .line 51
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 52
    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v2, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    return v0

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v3, p1

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v3, p1

    .line 53
    :goto_5
    :try_start_2
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v4, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v4, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    move-exception v0

    move-object/from16 v3, p1

    .line 54
    :goto_6
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_5
    move-exception v0

    move-object/from16 v3, p1

    .line 55
    :goto_7
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_8
    if-eqz v12, :cond_5

    .line 56
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 57
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 58
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 59
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v4, p1

    move-object/from16 v6, v25

    .line 60
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 61
    :cond_5
    throw v0

    .line 62
    :cond_6
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v1, "sessionMode is not default"

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public l(Ljava/util/List;)I
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 2
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 3
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A1()Ljava/util/Map;

    move-result-object v2

    .line 4
    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 5
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->v1()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;

    .line 6
    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v4, "can\'t find multi picture callback on current session"

    invoke-static {v11, v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    sget-object v4, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v5

    if-ne v4, v5, :cond_9

    .line 8
    sget-object v4, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p()Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    move-result-object v5

    if-eq v4, v5, :cond_8

    .line 9
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t1()I

    move-result v3

    if-lez v3, :cond_0

    .line 10
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u1()Landroid/view/Surface;

    move-result-object v3

    :goto_0
    move-object/from16 v23, v3

    goto :goto_1

    .line 11
    :cond_0
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r1()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s1()Landroid/media/ImageReader;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 12
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s1()Landroid/media/ImageReader;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/16 v23, 0x0

    .line 13
    :goto_1
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->l(Ljava/util/List;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j2(Ljava/util/EnumSet;)V

    .line 14
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p1()J

    move-result-wide v3

    .line 15
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "takeMultiPicture - latestPreviewTimestamp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 16
    :try_start_0
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 17
    invoke-virtual {v7}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 18
    invoke-static {v2, v5, v6, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 19
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 21
    invoke-static {v2, v5, v6, v3}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 22
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_f
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v3, 0x1

    move v13, v3

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 24
    :goto_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v13, v3, :cond_5

    add-int/lit8 v3, v13, -0x1

    move-object/from16 v9, p1

    .line 25
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 26
    :try_start_2
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 27
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 28
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/CamDevice;->t()Ljava/util/List;

    move-result-object v6

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 29
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v16

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 30
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v17

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 31
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v18
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v3, v8

    move-object v4, v2

    move-object/from16 v7, v23

    move-object v12, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move/from16 v16, v13

    move-object v13, v10

    move-object/from16 v10, v18

    .line 32
    :try_start_3
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->h(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v10
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    :try_start_4
    invoke-virtual {v12, v10}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->y(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v3

    .line 34
    iget-object v4, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 35
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v5, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    .line 37
    invoke-virtual {v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->m()I

    move-result v6

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v8, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    .line 38
    invoke-virtual {v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v9}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N1()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    .line 39
    :goto_3
    invoke-virtual {v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->o()Z

    move-result v13

    if-eqz v13, :cond_3

    iget-object v13, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v13}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y1()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    :goto_4
    invoke-direct {v8, v11, v9, v13}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V

    .line 40
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v25, v16

    move-object v13, v5

    move-object v9, v14

    move v14, v6

    move-object v6, v15

    move v15, v7

    move-object/from16 v16, v23

    move-object/from16 v20, v8

    move/from16 v21, v25

    invoke-direct/range {v13 .. v22}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;II)V

    .line 41
    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 43
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore oldOption key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 44
    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v7, v8, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_5

    .line 45
    :cond_4
    iget-object v3, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 46
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 47
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 48
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v3

    move-object v4, v12

    move-object v14, v6

    move-object/from16 v6, v23

    move-object v15, v9

    move-object v9, v3

    .line 49
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v13, v25, 0x1

    move-object v4, v12

    move-object/from16 v26, v15

    move-object v15, v14

    move-object/from16 v14, v26

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v12

    move-object v12, v10

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object/from16 v24, v12

    move-object v12, v10

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object/from16 v24, v12

    move-object v12, v10

    goto/16 :goto_12

    :catch_2
    move-exception v0

    move-object/from16 v24, v12

    move-object v12, v10

    goto/16 :goto_13

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v12, v8

    move-object v13, v10

    :goto_6
    move-object v4, v12

    goto/16 :goto_a

    :catch_6
    move-exception v0

    move-object v12, v8

    move-object v13, v10

    :goto_7
    move-object/from16 v24, v12

    goto/16 :goto_c

    :catch_7
    move-exception v0

    move-object v12, v8

    move-object v13, v10

    :goto_8
    move-object/from16 v24, v12

    goto/16 :goto_e

    :catch_8
    move-exception v0

    move-object v12, v8

    move-object v13, v10

    :goto_9
    move-object/from16 v24, v12

    goto/16 :goto_10

    :cond_5
    move-object v13, v10

    move-object/from16 v26, v15

    move-object v15, v14

    move-object/from16 v14, v26

    .line 50
    :try_start_5
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    const-wide/16 v6, 0x0

    .line 51
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 52
    invoke-static {v2, v3, v5, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 53
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDeviceMultiPicCaptureCallback;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {v2, v3, v15, v11}, Lcom/samsung/android/camera/core2/device/CamDeviceMultiPicCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Ljava/util/Map;Lcom/samsung/android/camera/core2/CamDevice$MultiPictureCallback;)V

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 54
    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j1()Landroid/os/Handler;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v14, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v13, :cond_6

    if-eqz v4, :cond_6

    .line 56
    iget-object v2, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 57
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 58
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 59
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v6, v23

    .line 60
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 61
    :cond_6
    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v2, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    return v0

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    goto :goto_f

    :catchall_4
    move-exception v0

    move-object v13, v10

    :goto_a
    move-object v12, v13

    goto :goto_14

    :catch_c
    move-exception v0

    move-object v13, v10

    :goto_b
    move-object/from16 v24, v4

    :goto_c
    move-object v12, v13

    goto :goto_11

    :catch_d
    move-exception v0

    move-object v13, v10

    :goto_d
    move-object/from16 v24, v4

    :goto_e
    move-object v12, v13

    goto :goto_12

    :catch_e
    move-exception v0

    move-object v13, v10

    :goto_f
    move-object/from16 v24, v4

    :goto_10
    move-object v12, v13

    goto :goto_13

    :catchall_5
    move-exception v0

    const/4 v4, 0x0

    const/4 v12, 0x0

    goto :goto_14

    :catch_f
    move-exception v0

    const/4 v12, 0x0

    const/16 v24, 0x0

    .line 62
    :goto_11
    :try_start_6
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_10
    move-exception v0

    const/4 v12, 0x0

    const/16 v24, 0x0

    .line 63
    :goto_12
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_11
    move-exception v0

    const/4 v12, 0x0

    const/16 v24, 0x0

    .line 64
    :goto_13
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    move-exception v0

    move-object/from16 v4, v24

    :goto_14
    if-eqz v12, :cond_7

    if-eqz v4, :cond_7

    .line 65
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 66
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 67
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 68
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v6, v23

    .line 69
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 70
    :cond_7
    throw v0

    .line 71
    :cond_8
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v1, "pending capture request exist"

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_9
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v1, "sessionMode is not default"

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public m(Ljava/util/List;)I
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    .line 2
    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 3
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u1()Landroid/view/Surface;

    move-result-object v3

    .line 4
    sget-object v4, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->d:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 5
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->D1()Ljava/util/Map;

    move-result-object v14

    .line 6
    sget-object v4, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v14, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 7
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H1()Landroid/view/Surface;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v3, "recordSurface doesn\'t exist"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    :goto_0
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->h1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;

    .line 10
    sget-object v4, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v5, "can\'t find burst picture callback on current session"

    invoke-static {v15, v4, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->p()Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    move-result-object v6

    if-eq v5, v6, :cond_9

    .line 12
    sget-object v5, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v6

    if-ne v5, v6, :cond_8

    .line 13
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->l(Ljava/util/List;)Ljava/util/EnumSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j2(Ljava/util/EnumSet;)V

    const/16 v16, 0x0

    .line 14
    :try_start_0
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 15
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 16
    invoke-static {v14, v4, v5, v6}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 17
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 18
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 19
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v4, 0x1

    move v10, v4

    move-object/from16 v4, v16

    move-object v9, v4

    :goto_1
    if-gt v10, v11, :cond_5

    add-int/lit8 v5, v10, -0x1

    move-object/from16 v8, p1

    .line 20
    :try_start_1
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_f
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 21
    :try_start_2
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 22
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v6

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 23
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/CamDevice;->t()Ljava/util/List;

    move-result-object v17

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 24
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v18

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 25
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v19

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 26
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v20
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v4, v7

    move-object v5, v14

    move-object/from16 v21, v14

    move-object v14, v7

    move-object/from16 v7, v17

    move-object v8, v3

    move-object/from16 v17, v12

    move-object v12, v9

    move-object/from16 v9, v18

    move/from16 v18, v10

    move-object/from16 v10, v19

    move/from16 v19, v11

    move-object/from16 v11, v20

    .line 27
    :try_start_3
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->h(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v12
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 28
    :try_start_4
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/camera/core2/device/q2;

    invoke-direct {v6, v5}, Lcom/samsung/android/camera/core2/device/q2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 29
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H1()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/camera/core2/device/q2;

    invoke-direct {v6, v5}, Lcom/samsung/android/camera/core2/device/q2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 30
    invoke-virtual {v14, v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->y(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 31
    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    .line 32
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_2

    :try_start_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 33
    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restore oldOption key : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 34
    iget-object v6, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v7, v8, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_2

    .line 35
    :cond_2
    :try_start_6
    new-instance v10, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    .line 36
    invoke-virtual {v14}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->m()I

    move-result v5

    invoke-virtual {v14}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v6

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 37
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v9

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H1()Landroid/view/Surface;

    move-result-object v20

    new-instance v7, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    .line 38
    invoke-virtual {v14}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v4
    :try_end_6
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_3

    :try_start_7
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;
    :try_end_7
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    :cond_3
    move-object/from16 v4, v16

    .line 39
    :goto_3
    :try_start_8
    invoke-virtual {v14}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->o()Z

    move-result v22
    :try_end_8
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v22, :cond_4

    :try_start_9
    iget-object v8, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v8}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y1()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;
    :try_end_9
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :cond_4
    move-object/from16 v8, v16

    :goto_4
    :try_start_a
    invoke-direct {v7, v15, v4, v8}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V
    :try_end_a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_a .. :try_end_a} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object v4, v10

    move-object/from16 v23, v7

    move-object v7, v3

    const/4 v8, 0x0

    move-object/from16 v24, v10

    move-object/from16 v10, v20

    move-object/from16 v25, v11

    move-object/from16 v11, v23

    move-object/from16 v26, v12

    move-object/from16 v27, v17

    move/from16 v12, v18

    move-object/from16 v17, v2

    move-object v2, v13

    move/from16 v13, v19

    :try_start_b
    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;II)V

    move-object/from16 v5, v24

    move-object/from16 v4, v25

    move-object/from16 v10, v27

    .line 40
    invoke-interface {v10, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move-object/from16 v11, v26

    .line 42
    :try_start_c
    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 43
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 44
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 45
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object v4, v14

    move-object v6, v3

    .line 46
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 47
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v5, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/camera/core2/device/r2;

    invoke-direct {v6, v5}, Lcom/samsung/android/camera/core2/device/r2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 48
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H1()Landroid/view/Surface;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    iget-object v5, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/samsung/android/camera/core2/device/r2;

    invoke-direct {v6, v5}, Lcom/samsung/android/camera/core2/device/r2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v4, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    add-int/lit8 v4, v18, 0x1

    move-object v13, v2

    move-object v12, v10

    move-object v9, v11

    move-object/from16 v2, v17

    move/from16 v11, v19

    move v10, v4

    move-object v4, v14

    move-object/from16 v14, v21

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v11, v26

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v11, v26

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v11, v26

    goto :goto_7

    :catch_5
    move-exception v0

    move-object/from16 v11, v26

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v11, v12

    :goto_5
    move-object v2, v0

    goto :goto_a

    :catch_6
    move-exception v0

    move-object v11, v12

    :goto_6
    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_15

    :catch_7
    move-exception v0

    move-object v11, v12

    :goto_7
    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_16

    :catch_8
    move-exception v0

    move-object v11, v12

    :goto_8
    move-object v2, v0

    move-object/from16 v16, v11

    goto/16 :goto_17

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_9
    move-exception v0

    goto :goto_b

    :catch_a
    move-exception v0

    goto :goto_c

    :catch_b
    move-exception v0

    goto :goto_d

    :catchall_4
    move-exception v0

    move-object v14, v7

    move-object v12, v9

    :goto_9
    move-object v2, v0

    move-object v11, v12

    :goto_a
    move-object v4, v14

    goto/16 :goto_18

    :catch_c
    move-exception v0

    move-object v14, v7

    move-object v12, v9

    :goto_b
    move-object v2, v0

    goto/16 :goto_10

    :catch_d
    move-exception v0

    move-object v14, v7

    move-object v12, v9

    :goto_c
    move-object v2, v0

    goto/16 :goto_12

    :catch_e
    move-exception v0

    move-object v14, v7

    move-object v12, v9

    :goto_d
    move-object v2, v0

    goto/16 :goto_14

    :catchall_5
    move-exception v0

    move-object v12, v9

    goto/16 :goto_e

    :catch_f
    move-exception v0

    move-object v12, v9

    goto/16 :goto_f

    :catch_10
    move-exception v0

    move-object v12, v9

    goto/16 :goto_11

    :catch_11
    move-exception v0

    move-object v12, v9

    goto/16 :goto_13

    :cond_5
    move-object/from16 v17, v2

    move-object v10, v12

    move-object v2, v13

    move-object v12, v9

    .line 49
    :try_start_d
    new-instance v5, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {v5, v6, v10, v15}, Lcom/samsung/android/camera/core2/device/CamDeviceBurstPicRecordCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Ljava/util/Map;Lcom/samsung/android/camera/core2/CamDevice$BurstPictureCallback;)V

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 50
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->g1()Landroid/os/Handler;

    move-result-object v6

    move-object/from16 v7, v17

    .line 51
    invoke-virtual {v7, v2, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v2
    :try_end_d
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_d .. :try_end_d} :catch_14
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v12, :cond_6

    if-eqz v4, :cond_6

    .line 52
    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 53
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 54
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 55
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object v6, v3

    .line 56
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 57
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/camera/core2/device/r2;

    invoke-direct {v5, v4}, Lcom/samsung/android/camera/core2/device/r2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 58
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H1()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/camera/core2/device/r2;

    invoke-direct {v5, v4}, Lcom/samsung/android/camera/core2/device/r2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 59
    :cond_6
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v4, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    .line 60
    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->E1()Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t2(Lcom/samsung/android/camera/core2/CamDeviceRepeatingState;)V

    return v2

    :catchall_6
    move-exception v0

    :goto_e
    move-object v2, v0

    move-object v11, v12

    goto :goto_18

    :catch_12
    move-exception v0

    :goto_f
    move-object v2, v0

    move-object v14, v4

    :goto_10
    move-object/from16 v16, v12

    goto :goto_15

    :catch_13
    move-exception v0

    :goto_11
    move-object v2, v0

    move-object v14, v4

    :goto_12
    move-object/from16 v16, v12

    goto :goto_16

    :catch_14
    move-exception v0

    :goto_13
    move-object v2, v0

    move-object v14, v4

    :goto_14
    move-object/from16 v16, v12

    goto :goto_17

    :catchall_7
    move-exception v0

    move-object v2, v0

    move-object/from16 v4, v16

    move-object v11, v4

    goto :goto_18

    :catch_15
    move-exception v0

    move-object v2, v0

    move-object/from16 v14, v16

    .line 61
    :goto_15
    :try_start_e
    new-instance v4, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v5, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v4, v5, v2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v4

    :catch_16
    move-exception v0

    move-object v2, v0

    move-object/from16 v14, v16

    .line 62
    :goto_16
    new-instance v4, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v4, v2}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v4

    :catch_17
    move-exception v0

    move-object v2, v0

    move-object/from16 v14, v16

    .line 63
    :goto_17
    new-instance v4, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v4, v2}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    move-object v4, v14

    move-object/from16 v11, v16

    :goto_18
    if-eqz v11, :cond_7

    if-eqz v4, :cond_7

    .line 64
    iget-object v5, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 65
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 66
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v6, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 67
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object v6, v3

    .line 68
    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 69
    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iget-object v4, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/samsung/android/camera/core2/device/r2;

    invoke-direct {v5, v4}, Lcom/samsung/android/camera/core2/device/r2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 70
    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStatePreview;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->H1()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iget-object v3, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/camera/core2/device/r2;

    invoke-direct {v4, v3}, Lcom/samsung/android/camera/core2/device/r2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 71
    :cond_7
    throw v2

    .line 72
    :cond_8
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v2, "sessionMode is not default"

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_9
    new-instance v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v2, "pending capture request exist"

    invoke-direct {v1, v4, v2}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "REPEATING_PREVIEW"

    return-object p0
.end method
