.class Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;
.super Ljava/lang/Object;
.source "MakerConnectionInfo.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo$MakerConnectionInfoFactory;
    }
.end annotation


# instance fields
.field private final mColorSpaceModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;",
            "Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectProcessorMode:I

.field private final mExternalDeviceTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;",
            "Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraPictureSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFastShutterOptionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$FastShutterOption;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFusionHighResolutionSupported:Z

.field private mMainPreviewCallbackSize:Landroid/util/Size;

.field private mMultiCameraEffectProcessorMode:I

.field private final mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

.field private mPictureSize:Landroid/util/Size;

.field private mPreviewSurfaceData:Lcom/samsung/android/camera/core2/container/SurfaceData;

.field private mRecorderSurface:Landroid/view/Surface;

.field private final mRecordingDrModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;",
            "Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordingExtraModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorFlipModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;",
            "Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mSsmModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;",
            "Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;",
            ">;"
        }
    .end annotation
.end field

.field private mSubPreviewCallbackSize:Landroid/util/Size;

.field private mThirdPictureSize:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVdisModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/util/Map$Entry;

    .line 2
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;->SRGB:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;

    sget-object v3, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    .line 3
    invoke-static {v2, v3}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v3, 0x0

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v2, v1, v3

    .line 5
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;->DISPLAY_P3_PHOTO:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;

    sget-object v5, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    .line 6
    invoke-static {v2, v5}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v5, 0x1

    .line 7
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v2, v1, v5

    .line 8
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;->DISPLAY_P3_VIDEO:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;

    sget-object v7, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;->d:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    .line 9
    invoke-static {v2, v7}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    const/4 v7, 0x2

    aput-object v2, v1, v7

    .line 10
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mColorSpaceModeMap:Ljava/util/Map;

    new-array v1, v7, [Ljava/util/Map$Entry;

    .line 11
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;->NONE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;

    .line 12
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;->SMART_VIEW:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;

    .line 13
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v5

    .line 14
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mExternalDeviceTypeMap:Ljava/util/Map;

    new-array v1, v7, [Ljava/util/Map$Entry;

    .line 15
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$FastShutterOption;->PERFORMANCE_PRIORITY:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$FastShutterOption;

    .line 16
    invoke-static {v2, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$FastShutterOption;->QUALITY_PRIORITY:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$FastShutterOption;

    .line 17
    invoke-static {v2, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v5

    .line 18
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mFastShutterOptionMap:Ljava/util/Map;

    new-array v1, v0, [Ljava/util/Map$Entry;

    .line 19
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->SDR:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    .line 20
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR3:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->f:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    .line 21
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;->HDR10:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;->d:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    .line 22
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v7

    .line 23
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mRecordingDrModeMap:Ljava/util/Map;

    new-array v1, v7, [Ljava/util/Map$Entry;

    .line 24
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;->NONE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;

    .line 25
    invoke-static {v2, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;->AUTO_FRAMING:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;

    .line 26
    invoke-static {v2, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v5

    .line 27
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mRecordingExtraModeMap:Ljava/util/Map;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/util/Map$Entry;

    .line 28
    sget-object v8, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_NONE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    sget-object v9, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    .line 29
    invoke-static {v8, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    aput-object v8, v2, v3

    sget-object v8, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_VERTICAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    sget-object v9, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->d:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    .line 30
    invoke-static {v8, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    aput-object v8, v2, v5

    sget-object v8, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_HORIZONTAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    sget-object v9, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    .line 31
    invoke-static {v8, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    aput-object v8, v2, v7

    sget-object v8, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;->FLIP_MODE_HORIZONTAL_VERTICAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;

    sget-object v9, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;->f:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    .line 32
    invoke-static {v8, v9}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v8

    aput-object v8, v2, v0

    .line 33
    invoke-static {v2}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mSensorFlipModeMap:Ljava/util/Map;

    new-array v1, v1, [Ljava/util/Map$Entry;

    .line 34
    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->d:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    .line 35
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    .line 36
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->SINGLE_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->g:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    .line 37
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;->MULTI_FRC:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;

    sget-object v8, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;->f:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    .line 38
    invoke-static {v2, v8}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    aput-object v2, v1, v0

    .line 39
    invoke-static {v1}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mSsmModeMap:Ljava/util/Map;

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 40
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_OFF:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    .line 41
    invoke-static {v1, v4}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_NORMAL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    .line 42
    invoke-static {v1, v6}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;->VDIS_CENTER_CROP:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;

    .line 43
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    aput-object v1, v0, v7

    .line 44
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mVdisModeMap:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mPreviewSurfaceData:Lcom/samsung/android/camera/core2/container/SurfaceData;

    .line 47
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mRecorderSurface:Landroid/view/Surface;

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mPictureSize:Landroid/util/Size;

    .line 49
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mExtraPictureSize:Landroid/util/Pair;

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mMainPreviewCallbackSize:Landroid/util/Size;

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mSubPreviewCallbackSize:Landroid/util/Size;

    .line 52
    iput v3, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mEffectProcessorMode:I

    .line 53
    iput v3, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mMultiCameraEffectProcessorMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;Lcom/sec/android/app/camera/engine/request/t0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->lambda$setVdisMode$0(Ljava/lang/Integer;)V

    return-void
.end method

.method private synthetic lambda$setVdisMode$0(Ljava/lang/Integer;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->A(Ljava/lang/Byte;)V

    return-void
.end method


# virtual methods
.method public enableAdaptivePixel(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->l(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$AdaptivePixelMode;)V

    return-void
.end method

.method public enableAutoFallBack(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    .line 2
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->w(Ljava/lang/Long;)V

    return-void
.end method

.method public enableFastShutter(ZLcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$FastShutterOption;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->f()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mFastShutterOptionMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/android/app/camera/engine/request/q0;

    invoke-direct {v2, p2}, Lcom/sec/android/app/camera/engine/request/q0;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    invoke-virtual {p1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x2

    and-long/2addr v0, p1

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->w(Ljava/lang/Long;)V

    return-void
.end method

.method public enableSuperVdis(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->z(Ljava/lang/Boolean;)V

    return-void
.end method

.method public enableVideoBeautyFace(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->B(Ljava/lang/Boolean;)V

    return-void
.end method

.method getEffectProcessorMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mEffectProcessorMode:I

    return p0
.end method

.method getExtraPictureSize()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mExtraPictureSize:Landroid/util/Pair;

    return-object p0
.end method

.method getMainPreviewCallbackSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mMainPreviewCallbackSize:Landroid/util/Size;

    return-object p0
.end method

.method getMultiCameraEffectProcessorMode()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mMultiCameraEffectProcessorMode:I

    return p0
.end method

.method getParameters()Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    return-object p0
.end method

.method getPictureSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method getPreviewSurfaceData()Lcom/samsung/android/camera/core2/container/SurfaceData;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mPreviewSurfaceData:Lcom/samsung/android/camera/core2/container/SurfaceData;

    return-object p0
.end method

.method getRecorderSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mRecorderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method getSubPreviewCallbackSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mSubPreviewCallbackSize:Landroid/util/Size;

    return-object p0
.end method

.method getThirdPictureSize()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mThirdPictureSize:Landroid/util/Pair;

    return-object p0
.end method

.method isFusionHighResolutionSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mIsFusionHighResolutionSupported:Z

    return p0
.end method

.method public setAttachMode(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->g:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->m(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$CameraClient;)V

    return-void
.end method

.method public setColorSpaceMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ColorSpaceMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mColorSpaceModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ColorSpaceMode;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/camera/engine/request/l0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/l0;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setEffectProcessorMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mEffectProcessorMode:I

    return-void
.end method

.method public setExternalDeviceType(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$ExternalDeviceType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mExternalDeviceTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$ExternalDeviceConnected;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/camera/engine/request/m0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/m0;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setExtraPictureSize(Landroid/util/Size;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mExtraPictureSize:Landroid/util/Pair;

    return-void
.end method

.method setFusionHighResolutionSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mIsFusionHighResolutionSupported:Z

    return-void
.end method

.method public setInitialZoomRatio(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->q(Ljava/lang/Float;)V

    return-void
.end method

.method public setMainPreviewCallbackSize(Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mMainPreviewCallbackSize:Landroid/util/Size;

    return-void
.end method

.method public setMultiCameraEffectProcessorMode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mMultiCameraEffectProcessorMode:I

    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mPictureSize:Landroid/util/Size;

    return-void
.end method

.method setPreviewSurfaceData(Lcom/samsung/android/camera/core2/container/SurfaceData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mPreviewSurfaceData:Lcom/samsung/android/camera/core2/container/SurfaceData;

    return-void
.end method

.method setRecorderSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mRecorderSurface:Landroid/view/Surface;

    return-void
.end method

.method public setRecordingDrMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingDrMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mRecordingDrModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$RecordingDrMode;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/camera/engine/request/n0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/n0;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setRecordingExtraMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$RecordingExtraMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mRecordingExtraModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/camera/engine/request/r0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/r0;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setSensorFlipMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorFlipMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mSensorFlipModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SensorFlipMode;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/camera/engine/request/o0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/o0;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setSensorStreamType(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;->FULL:Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SensorStreamType;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;->b:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->y(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    sget-object p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;->c:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->y(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$StreamType;)V

    :goto_0
    return-void
.end method

.method public setSubPreviewCallbackSize(Landroid/util/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mSubPreviewCallbackSize:Landroid/util/Size;

    return-void
.end method

.method public setSuperSlowMotionMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$SsmMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mSsmModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters$SsmShotMode;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/app/camera/engine/request/p0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/p0;-><init>(Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setThirdPictureSize(Landroid/util/Size;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mThirdPictureSize:Landroid/util/Pair;

    return-void
.end method

.method public setVdisMode(Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo$VdisMode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mVdisModeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/camera/engine/request/s0;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/request/s0;-><init>(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)V

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setVideoFpsRange(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->s(Ljava/lang/Integer;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->mParameters:Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/core2/container/DeviceConfiguration$Parameters;->r(Ljava/lang/Integer;)V

    return-void
.end method
