.class public Lcom/samsung/android/camera/core2/util/DebugUtils;
.super Ljava/lang/Object;
.source "DebugUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;,
        Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final c:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xef

    new-array v1, v1, [Landroid/hardware/camera2/CaptureResult$Key;

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v15, 0xc

    aput-object v2, v1, v15

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v16, 0xd

    aput-object v2, v1, v16

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v17, 0xe

    aput-object v2, v1, v17

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v18, 0xf

    aput-object v2, v1, v18

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v19, 0x10

    aput-object v2, v1, v19

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v20, 0x11

    aput-object v2, v1, v20

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v21, 0x12

    aput-object v2, v1, v21

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v22, 0x13

    aput-object v2, v1, v22

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v23, 0x14

    aput-object v2, v1, v23

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v24, 0x15

    aput-object v2, v1, v24

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x16

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x17

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x18

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x19

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1a

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1b

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1c

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1d

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1e

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x1f

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x20

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x21

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x22

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x23

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x24

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x25

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x26

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x27

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x28

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_RANGE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x29

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_INTRINSIC_CALIBRATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2a

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2b

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_ROTATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2c

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_POSE_TRANSLATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2d

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2e

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x2f

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x30

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->REQUEST_PIPELINE_DEPTH:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x31

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x32

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_BLACK_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x33

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_WHITE_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x34

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x35

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x36

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_GREEN_SPLIT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x37

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x38

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x39

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_ROLLING_SHUTTER_SKEW:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3a

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3b

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3c

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3d

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3e

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SHADING_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x3f

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x40

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x41

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_HOT_PIXEL_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x42

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x43

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_CORRECTION_MAP:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x44

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x45

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_SCENE_FLICKER:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x46

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x47

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x48

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x49

    aput-object v2, v1, v25

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->b:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->c:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->e:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->d:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x4f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x50

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->g:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x51

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->j:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x52

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->i:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x53

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->h:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x54

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->k:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x55

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->l:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x56

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->m:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x57

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->n:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x58

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->o:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x59

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->p:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->r:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->s:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->t:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->u:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x5f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->w:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x60

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->x:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x61

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->y:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x62

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->z:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x63

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->A:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x64

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->B:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x65

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->C:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x66

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x67

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->F:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x68

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->G:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x69

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->H:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->I:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->J:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->K:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->L:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->M:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x6f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->N:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x70

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x71

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x72

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x73

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x74

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->S:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x75

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->T:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x76

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->U:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x77

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->V:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x78

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->W:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x79

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->X:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Y:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Z:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->b0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->d0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x7f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->e0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x80

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->h0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x81

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->j0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x82

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->k0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x83

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->l0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x84

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->m0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x85

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->n0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x86

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->o0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x87

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->p0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x88

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->q0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x89

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->r0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->s0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->t0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->u0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->w0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x8f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->x0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x90

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->A0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x91

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->y0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x92

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->z0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x93

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->B0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x94

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->C0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x95

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->D0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x96

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x97

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->F0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x98

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->H0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x99

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->I0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9a

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->J0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9b

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->L0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9c

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->M0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9d

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->N0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9e

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0x9f

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->S0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->T0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->U0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->V0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->W0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->X0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Y0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xa9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Z0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xaa

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xab

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->b1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xac

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->c1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xad

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->d1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xae

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->e1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xaf

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->h1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->g1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->j1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->k1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->l1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->m1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->n1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->o1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->p1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xb9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->q1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xba

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->s1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbb

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->t1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbc

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->u1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbd

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->w1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbe

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->x1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xbf

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->y1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->z1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->A1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->B1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->C1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->D1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->G0:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->E1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->F1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->G1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xc9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->H1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xca

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->I1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcb

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->J1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcc

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->K1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcd

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->M1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xce

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->N1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xcf

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->P1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Q1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->R1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->S1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->T1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->U1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->V1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Y1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->Z1:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xd9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xda

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->b2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xdb

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->c2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xdc

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->d2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xdd

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->e2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xde

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->f2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xdf

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->g2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe0

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->h2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe1

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->i2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe2

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->j2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe3

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->k2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe4

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->m2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe5

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->n2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe6

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->o2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe7

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->p2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe8

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->q2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xe9

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->r2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xea

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->s2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xeb

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->t2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xec

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->u2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xed

    aput-object v2, v1, v25

    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->v2:Landroid/hardware/camera2/CaptureResult$Key;

    const/16 v25, 0xee

    aput-object v2, v1, v25

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils;->a:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x96

    new-array v2, v2, [Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v25, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v25, v2, v3

    sget-object v25, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v25, v2, v4

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v6

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v7

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v8

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v9

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v10

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v11

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v12

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v13

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v14

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v15

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v16

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v17

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v18

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v19

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v20

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v21

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_EFFECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v22

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v23

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    aput-object v4, v2, v24

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x16

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x17

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x18

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x19

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x1a

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x1b

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x1c

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x1d

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x1e

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x1f

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x20

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x21

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_FILTER_DENSITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x22

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x23

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x24

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x25

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x26

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x27

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x28

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x29

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x2a

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x2b

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_DATA:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x2c

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SENSOR_TEST_PATTERN_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x2d

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x2e

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x2f

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_HOT_PIXEL_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x30

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x31

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x32

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_GAMMA:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x33

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x34

    aput-object v4, v2, v5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_PRESET_CURVE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x35

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x36

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x37

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x38

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x39

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x3a

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->f:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x3b

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x3c

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->h:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x3d

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->i:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x3e

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->j:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x3f

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->k:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x40

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x41

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->m:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x42

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->n:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x43

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->o:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x44

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->p:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x45

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->r:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x46

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x47

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->t:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x48

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->u:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x49

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->v:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x4a

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->w:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x4b

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->x:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x4c

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->y:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x4d

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->z:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x4e

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->A:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x4f

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->B:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x50

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->C:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x51

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x52

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->F:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x53

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->H:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x54

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->I:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x55

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->J:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x56

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->K:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x57

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->L:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x58

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->M:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x59

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->N:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x5a

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->O:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x5b

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->P:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x5c

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Q:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x5d

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->R:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x5e

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->S:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x5f

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->T:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x60

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->U:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x61

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->V:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x62

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->W:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x63

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->X:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x64

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Y:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x65

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Z:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x66

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->a0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x67

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->b0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x68

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->c0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x69

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->d0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x6a

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->e0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x6b

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->f0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x6c

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->g0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x6d

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->h0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x6e

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->i0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x6f

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->j0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x70

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->k0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x71

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->l0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x72

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->m0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x73

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->n0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x74

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->o0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x75

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->p0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x76

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->q0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x77

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->r0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x78

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->s0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x79

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->t0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x7a

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->u0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x7b

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->v0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x7c

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->x0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x7d

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->y0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x7e

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->z0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x7f

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->A0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x80

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->B0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x81

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->C0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x82

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->D0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x83

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->E0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x84

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->F0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x85

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->H0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x86

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->I0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x87

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->J0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x88

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->K0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x89

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->N0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x8a

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->O0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x8b

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Q0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x8c

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->R0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x8d

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->S0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x8e

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->T0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x8f

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->U0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x90

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->V0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x91

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->W0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x92

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->X0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x93

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Y0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x94

    aput-object v4, v2, v5

    sget-object v4, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureRequest;->Z0:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v5, 0x95

    aput-object v4, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/samsung/android/camera/core2/util/DebugUtils;->b:Ljava/util/List;

    .line 3
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_SCENE_CHANGE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_DISTORTION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "ro.boot.debug_level"

    .line 10
    invoke-static {v0, v3}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;->k(I)Lcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils;->c:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/camera2/CaptureResult;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "Dump"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    const-string v1, "dumpCaptureResult"

    .line 2
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->h(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/util/DebugUtils;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    :try_start_0
    const-string v3, "dumpCaptureResult - %s : %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camera/core2/util/StringUtils;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v0, v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpCaptureResult fail - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->k:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static c()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->m:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static d()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/camera/core2/util/SemWrapper;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static e()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->l:Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/DebugUtils$DebugMode;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static f()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/camera/core2/util/SemWrapper;->e()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
