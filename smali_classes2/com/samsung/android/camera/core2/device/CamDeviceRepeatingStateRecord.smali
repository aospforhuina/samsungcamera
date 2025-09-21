.class Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;
.super Ljava/lang/Object;
.source "CamDeviceRepeatingStateRecord.java"

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

    const-string v1, "RepeatingRecord"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    return-void
.end method

.method public static synthetic n(Ljava/util/Map;Ljava/lang/Object;Landroid/hardware/camera2/CaptureRequest$Key;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->o(Ljava/util/Map;Ljava/lang/Object;Landroid/hardware/camera2/CaptureRequest$Key;)V

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
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q1()Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v3, "can\'t find recordStateCallback on current session"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->c1(Ljava/util/Map;Z)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/samsung/android/camera/core2/device/CamDeviceRecSingleCaptureCallback;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {p2, v2, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceRecSingleCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/CamDevice$RecordStateCallback;)V

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

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
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

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
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v2

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->p(Ljava/util/Map;Z)I

    move-result p0

    return p0
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
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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
    iget-object v2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v3, "setTrigger - empty"

    invoke-static {v2, v3}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/samsung/android/camera/core2/device/t2;

    invoke-direct {v3, v2, p2}, Lcom/samsung/android/camera/core2/device/t2;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    sget-object p1, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object p2, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object p2

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->p(Ljava/util/Map;Z)I

    move-result p0

    return p0
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string/jumbo v1, "stopRepeating"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

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
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

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

    const/4 p0, 0x2

    return p0
.end method

.method public h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "applySettings"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->b:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k2()I

    move-result p0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m2()I

    move-result p0

    :goto_0
    return p0
.end method

.method public k(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    .line 1
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const-string/jumbo v3, "takePicture requestOptions : %s"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A1()Ljava/util/Map;

    move-result-object v3

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 6
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->x1()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;

    .line 7
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    const-string v4, "can\'t find picture callback on current session"

    invoke-static {v11, v2, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    sget-object v4, Lcom/samsung/android/camera/core2/CamDevice$SessionMode;->a:Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    .line 10
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->N1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;

    const-string v5, "can\'t find thumbnail callback on current session"

    .line 11
    invoke-static {v4, v2, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v13, v4

    goto :goto_0

    :cond_0
    move-object v13, v12

    .line 12
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->o()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->y1()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;

    const-string v5, "can\'t find pictureDepth callback on current session"

    .line 14
    invoke-static {v4, v2, v5}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->b(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)Ljava/lang/Object;

    move-object v14, v4

    goto :goto_1

    :cond_1
    move-object v14, v12

    .line 15
    :goto_1
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->t1()I

    move-result v2

    if-lez v2, :cond_2

    .line 16
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->u1()Landroid/view/Surface;

    move-result-object v2

    :goto_2
    move-object/from16 v25, v2

    goto :goto_3

    .line 17
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r1()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s1()Landroid/media/ImageReader;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 18
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->s1()Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object/from16 v25, v12

    .line 19
    :goto_3
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->k()Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j2(Ljava/util/EnumSet;)V

    .line 20
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 21
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 22
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 23
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 25
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->t()Ljava/util/List;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 26
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 27
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 28
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v2, p1

    move-object/from16 v6, v25

    .line 29
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->h(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v12

    .line 30
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/camera/core2/device/q2;

    invoke-direct {v4, v3}, Lcom/samsung/android/camera/core2/device/q2;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    invoke-virtual {v2, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 31
    invoke-virtual {v10, v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->y(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 32
    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 33
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 34
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restore oldOption key : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/camera/core2/util/CLog;->m(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 35
    iget-object v5, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v7, v4}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->d(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Set;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_4

    .line 36
    :cond_4
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->m()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v17

    const/16 v19, 0x0

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 38
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v20

    const/16 v21, 0x0

    new-instance v4, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-direct {v4, v11, v13, v14}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object v15, v2

    move-object/from16 v18, v25

    move-object/from16 v22, v4

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;II)V

    .line 39
    new-instance v4, Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {v4, v5, v2, v11}, Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;)V

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 40
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j1()Landroid/os/Handler;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v3, v4, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 43
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 44
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v6

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 45
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v7

    move-object/from16 v2, p1

    move-object/from16 v4, v25

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 47
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v3}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 48
    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v2, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 49
    :try_start_1
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 50
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_2
    move-exception v0

    .line 51
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-eqz v12, :cond_5

    .line 52
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 53
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 54
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v6

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 55
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v7

    move-object/from16 v2, p1

    move-object/from16 v4, v25

    .line 56
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 57
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateRecord;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->m1()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 58
    :cond_5
    throw v0

    .line 59
    :cond_6
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v1, "sessionMode is not default"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "REPEATING_RECORD"

    return-object p0
.end method
