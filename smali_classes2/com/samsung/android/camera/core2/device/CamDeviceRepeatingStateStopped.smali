.class Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;
.super Ljava/lang/Object;
.source "CamDeviceRepeatingStateStopped.java"

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

    const-string v1, "RepeatingStopped"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k(Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;)I
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    .line 1
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const-string/jumbo v3, "takePicture requestOptions : %s"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->k1()Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    .line 3
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->c:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 4
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->A1()Ljava/util/Map;

    move-result-object v3

    .line 5
    sget-object v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->r:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-static {v3, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceChecker;->a(Ljava/lang/Object;Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)Ljava/lang/Object;

    .line 6
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

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

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->K1()Lcom/samsung/android/camera/core2/CamDevice$SessionMode;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v4

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    .line 10
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

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
    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

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
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->k()Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j2(Ljava/util/EnumSet;)V

    .line 16
    :try_start_0
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 17
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->f1()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 18
    invoke-static {v3, v2, v4, v5}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e(Ljava/util/Map;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 19
    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 20
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->r()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 21
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/CamDevice;->t()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 22
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v7

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v8

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 24
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v9

    move-object/from16 v2, p1

    .line 25
    invoke-virtual/range {v2 .. v9}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->h(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)Landroid/util/Pair;

    move-result-object v12

    .line 26
    invoke-virtual {v10, v12}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->y(Landroid/util/Pair;)Ljava/util/Map;

    move-result-object v2

    .line 27
    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    .line 28
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 29
    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->b:Lcom/samsung/android/camera/core2/util/CLog$Tag;

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

    .line 30
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

    goto :goto_2

    .line 31
    :cond_2
    new-instance v2, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->m()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->q()Z

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    new-instance v4, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;

    invoke-direct {v4, v11, v13, v14}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;-><init>(Ljava/lang/Object;Lcom/samsung/android/camera/core2/CamDevice$ThumbnailCallback;Lcom/samsung/android/camera/core2/CamDevice$PictureDepthCallback;)V

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object v15, v2

    move-object/from16 v22, v4

    invoke-direct/range {v15 .. v24}, Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;-><init>(IZLandroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$CallbackHolder;II)V

    .line 33
    new-instance v4, Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    invoke-direct {v4, v5, v2, v11}, Lcom/samsung/android/camera/core2/device/CamDevicePicCaptureCallback;-><init>(Lcom/samsung/android/camera/core2/device/CamDeviceImpl;Lcom/samsung/android/camera/core2/device/CamDeviceUtils$PictureRequestInfo;Lcom/samsung/android/camera/core2/CamDevice$PictureCallback;)V

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 34
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->j1()Landroid/os/Handler;

    move-result-object v2

    .line 35
    invoke-virtual {v0, v3, v4, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v4, 0x0

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 37
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v5

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 38
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v6

    iget-object v2, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 39
    invoke-virtual {v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v7

    move-object/from16 v2, p1

    .line 40
    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 41
    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    sget-object v2, Lcom/samsung/android/camera/core2/CamDevice$CaptureState;->b:Lcom/samsung/android/camera/core2/CamDevice$CaptureState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->q2(Lcom/samsung/android/camera/core2/CamDevice$CaptureState;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 42
    :try_start_1
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object v3, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->t:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 43
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Ljava/lang/SecurityException;)V

    throw v2

    :catch_2
    move-exception v0

    .line 44
    new-instance v2, Lcom/samsung/android/camera/core2/exception/CamAccessException;

    invoke-direct {v2, v0}, Lcom/samsung/android/camera/core2/exception/CamAccessException;-><init>(Landroid/hardware/camera2/CameraAccessException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v12, :cond_3

    .line 45
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 46
    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->w1()Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 47
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->O1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v5

    iget-object v1, v1, Lcom/samsung/android/camera/core2/device/CamDeviceRepeatingStateStopped;->c:Lcom/samsung/android/camera/core2/device/CamDeviceImpl;

    .line 48
    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/device/CamDeviceImpl;->z1()Lcom/samsung/android/camera/core2/util/BlockingImageReader;

    move-result-object v6

    move-object/from16 v1, p1

    .line 49
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/camera/core2/CamDeviceRequestOptions;->x(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/view/Surface;Ljava/util/Map;Lcom/samsung/android/camera/core2/util/BlockingImageReader;Lcom/samsung/android/camera/core2/util/BlockingImageReader;)V

    .line 50
    :cond_3
    throw v0

    .line 51
    :cond_4
    new-instance v0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    const-string v1, "sessionMode is not default"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "REPEATING_STOPPED"

    return-object p0
.end method
