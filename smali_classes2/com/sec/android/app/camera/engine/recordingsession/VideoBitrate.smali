.class Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;
.super Ljava/lang/Object;
.source "VideoBitrate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;,
        Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;
    }
.end annotation


# static fields
.field private static final BITRATE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_HIGH_BITRATE_SCALE_FACTOR:I = 0x2

.field private static final HEVC_COMPRESSION_RATIO_15_SCALE:D = 0.85

.field private static final HYPERLAPSE_RECORDING_BITRATE_FHD:I = 0x1c9c380

.field private static final HYPERLAPSE_RECORDING_BITRATE_FHD_HEVC_PRIORITY_VIDEO_QUALITY:I = 0x1851960

.field private static final HYPERLAPSE_RECORDING_BITRATE_UHD:I = 0x3197500

.field private static final HYPERLAPSE_RECORDING_BITRATE_UHD_HEVC_PRIORITY_VIDEO_QUALITY:I = 0x2aea540

.field private static final Kb:I = 0x3e8

.field private static final ROUND_DOWN_BITRATE_BASE:I = 0x186a0

.field private static final SLOW_MOTION_RECORDING_BITRATE_FHD:I = 0xb71b00

.field private static final SLOW_MOTION_RECORDING_BITRATE_FHD_HEVC_PRIORITY_VIDEO_QUALITY:I = 0x9ba3c0

.field private static final SLOW_MOTION_RECORDING_BITRATE_FOR_MEDIATEK:I = 0xe4e1c0

.field private static final SUPER_SLOW_MOTION_RECORDING_BITRATE_FHD:I = 0xe4e1c0

.field private static final SUPER_SLOW_MOTION_RECORDING_BITRATE_FHD_HEVC_PRIORITY_VIDEO_QUALITY:I = 0xc1c960

.field private static final THRESHOLD_TO_ROUND_DOWN:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->BITRATE_MAP:Ljava/util/Map;

    .line 2
    invoke-static {}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->initializeVideoBitrateTable()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBitrate(Lcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile$VideoOption;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->BITRATE_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->getCalculator(I)Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;->a(Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile$VideoOption;)I

    move-result p0

    return p0
.end method

.method static getBitrateMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->BITRATE_MAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getCalculator(I)Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->is8KResolution(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    sget-object p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;->RESOLUTION_8K_CALCULATOR:Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;

    return-object p0

    .line 3
    :cond_0
    sget-object p0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;->DEFAULT_CALCULATOR:Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$Calculator;

    return-object p0
.end method

.method static getHyperMotionBitrate(Lcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile$VideoOption;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$1;->$SwitchMap$com$sec$android$app$camera$engine$recordingsession$MediaRecorderProfile$Profile$VideoOption:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x2aea540

    goto :goto_0

    :cond_0
    const p0, 0x1851960

    :goto_0
    return p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported hyper motion video option : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_2
    sget-object p1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x3197500

    goto :goto_1

    :cond_3
    const p0, 0x1c9c380

    :goto_1
    return p0
.end method

.method static getSlowMotionBitrate(Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile$VideoOption;)I
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->a4:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0xe4e1c0

    return p0

    .line 2
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$1;->$SwitchMap$com$sec$android$app$camera$engine$recordingsession$MediaRecorderProfile$Profile$VideoOption:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const p0, 0x9ba3c0

    return p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported slow motion video option : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const p0, 0xb71b00

    return p0
.end method

.method static getSuperSlowMotionBitrate(Lcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile$VideoOption;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$1;->$SwitchMap$com$sec$android$app$camera$engine$recordingsession$MediaRecorderProfile$Profile$VideoOption:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p0, 0xc1c960

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->getBitrate(Lcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile$VideoOption;)I

    move-result p0

    :goto_0
    return p0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not supported super slow motion video option : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p0, 0xe4e1c0

    goto :goto_1

    :cond_3
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->getBitrate(Lcom/sec/android/app/camera/interfaces/Resolution;Lcom/sec/android/app/camera/engine/recordingsession/MediaRecorderProfile$Profile$VideoOption;)I

    move-result p0

    :goto_1
    return p0
.end method

.method private static initializeVideoBitrateTable()V
    .locals 15

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate;->BITRATE_MAP:Ljava/util/Map;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0x5f5e100

    const v4, 0x4c4b400

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v3, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v3, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v3, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v3, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0x2dc6c00

    const v4, 0x1ab3f00

    const v6, 0x337f980

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X2160_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0x44aa200

    const v7, 0x280de80

    const v8, 0x47868c0

    invoke-direct {v2, v3, v7, v8, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X1644_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0x2625a00

    const v7, 0x16e3600

    invoke-direct {v2, v3, v7, v3, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X1644:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v7, v3, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_3840X1644_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v8, 0x3b20b80

    const v9, 0x2349340

    const v10, 0x38444c0

    invoke-direct {v2, v8, v9, v10, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v7, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v6, 0x17d7840

    const v8, 0xe4e1c0

    const v9, 0x1c9c380

    invoke-direct {v2, v6, v8, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2400X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v10, 0x1312d00

    const v11, 0xb71b00

    invoke-direct {v2, v10, v11, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2344X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v11, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2320X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v11, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2352X1088:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v11, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2336X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v11, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2288X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v11, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2224X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v10, 0x121eac0

    const v12, 0x19bfcc0

    invoke-direct {v2, v10, v11, v12, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X888:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v10, 0x1036640

    const v12, 0x989680

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X886:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X864:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X908:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v13, 0x15ef3c0

    const v14, 0xd59f80

    invoke-direct {v2, v13, v14, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1200:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v9, 0xf42400

    const v14, 0x2160ec0

    invoke-direct {v2, v4, v9, v14, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_120FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v14, 0x2aea540

    invoke-direct {v2, v14, v6, v14, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X1080_AUTO_FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v4, v9, v4, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v14, 0x895440

    invoke-direct {v2, v8, v14, v8, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v8, v14, v8, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824_60FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v7, v8, v4, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1920X824_120FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v13, v3, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1728X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1792X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1440X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0xc65d40

    const v4, 0x7a1200

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1088X1088:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1080X1080:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1072X1072:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1600X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1472X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v3, v4, v9, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_1280X720:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0x6acfc0

    invoke-direct {v2, v11, v3, v8, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_960X960:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v11, v3, v11, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_640X480:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0x2ef770

    const v4, 0x1e8480

    const v7, 0x44aa20

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_320X240:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0xbb418

    const v4, 0x7a120

    const v7, 0x118c30

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_176X144:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    const v3, 0x5dc00

    const v4, 0x493e0

    const v7, 0x927c0

    invoke-direct {v2, v3, v4, v7, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2304X1440:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_2560X1600:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;

    invoke-direct {v2, v10, v12, v6, v5}, Lcom/sec/android/app/camera/engine/recordingsession/VideoBitrate$BitrateInfo;-><init>(IIILcom/sec/android/app/camera/engine/recordingsession/v0;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static is8KResolution(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320:Lcom/sec/android/app/camera/interfaces/Resolution;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X4320_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    .line 2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X3296:Lcom/sec/android/app/camera/interfaces/Resolution;

    .line 3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/android/app/camera/interfaces/Resolution;->RESOLUTION_7680X3296_24FPS:Lcom/sec/android/app/camera/interfaces/Resolution;

    .line 4
    invoke-virtual {v0}, Lcom/sec/android/app/camera/interfaces/Resolution;->getId()I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
