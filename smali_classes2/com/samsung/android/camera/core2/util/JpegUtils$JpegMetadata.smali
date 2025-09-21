.class public Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;
.super Ljava/lang/Object;
.source "JpegUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/util/JpegUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegMetadata"
.end annotation


# instance fields
.field private altitude:D

.field private aperture:I

.field private brightness:I

.field private cityID:J

.field private debugInfoApp4:[B

.field private debugInfoApp5:[B

.field private defaultMetadata:Z

.field private deviceName:Ljava/lang/String;

.field private exposureCompensation:F

.field private exposureTime:[I

.field private flashMode:I

.field private fnum:I

.field private focalLength:I

.field private focalLengthIn35mm:I

.field private iccProfile:[B

.field private iso:I

.field private jpegHeight:I

.field private jpegThumbnailHeight:I

.field private jpegThumbnailWidth:I

.field private jpegWidth:I

.field private latitude:D

.field private longitude:D

.field private maker:Ljava/lang/String;

.field private maxAperture:I

.field private meteringMode:I

.field private orientation:I

.field private sceneCaptureType:I

.field private subTime:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private uniqueId:Ljava/lang/String;

.field private weather:I

.field private whiteBalanceMode:I

.field private zoomRatio:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->defaultMetadata:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->subTime:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maker:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->deviceName:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iccProfile:[B

    .line 9
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp4:[B

    .line 10
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp5:[B

    .line 11
    iput-object v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->latitude:D

    .line 13
    iput-wide v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->longitude:D

    .line 14
    iput-wide v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->altitude:D

    const-wide/high16 v1, -0x8000000000000000L

    .line 15
    iput-wide v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->cityID:J

    const/high16 v1, -0x80000000

    .line 16
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    .line 17
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    .line 18
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    .line 19
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->orientation:I

    .line 20
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    .line 21
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    .line 22
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    .line 23
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    .line 24
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->weather:I

    .line 25
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iso:I

    .line 26
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->fnum:I

    .line 27
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->aperture:I

    .line 28
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    .line 29
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    .line 30
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    .line 31
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 32
    iput v2, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    .line 33
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->brightness:I

    .line 34
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->subTime:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maker:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->deviceName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iccProfile:[B

    .line 42
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp4:[B

    .line 43
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp5:[B

    .line 44
    iput-object v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->latitude:D

    .line 46
    iput-wide v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->longitude:D

    .line 47
    iput-wide v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->altitude:D

    const-wide/high16 v0, -0x8000000000000000L

    .line 48
    iput-wide v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->cityID:J

    const/high16 v0, -0x80000000

    .line 49
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    .line 50
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->orientation:I

    const/4 v1, 0x0

    .line 51
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    .line 52
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    .line 53
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    .line 54
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    .line 55
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->weather:I

    .line 56
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iso:I

    .line 57
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->fnum:I

    .line 58
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->aperture:I

    .line 59
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    .line 60
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    .line 61
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    .line 62
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 63
    iput v2, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    .line 64
    iput v0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->brightness:I

    .line 65
    iput v1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    .line 66
    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    .line 67
    iput p2, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    .line 68
    iput-boolean p3, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->defaultMetadata:Z

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[IDDDJIIIIIIIIIIIIIIIIFII)V
    .locals 3

    move-object v0, p0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    .line 70
    iput-wide v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->altitude:D

    move v1, p1

    .line 71
    iput-boolean v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->defaultMetadata:Z

    move-object v1, p2

    .line 72
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    move-object v1, p3

    .line 73
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->subTime:Ljava/lang/String;

    move-object v1, p4

    .line 74
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    move-object v1, p5

    .line 75
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maker:Ljava/lang/String;

    move-object v1, p6

    .line 76
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->deviceName:Ljava/lang/String;

    move-object v1, p7

    .line 77
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iccProfile:[B

    move-object v1, p8

    .line 78
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp4:[B

    move-object v1, p9

    .line 79
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp5:[B

    move-object v1, p10

    .line 80
    iput-object v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    move-wide v1, p11

    .line 81
    iput-wide v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->latitude:D

    move-wide/from16 v1, p13

    .line 82
    iput-wide v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->longitude:D

    move-wide/from16 v1, p17

    .line 83
    iput-wide v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->cityID:J

    move/from16 v1, p19

    .line 84
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    move/from16 v1, p20

    .line 85
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    move/from16 v1, p21

    .line 86
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    move/from16 v1, p22

    .line 87
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->orientation:I

    move/from16 v1, p23

    .line 88
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    move/from16 v1, p24

    .line 89
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    move/from16 v1, p25

    .line 90
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    move/from16 v1, p26

    .line 91
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    move/from16 v1, p27

    .line 92
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->weather:I

    move/from16 v1, p28

    .line 93
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iso:I

    move/from16 v1, p29

    .line 94
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->fnum:I

    move/from16 v1, p30

    .line 95
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->aperture:I

    move/from16 v1, p31

    .line 96
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    move/from16 v1, p32

    .line 97
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    move/from16 v1, p33

    .line 98
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    move/from16 v1, p34

    .line 99
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    move/from16 v1, p35

    .line 100
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    move/from16 v1, p36

    .line 101
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->brightness:I

    move/from16 v1, p37

    .line 102
    iput v1, v0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    return-void
.end method

.method static bridge synthetic A(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->orientation:I

    return-void
.end method

.method static bridge synthetic B(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->sceneCaptureType:I

    return-void
.end method

.method static bridge synthetic C(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->subTime:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic D(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->time:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic E(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic F(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->weather:I

    return-void
.end method

.method static bridge synthetic G(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->whiteBalanceMode:I

    return-void
.end method

.method static bridge synthetic H(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->zoomRatio:I

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->altitude:D

    return-void
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->aperture:I

    return-void
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->brightness:I

    return-void
.end method

.method static bridge synthetic f(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->cityID:J

    return-void
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp4:[B

    return-void
.end method

.method static bridge synthetic h(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp5:[B

    return-void
.end method

.method static bridge synthetic i(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->deviceName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureCompensation:F

    return-void
.end method

.method static bridge synthetic k(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->exposureTime:[I

    return-void
.end method

.method static bridge synthetic l(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->flashMode:I

    return-void
.end method

.method static bridge synthetic m(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->fnum:I

    return-void
.end method

.method static bridge synthetic n(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLength:I

    return-void
.end method

.method static bridge synthetic o(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->focalLengthIn35mm:I

    return-void
.end method

.method static bridge synthetic p(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iccProfile:[B

    return-void
.end method

.method static bridge synthetic q(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->iso:I

    return-void
.end method

.method static bridge synthetic r(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegHeight:I

    return-void
.end method

.method static bridge synthetic s(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailHeight:I

    return-void
.end method

.method static bridge synthetic t(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegThumbnailWidth:I

    return-void
.end method

.method static bridge synthetic u(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->jpegWidth:I

    return-void
.end method

.method static bridge synthetic v(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->latitude:D

    return-void
.end method

.method static bridge synthetic w(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;D)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->longitude:D

    return-void
.end method

.method static bridge synthetic x(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maker:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic y(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->maxAperture:I

    return-void
.end method

.method static bridge synthetic z(Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->meteringMode:I

    return-void
.end method


# virtual methods
.method public getDebugInfoApp4()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp4:[B

    return-object p0
.end method

.method public getDebugInfoApp5()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/util/JpegUtils$JpegMetadata;->debugInfoApp5:[B

    return-object p0
.end method
