.class public Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;
.super Ljava/lang/Object;
.source "SelfieCorrectionEngine.java"


# static fields
.field private static final _FEATURE_NAMES:[Ljava/lang/String;

.field private static final _FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

.field private static final _LIB_VERSION:Ljava/lang/String; = "Version 1.1.3, Build 2021.06.22"

.field public static final _MODE_ULTRAWIDE_SELFIE:I = 0x2

.field public static final _MODE_WIDE_SELFIE:I = 0x1

.field public static final _MODE_WIDE_SINGLETAKE:I = 0x3

.field private static final _TAG:Ljava/lang/String; = "FacialBasedSelfieCorrection-AAR"

.field private static appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    sput-object v0, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->_FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v0, "selfie_correction.samsung.v1"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->_FEATURE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->appContext:Landroid/content/Context;

    const-string v0, "FacialBasedSelfieCorrection.camera.samsung"

    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native GetLibVersion()Ljava/lang/String;
.end method

.method public static Init(II)I
    .locals 2

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "Init() - Version : Version 1.1.3, Build 2021.06.22"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->InitNative(II)I

    move-result p0

    return p0
.end method

.method public static native InitNative(II)I
.end method

.method public static native InitNativePreview(II)I
.end method

.method public static InitPreview(II)I
    .locals 2

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "Init() - Version : Version 1.1.3, Build 2021.06.22"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->InitNativePreview(II)I

    move-result p0

    return p0
.end method

.method public static Release()I
    .locals 2

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "Release()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->ReleaseNative()I

    move-result v0

    return v0
.end method

.method public static native ReleaseNative()I
.end method

.method public static native ReleaseNativePreview()I
.end method

.method public static ReleasePreview()I
    .locals 2

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "Release()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->ReleaseNativePreview()I

    move-result v0

    return v0
.end method

.method public static RunFaceUndistortionFile(Ljava/lang/String;Ljava/lang/String;DI)I
    .locals 2

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "RunFaceUndistortionFile()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->RunFaceUndistortionFileNative(Ljava/lang/String;Ljava/lang/String;DI)I

    move-result p0

    return p0
.end method

.method public static native RunFaceUndistortionFileNative(Ljava/lang/String;Ljava/lang/String;DI)I
.end method

.method public static native RunFaceUndistortionNativeWithPadding([B[I)I
.end method

.method public static RunFaceUndistortionPreview([BLandroid/graphics/Bitmap;IIIIZDZI)I
    .locals 2

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "RunFaceUndistortionPreview()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p10}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->RunFaceUndistortionPreviewNative([BLandroid/graphics/Bitmap;IIIIZDZI)I

    move-result p0

    return p0
.end method

.method public static native RunFaceUndistortionPreviewNative([BLandroid/graphics/Bitmap;IIIIZDZI)I
.end method

.method public static RunFaceUndistortionWithPadding([BIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "RunFaceUndistortionWithPadding()"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static/range {p1 .. p9}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionSupport;->getParamArrayWithPadding(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)[I

    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->RunFaceUndistortionNativeWithPadding([B[I)I

    return-void
.end method

.method public static RunFaceUndistortionWithPadding([B[BIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    const-string v10, "FacialBasedSelfieCorrection-AAR"

    const/16 v1, 0x5a

    move/from16 v2, p10

    if-ge v2, v1, :cond_1

    const-string v1, "RunFaceUndistortionWithPadding() - Front 80\' Selfie Correction"

    .line 1
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionSupport;->getParamArrayWithPadding(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/hardware/camera2/params/Face;I)[I

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "RunFaceUndistortionWithPadding() - Wrong Face Rects, Return NULL array"

    .line 3
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RunFaceUndistortionWithPadding() - Return Original Input Image"

    .line 4
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->RunFaceUndistortionNativeWithPadding([B[I)I

    goto :goto_1

    :cond_1
    const-string v1, "RunFaceUndistortionWithPadding() - Rotating Ultra-wide Distortion Correction (PDC Only)"

    .line 6
    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int v1, p2, p3

    mul-int/lit8 v1, v1, 0x3

    .line 7
    div-int/lit8 v1, v1, 0x2

    .line 8
    new-array v3, v1, [B

    .line 9
    sget-object v4, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->init(Landroid/content/Context;)V

    .line 10
    iget v15, v6, Landroid/graphics/Rect;->right:I

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    const/high16 v18, 0x3f000000    # 0.5f

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v16, v4

    move/from16 v17, p10

    invoke-static/range {v11 .. v18}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->setImgInfo(IIIIIIIF)V

    const/16 v2, 0x3c

    const/4 v4, 0x0

    if-eqz v8, :cond_2

    .line 11
    array-length v5, v8

    invoke-static {v8, v5, v6, v7, v2}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->setFaceInfo([Landroid/hardware/camera2/params/Face;ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 12
    invoke-static {v5, v4, v6, v7, v2}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->setFaceInfo([Landroid/hardware/camera2/params/Face;ILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :goto_0
    const/4 v2, -0x1

    move-object/from16 v5, p1

    .line 13
    invoke-static {v0, v3, v5, v2}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->DistortionCorrection([B[B[BI)J

    .line 14
    invoke-static {}, Lcom/sec/android/vsw/uwdistortioncorrection/solution/UWDistortionCorrectionEngine;->release()V

    .line 15
    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    const-string v0, "RunFaceUndistortionWithPadding() - End"

    .line 16
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static RunFaceUndistortion_SingleTake([B[BIIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/graphics/Rect;I)V
    .locals 11

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "RunFaceUndistortion_SingleTake() - Front 80\' Selfie Correction"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 2
    invoke-static/range {v2 .. v10}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionSupport;->getParamArrayWithPadding(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;[Landroid/graphics/Rect;I)[I

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "RunFaceUndistortion_SingleTake() - Wrong Face rects or There is no face rects"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "RunFaceUndistortion_SingleTake() - Return Original Input Image"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 5
    invoke-static {p0, v1}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->RunFaceUndistortionNativeWithPadding([B[I)I

    :goto_0
    const-string v1, "RunFaceUndistortion_SingleTake() - End"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native RunTestCscRawNative(Ljava/lang/String;)I
.end method

.method public static getLibVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->GetLibVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedCameraFeatures()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->_FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_VENDOR_LIB_INFO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isSupportedDevice()Z
    .locals 8

    .line 1
    sget-object v0, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->_FLOATING_FEATURE:Lcom/samsung/android/feature/SemFloatingFeature;

    const-string v1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_CAPTURE_SELFIE_CORRECTION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->getSupportedCameraFeatures()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 3
    :goto_0
    sget-object v5, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->_FEATURE_NAMES:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_2

    .line 4
    aget-object v4, v5, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    move v2, v7

    :cond_4
    return v2
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2

    const-string v0, "FacialBasedSelfieCorrection-AAR"

    const-string v1, "setContext()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sput-object p0, Lcom/sec/android/hq/vsw/selfiecorrection/solution/SelfieCorrectionEngine;->appContext:Landroid/content/Context;

    return-void
.end method
