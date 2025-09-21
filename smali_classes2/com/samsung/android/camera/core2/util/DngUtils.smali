.class public Lcom/samsung/android/camera/core2/util/DngUtils;
.super Ljava/lang/Object;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;,
        Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;,
        Lcom/samsung/android/camera/core2/util/DngUtils$ThumbnailType;,
        Lcom/samsung/android/camera/core2/util/DngUtils$SetDngMetadataExecutor;
    }
.end annotation


# static fields
.field private static final a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

.field private static final b:Z

.field private static final c:Landroid/util/SparseIntArray;

.field private static final d:Landroid/util/SparseIntArray;

.field private static final e:Landroid/util/SparseIntArray;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/camera/core2/util/DngUtils$SetDngMetadataExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "DngUtils"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v0, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_PRO_RGB_CONVERSION"

    .line 2
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/FloatingFeatureUtils;->a(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/camera/core2/util/DngUtils;->b:Z

    .line 3
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/camera/core2/util/DngUtils;->c:Landroid/util/SparseIntArray;

    .line 4
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/samsung/android/camera/core2/util/DngUtils;->d:Landroid/util/SparseIntArray;

    .line 5
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v2, Lcom/samsung/android/camera/core2/util/DngUtils;->e:Landroid/util/SparseIntArray;

    .line 6
    new-instance v3, Lcom/samsung/android/camera/core2/util/DngUtils$1;

    invoke-direct {v3}, Lcom/samsung/android/camera/core2/util/DngUtils$1;-><init>()V

    sput-object v3, Lcom/samsung/android/camera/core2/util/DngUtils;->f:Ljava/util/Map;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v4, 0x5a

    const/4 v5, 0x6

    .line 8
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v5, 0xb4

    const/4 v6, 0x3

    .line 9
    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v6, 0x10e

    const/16 v7, 0x8

    .line 10
    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v0, 0x2

    .line 11
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v7, 0x7

    .line 12
    invoke-virtual {v1, v4, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v8, 0x4

    .line 13
    invoke-virtual {v1, v5, v8}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v9, 0x5

    .line 14
    invoke-virtual {v1, v6, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 15
    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 16
    invoke-virtual {v2, v4, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 17
    invoke-virtual {v2, v5, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 18
    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static A(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->b()Landroid/hardware/camera2/params/BlackLevelPattern;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 2
    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->n(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->b(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/camera2/params/BlackLevelPattern;->copyTo([II)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_BLACK_LEVEL_PATTERN is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static B(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 6

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v4, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 5
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 6
    invoke-virtual {v2, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->date_time:Ljava/lang/String;

    const-wide/16 v4, 0x1

    .line 7
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->sub_sec_time:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_TIMESTAMP is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static C(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->c()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    new-array v3, v2, [I

    .line 2
    invoke-static {p1, v3}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->q(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->c(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->d()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v2, [I

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->r(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->d(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_CALIBRATION_TRANSFORM2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_CALIBRATION_TRANSFORM1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static D(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->e()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->s(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "getColorFilterArrangement is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static E(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->f()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    new-array v3, v2, [I

    .line 2
    invoke-static {p1, v3}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->t(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->e(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->g()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v2, [I

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->u(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->f(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_COLOR_TRANSFORM2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_COLOR_TRANSFORM1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static F(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/JpegUtils;->A(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->deviceName:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method private static G(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 3

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget-object v2, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->O1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v2}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 3
    sget-boolean v1, Lcom/samsung/android/camera/core2/util/DngUtils;->b:Z

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/samsung/android/camera/core2/util/DngUtils;->v(ILcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;Ljava/lang/Integer;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->c:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    iput p0, p1, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->orientation:I

    goto :goto_1

    .line 6
    :cond_2
    iput v1, p1, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->orientation:I

    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static H(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 5

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->a()Landroid/util/Rational;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {p2, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->x(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;F)V

    .line 5
    sget-object v1, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Landroid/util/Rational;->getDenominator()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const/4 p0, 0x2

    aput-object p1, v3, p0

    const/4 p0, 0x3

    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->h(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, p0

    const-string p0, "aeCompensationStep = %d / %d, exposureCompensation = %s, metadata.exposure_compensation(%f)"

    .line 7
    invoke-static {v1, p0, v3}, Lcom/samsung/android/camera/core2/util/CLog;->j(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v2

    .line 8
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "CONTROL_AE_EXPOSURE_COMPENSATION is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static I(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 7

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-wide/32 v1, 0x3b9aca00

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 2
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 3
    invoke-static {p1, v5}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->w(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v1

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    .line 5
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->g(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v5

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {p0, v1, v2}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    aput p0, v5, v0

    .line 6
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->g(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p0

    double-to-int p1, v3

    aput p1, p0, v6

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->g(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v3

    aput v6, v3, v0

    .line 8
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->g(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->l(Ljava/lang/Object;Ljava/lang/Object;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    aput p0, p1, v6

    :goto_0
    return v6

    .line 9
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_EXPOSURE_TIME is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static J(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x64

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->y(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "LENS_APERTURE is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static K(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 2

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/16 v0, 0x64

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->z(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "LENS_FOCAL_LENGTH is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static L(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->K1:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->A(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "LENS_INFO_FOCAL_LENGTH_IN_35MM_FILM is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static M(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->h()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    new-array v3, v2, [I

    .line 2
    invoke-static {p1, v3}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->B(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->i(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->i()Landroid/hardware/camera2/params/ColorSpaceTransform;

    move-result-object p0

    if-eqz p0, :cond_0

    new-array v0, v2, [I

    .line 5
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->C(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 6
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->j(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/camera2/params/ColorSpaceTransform;->copyElements([II)V

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_FORWARD_MATRIX2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 8
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_FORWARD_MATRIX1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static N(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->j()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->o(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->k()Ljava/lang/Byte;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->p(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 p0, 0x1

    return p0

    .line 5
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_REFERENCE_ILLUMINANT2 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1

    .line 6
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_REFERENCE_ILLUMINANT1 is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private static O(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/camera/core2/util/p;

    invoke-direct {v0, p1}, Lcom/samsung/android/camera/core2/util/p;-><init>(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)V

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static P(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 5

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Rational;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 2
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    invoke-static {p1, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->m(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 3
    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 4
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->a(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v1

    mul-int/lit8 v3, v0, 0x2

    aget-object v4, p0, v0

    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    aput v4, v1, v3

    .line 5
    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->a(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[I

    move-result-object v1

    add-int/2addr v3, v2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    .line 6
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_NEUTRAL_COLOR_POINT is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static Q(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 4

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NOISE_PROFILE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Pair;

    .line 2
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->e()Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    new-array v3, v3, [D

    .line 3
    invoke-static {p2, v3}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->I(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[D)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->w(I)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {p2}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->k(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)[D

    move-result-object p2

    invoke-static {p0, p1, v2, v1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->x([Landroid/util/Pair;[BII[D)V

    const/4 p0, 0x1

    return p0

    .line 6
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "Can not get CFA"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0

    .line 7
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_NOISE_PROFILE or SENSOR_INFO_COLOR_FILTER_ARRANGEMENT is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private static R(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 1

    .line 1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCaptureResult;->a(Landroid/hardware/camera2/CaptureResult;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->F(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 p0, 0x1

    return p0

    .line 4
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_SENSITIVITY is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static S(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;->l()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->J(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string p1, "SENSOR_INFO_WHITE_LEVEL is null"

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;Landroid/location/Location;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->z(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;Landroid/location/Location;)V

    return-void
.end method

.method static bridge synthetic b()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lcom/samsung/android/camera/core2/util/DngUtils;->c:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->A(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic d(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->B(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->C(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic f(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->D(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->E(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic h(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->F(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic i(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->G(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->H(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic k(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->I(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic l(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->J(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic m(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->K(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic n(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->L(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic o(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->M(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic p(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->N(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic q(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->O(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic r(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->P(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic s(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/camera/core2/util/DngUtils;->Q(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic t(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->R(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic u(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DngUtils;->S(Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result p0

    return p0
.end method

.method private static v(ILcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->e:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    iput p0, p1, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->orientation:I

    goto :goto_0

    .line 2
    :cond_1
    sget-object p0, Lcom/samsung/android/camera/core2/util/DngUtils;->d:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    iput p0, p1, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->orientation:I

    :goto_0
    return-void
.end method

.method private static w(I)[B
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v4, :cond_2

    if-eq p0, v3, :cond_1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    aput-byte v3, v0, v2

    aput-byte v4, v0, v4

    aput-byte v4, v0, v3

    aput-byte v2, v0, v1

    goto :goto_0

    :cond_1
    aput-byte v4, v0, v2

    aput-byte v3, v0, v4

    aput-byte v2, v0, v3

    aput-byte v4, v0, v1

    goto :goto_0

    :cond_2
    aput-byte v4, v0, v2

    aput-byte v2, v0, v4

    aput-byte v3, v0, v3

    aput-byte v4, v0, v1

    goto :goto_0

    :cond_3
    aput-byte v2, v0, v2

    aput-byte v4, v0, v4

    aput-byte v4, v0, v3

    aput-byte v3, v0, v1

    :goto_0
    return-object v0
.end method

.method private static x([Landroid/util/Pair;[BII[D)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;[BII[D)V"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 1
    fill-array-data v0, :array_0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_3

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    const-wide/16 v5, 0x0

    .line 2
    aput-wide v5, p4, v3

    .line 3
    aput-wide v5, p4, v4

    const/4 v5, 0x1

    move v6, v1

    :goto_1
    if-ge v6, p2, :cond_1

    .line 4
    aget-byte v7, p1, v6

    aget-byte v8, v0, v2

    if-ne v7, v8, :cond_0

    aget-object v7, p0, v6

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aget-wide v9, p4, v3

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    .line 5
    aget-object v5, p0, v6

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, p4, v3

    .line 6
    aget-object v5, p0, v6

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    aput-wide v7, p4, v4

    move v5, v1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 7
    sget-object v3, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v4, "No valid NoiseProfile coefficients for color plane"

    invoke-static {v3, v4}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data
.end method

.method public static y(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Landroid/util/Size;)Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/camera/core2/util/DngUtils;->a:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "getDngMetadataFromCaptureResult"

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog;->b(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;

    invoke-direct {v0}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;-><init>()V

    .line 3
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->E(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    .line 4
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->D(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;I)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 5
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->v(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;[I)V

    .line 6
    sget-object p2, Lcom/samsung/android/camera/core2/util/DngUtils;->f:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/camera/core2/util/DngUtils$SetDngMetadataExecutor;

    invoke-interface {v1, p0, p1, v0}, Lcom/samsung/android/camera/core2/util/DngUtils$SetDngMetadataExecutor;->a(Landroid/hardware/camera2/TotalCaptureResult;Lcom/samsung/android/camera/core2/util/DngUtils$CamCapability;Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static synthetic z(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;Landroid/location/Location;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->G(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;D)V

    .line 2
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->H(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;D)V

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;->l(Lcom/samsung/android/camera/core2/util/DngUtils$DngMetadata;D)V

    return-void
.end method
