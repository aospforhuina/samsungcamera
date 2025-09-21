.class public Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;
.super Lcom/samsung/android/camera/core2/node/Node;
.source "UwDistortionCorrectionNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode$NodeCallback;
    }
.end annotation


# static fields
.field private static final UW_DISTORTION_CORRECTION_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private mBuffer:[B

.field private mCapability:Lcom/samsung/android/camera/core2/CamCapability;

.field private final mContext:Landroid/content/Context;

.field private mInit:Z

.field private mOutBuffer:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "UwDistortionCorrectionNode"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->UW_DISTORTION_CORRECTION_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/CamCapability;Landroid/content/Context;Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode$NodeCallback;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->UW_DISTORTION_CORRECTION_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const v0, 0x27aca4

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/camera/core2/node/Node;-><init>(ILcom/samsung/android/camera/core2/util/CLog$Tag;Z)V

    .line 2
    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mContext:Landroid/content/Context;

    .line 3
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mCapability:Lcom/samsung/android/camera/core2/CamCapability;

    return-void
.end method


# virtual methods
.method protected declared-synchronized onDeinitialized()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/samsung/android/camera/core2/node/Node;->onDeinitialized()V

    .line 2
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mInit:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->release()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mInit:Z

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mBuffer:[B

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mOutBuffer:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized onInitialized(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/camera/core2/node/NativeNode$Command<",
            "*>;[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mInit:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mInit:Z

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/camera/core2/node/Node;->onInitialized(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureHeic(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureJpeg(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRaw(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRecovery(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/node/PictureFormatProcessableInterface;->processPictureRgba(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized processPictureYuv(Lcom/samsung/android/camera/core2/util/ImageBuffer;Lcom/samsung/android/camera/core2/ExtraBundle;)Lcom/samsung/android/camera/core2/util/ImageBuffer;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v3, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->UW_DISTORTION_CORRECTION_TAG:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "processPictureYuv E"

    invoke-static {v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/camera/core2/util/ImageInfo;->m()Landroid/util/Size;

    move-result-object v4

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/ImageInfo;->o()Lcom/samsung/android/camera/core2/util/StrideInfo;

    move-result-object v5

    .line 4
    iget-boolean v6, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mInit:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/ImageBuffer;->e()Lcom/samsung/android/camera/core2/util/ImageInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/util/ImageInfo;->h()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v6

    .line 6
    sget-object v7, Lcom/samsung/android/camera/core2/ExtraBundle;->b:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v2, v7}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 7
    invoke-virtual {v2, v7}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/camera/core2/CamCapability;

    iput-object v7, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 8
    :cond_0
    iget-object v7, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mBuffer:[B

    if-eqz v7, :cond_1

    array-length v7, v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v8

    if-eq v7, v8, :cond_2

    .line 9
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v7

    new-array v7, v7, [B

    iput-object v7, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mBuffer:[B

    .line 10
    :cond_2
    iget-object v7, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mOutBuffer:[B

    if-eqz v7, :cond_3

    array-length v7, v7

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v8

    if-eq v7, v8, :cond_4

    .line 11
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->capacity()I

    move-result v7

    new-array v7, v7, [B

    iput-object v7, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mOutBuffer:[B

    .line 12
    :cond_4
    iget-object v7, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mBuffer:[B

    invoke-virtual {v0, v7}, Lcom/samsung/android/camera/core2/util/BufferBase;->get([B)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 14
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v6, v7}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/hardware/camera2/params/Face;

    .line 15
    sget-object v8, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v6, v8}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 16
    iget-object v9, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v9, v8}, Lcom/samsung/android/camera/core2/CamCapability;->c2(Ljava/lang/Integer;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v8

    check-cast v9, Landroid/graphics/Rect;

    .line 17
    sget-object v9, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v6, v9}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    .line 18
    invoke-static {v6, v10}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Landroid/graphics/Rect;

    .line 19
    sget-object v9, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->S1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v6, v9}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-static {v9}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    const/4 v10, 0x0

    .line 20
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 21
    sget-object v10, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Z0:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v6, v10}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 22
    iget-object v11, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mCapability:Lcom/samsung/android/camera/core2/CamCapability;

    invoke-virtual {v11, v10}, Lcom/samsung/android/camera/core2/CamCapability;->f1(Ljava/lang/String;)F

    move-result v11

    .line 23
    sget-object v12, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v6, v12}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    const/4 v15, 0x0

    .line 24
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "processPictureYuv - cameraId : "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", zoomRatio : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", fov : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", activeArraySize : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", strideInfo : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getRowStride()I

    move-result v10

    invoke-virtual {v5}, Lcom/samsung/android/camera/core2/util/StrideInfo;->getHeightSlice()I

    move-result v5

    .line 27
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v13

    .line 28
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v6, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mCapability:Lcom/samsung/android/camera/core2/CamCapability;

    .line 29
    invoke-virtual {v6}, Lcom/samsung/android/camera/core2/CamCapability;->k1()[B

    move-result-object v18

    float-to-int v6, v11

    move v11, v5

    move v5, v15

    move v15, v4

    move-object/from16 v16, v8

    move/from16 v19, v6

    move/from16 v20, v9

    .line 30
    invoke-static/range {v10 .. v21}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->setImgInfo(IIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[BIFI)V

    if-eqz v7, :cond_5

    .line 31
    array-length v15, v7

    goto :goto_0

    :cond_5
    move v15, v5

    :goto_0
    const/16 v4, 0x3c

    invoke-static {v7, v15, v4}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->setFaceInfo([Landroid/hardware/camera2/params/Face;II)V

    .line 32
    iget-object v4, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mBuffer:[B

    iget-object v6, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mOutBuffer:[B

    invoke-static {v4, v6, v5}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->DistortionCorrection([B[BI)J

    .line 33
    iget-object v4, v1, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mOutBuffer:[B

    invoke-virtual {v0, v4}, Lcom/samsung/android/camera/core2/util/BufferBase;->put([B)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/core2/util/BufferBase;->rewind()V

    .line 35
    sget-object v4, Lcom/samsung/android/camera/core2/ExtraBundle;->r:Lcom/samsung/android/camera/core2/ExtraBundle$Key;

    invoke-virtual {v2, v4}, Lcom/samsung/android/camera/core2/ExtraBundle;->d(Lcom/samsung/android/camera/core2/ExtraBundle$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/camera/core2/ExtraBundle;->i(Lcom/samsung/android/camera/core2/ExtraBundle$Key;Ljava/lang/Object;)Lcom/samsung/android/camera/core2/ExtraBundle;

    goto :goto_1

    :cond_6
    const-string v2, "processPictureYuv - need Initialize"

    .line 37
    invoke-static {v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->p(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :goto_1
    const-string v2, "processPictureYuv X"

    .line 38
    invoke-static {v3, v2}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconfigure(Lcom/samsung/android/camera/core2/CamCapability;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/UwDistortionCorrectionNode;->mCapability:Lcom/samsung/android/camera/core2/CamCapability;

    return-void
.end method
